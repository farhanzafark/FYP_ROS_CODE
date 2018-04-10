#!/usr/bin/env python


import serial
import rospy
from std_msgs.msg import String
from metal_line_follower.msg import rfidMsg
#from metal_line_follower.msg import centralMsg
#import RPi.GPIO as GPIO
import time
	
def talker():
	ser = serial.Serial('/dev/ttyACM0',9600)
	pub = rospy.Publisher('rfidChatter', rfidMsg,queue_size=10)
	rospy.init_node('talker', anonymous=True)
	rate = rospy.Rate(10) # 10hz
	
	rfidMsgData = rfidMsg()
	rfidMsgData.sender="rfid"
	currNodeName = ""
	while not rospy.is_shutdown():
		read_serial = ser.readline()
		#s[0]=str(ser.readline())
		#print(s[0])
		print(read_serial)
		if "Node" in read_serial:
			listNodeName = read_serial.split(":")
			currNodeName = listNodeName[1].strip(" ")
			print(currNodeName.lower())
		#hello_str = "hello world %s" % rospy.get_time()
		## publish sensor data
		rfidMsgData.nodeId = currNodeName.lower()
		rospy.loginfo(rfidMsgData)
		pub.publish(rfidMsgData)
		rate.sleep()
	
	
if __name__ == '__main__':
    #setup()
    try:
        talker()
    except rospy.ROSInterruptException:
	#destroy()        
	pass
