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
	
	
	pub = rospy.Publisher('graphChatter',graphMsg,queue_size=10)
	rate = rospy.Rate(10)
	
	grp = graphPy.init_agv_map()
	vertexList = grp.vertices
	vertexNames = [x.name for x in grp.vertices]
	grpMsg = graphMsg()
	grpMsg.sender = "graph" 
	while not rospy.is_shutdown():
		try:
			startNode = raw_input("Enter start node: ")
			endNode = raw_input("Enter end node: ")
			if(startNode in vertexNames and endNode in vertexNames):
				shortestPath = a_star_algorithm.shortestPath(grp,startNode,endNode)
				pathString = ""
				xCoords = ""
				yCoords = ""
				for node in shortestPath:
					pathString+=node
					pathString+=','
					xCoords+=str([x.posX for x in grp.vertices if x.name==node][0])+','
					yCoords+=str([y.posY for y in grp.vertices if y.name==node][0])+','
				grpMsg.shortestPath = pathString
				grpMsg.xCoordinates = xCoords
				grpMsg.yCoordinates = yCoords
				grpMsg.enableFlag = True
				rospy.loginfo(grpMsg)
				pub.publish(grpMsg)
				rate.sleep()
			else:
				print("Invalid start and end nodes")
				startNode = ""
				endNode = ""
		except KeyboardInterrupt:
			print("Closing Graph Node")

def beginOpCallback(msg):
	global enableOperationFlag
	print("beginOpCallback")
	global enableOperationFlag
	if msg.enableOperation == True:
		print("True")
		enableOperationFlag = True

def checkEnableMessage():
	global enableOperationFlag
	rospy.init_node('graph_node',anonymous = True)
	if enableOperationFlag == False:
		print("waiting for msg")
		rospy.Subscriber('beginOperationChatter',beginOpMsg,beginOpCallback)
		
	#something
	else:
		print("run graph")
		runGraphFunction()
	rospy.spin()

if __name__ == "__main__":
	#init function
	try:
		checkEnableMessage()
	except rospy.ROSInterruptException:
		#something else
		pass

