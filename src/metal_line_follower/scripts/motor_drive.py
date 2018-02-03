#!/usr/bin/env python

import rospy
from metal_line_follower.msg import sensorValMsg
from metal_line_follower.msg import centralMsg
import RPi.GPIO as GPIO
import time


def callback(data):
	leftProximityVal = data.leftSensorIn
	rightProximityVal = data.rightSensorIn
	rospy.loginfo(rospy.get_caller_id() + 'sensor values: %s, %s', leftProximityVal,rightProximityVal)
#	if str(data.data)=="Hello":
#		rospy.loginfo("Custom Message: %s", data.data)

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('motor_drive', anonymous=True)

    rospy.Subscriber('chatter', sensorValMsg, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
