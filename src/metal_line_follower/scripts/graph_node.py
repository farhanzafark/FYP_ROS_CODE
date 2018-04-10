#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import graphMsg
from metal_line_follower.msg import beginOpMsg
import time
import a_star_algorithm
import graphPy


enableOperationFlag = False

def runGraphFunction():
	global enableOperationFlag
	print("Begin")
	rospy.init_node('graph_node',anonymous = True)
	
	pub = rospy.Publisher('graphChatter',graphMsg,queue_size=10)
	rate = rospy.Rate(10)
	
	grp = graphPy.init_agv_map()
	vertexList = grp.vertices
	vertexNames = [x.name for x in grp.vertices]
	grpMsg = graphMsg()
	grpMsg.sender = "graph" 
	rospy.sleep(2)
	while not rospy.is_shutdown():
		try:
			startNode = raw_input("Enter start node: ")
			endNode = raw_input("Enter end node: ")
			if(startNode in vertexNames and endNode in vertexNames):
				shortestPath = a_star_algorithm.shortestPath(grp,startNode,endNode)
				pathString = ""
				xCoords = ""
				yCoords = ""
				strListDir = ""
				for node in shortestPath:
					pathString+=node
					pathString+=','
					xCoords+=str([x.posX for x in grp.vertices if x.name==node][0])+','
					yCoords+=str([y.posY for y in grp.vertices if y.name==node][0])+','
				for node in shortestPath:
					currIndex = shortestPath.index(node)
					if currIndex!=len(shortestPath)-1 and currIndex!=0:
						prevNode = [x for x in grp.vertices if x.name==shortestPath[currIndex-1]]
						currentNode = [x for x in grp.vertices if x.name==node]
						nextNode = [x for x in grp.vertices if x.name==shortestPath[currIndex+1]]
						i1 = currentNode[0].posX-prevNode[0].posX
						j1 = currentNode[0].posY-prevNode[0].posY
						i2 = nextNode[0].posX-currentNode[0].posX
						j2 = nextNode[0].posY - currentNode[0].posY
						k = (i1*j2)-(j1*i2)
						if k == 0:
							strListDir+=",straight"
						elif k>0:
							strListDir+=",left"
						elif k<0:
							strListDir+=",right"
					elif currIndex == 0:
						strListDir+=",straight"
					elif currIndex == len(shortestPath)-1:
						strListDir+=",stop"
										
				grpMsg.shortestPath = pathString
				grpMsg.xCoordinates = xCoords
				grpMsg.yCoordinates = yCoords
				grpMsg.directions = strListDir
				#grpMsg.enableFlag = True
				rospy.loginfo(grpMsg)
				pub.publish(grpMsg)
				rate.sleep()
			else:
				print("Invalid start and end nodes")
				startNode = ""
				endNode = ""
		except KeyboardInterrupt:
			print("Closing Graph Node")

'''def beginOpCallback(msg,subscriber):
	global enableOperationFlag
	print("beginOpCallback")
	global enableOperationFlag
	if msg.enableOperation == True:
		print("True")
		enableOperationFlag = True
		subscriber.unregister()

def checkEnableMessage():
	beginOpSubscriber = None
	global enableOperationFlag
	rospy.init_node('graph_node',anonymous = True)
	if enableOperationFlag == False:
		print("waiting for msg")
		msg = rospy.wait_for_message('beginOperationChatter',beginOpMsg)
		if msg.enableOperation == True:
			print("True")
			enableOperationFlag = True
			runGraphFunction()
	#something
	else:
		print("run graph")
		runGraphFunction()
	rospy.spin()'''

if __name__ == "__main__":
	#init function
	try:
#		checkEnableMessage()
		runGraphFunction()
	except rospy.ROSInterruptException:
		#something else
		pass

