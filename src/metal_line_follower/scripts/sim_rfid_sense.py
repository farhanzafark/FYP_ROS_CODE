#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import rfidMsg
import RPi.GPIO as GPIO
import time

sendFlag = 0

def talker():
	global sendFlag
	pub = rospy.Publisher('chatter2',rfidMsg,queue_size=10)
	rospy.init_node('talker', anonymous=True)
	rate = rospy.Rate(10) # 10hz
	
	rfid = rfidMsg()
	rfid.sender="rfid"
	nodes = ("a","b","c","d","e")
	while not rospy.is_shutdown():
	    	if sendFlag == 0:
	    		
		    	for i in range(0,5):
		    		time.sleep(5)
		    		rfid.id = nodes[i]
			    	rospy.loginfo(rfid)
				pub.publish(rfid)
				rate.sleep() 
				
		sendFlag=1



if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:      
	pass
