#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import ultrasonicMsg
import RPi.GPIO as GPIO
import time

sendFlag = 0

def talker():
	global sendFlag
	pub = rospy.Publisher('chatter3',ultrasonicMsg,queue_size=10)
	rospy.init_node('talker', anonymous=True)
	rate = rospy.Rate(10) # 10hz
	
	utMsg = ultrasonicMsg()
	utMsg.sender="ultrasonic"
	while not rospy.is_shutdown():
	    	if sendFlag == 0:
	    		time.sleep(5.5)
	    		for i in range (0,100):
		    		utMsg.status = "Object Detected"
		    		rospy.loginfo(utMsg)
				pub.publish(utMsg)
				rate.sleep()
				time.sleep(0.1) 
				
		sendFlag=1
		utMsg.status = "Clear"
	    	rospy.loginfo(utMsg)
		pub.publish(utMsg)
		rate.sleep()
		time.sleep 



if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:      
	pass
