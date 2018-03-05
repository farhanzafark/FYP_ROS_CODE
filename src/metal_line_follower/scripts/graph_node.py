#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import graphMsg
#from metal_line_follower.msg import centralMsg
import time
import a_star_algorithm
import graphPy

def runGraphFunction():
	pub = rospy.Publisher('graphChatter',graphMsg,queue_size=10)
	rospy.init_node('talker',anonymous = True)
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
				for node in shortestPath:
					pathString+=node
					pathString+=','
				grpMsg.shortestPath = pathString
				rospy.loginfo(grpMsg)
				pub.publish(grpMsg)
				rate.sleep()
			else:
				print("Invalid start and end nodes")
				startNode = ""
				endNode = ""
		except KeyboardInterrupt:
			print("Closing Graph Node")



if __name__ == "__main__":
	#init function
	try:
		#something
		runGraphFunction()
	except rospy.ROSInterruptException:
		#something else
		pass

