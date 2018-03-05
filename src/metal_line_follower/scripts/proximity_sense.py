#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import sensorValMsg
#from metal_line_follower.msg import centralMsg
import RPi.GPIO as GPIO
import time


ProximityPinLeft = 16
ProximityPinRight = 18
ProximityPinCenter = 15 

sendFlag = 0

def setup():
	sendFlag = 0
	GPIO.setmode(GPIO.BOARD)
	#GPIO.setup(LedPin,GPIO.OUT)
	GPIO.setup(ProximityPinLeft,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)
	GPIO.setup(ProximityPinRight,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)
	GPIO.setup(ProximityPinCenter,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)
	#GPIO.output(LedPin,GPIO.LOW)
"""
def proximityRead():
	while True:
		if GPIO.input(ProximityPin) == GPIO.HIGH:
			print(GPIO.input(ProximityPin))
			GPIO.output(LedPin,GPIO.HIGH)
			time.sleep(0.25)
		else:
			print("Sensor = LOW")
			GPIO.output(LedPin,GPIO.LOW)
			time.sleep(0.25)
"""
def destroy():
	#GPIO.output(LedPin,GPIO.LOW)
	GPIO.cleanup()




def talker():
    global sendFlag
    pub = rospy.Publisher('chatter1', sensorValMsg,queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
	
    sensorMsg = sensorValMsg()
    sensorValMsg.sender="proximity"
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
       	sensorValMsg.leftSensorIn = GPIO.input(ProximityPinLeft)
	sensorValMsg.rightSensorIn  = GPIO.input(ProximityPinRight)
	sensorValMsg.centerSensorIn = GPIO.input(ProximityPinCenter)
	'''if sendFlag == 0:
		for i in range(0,800):
			print(i)
			if i>0 and i<250:
		       		sensorValMsg.leftSensorIn = 1
				sensorValMsg.rightSensorIn  = 1
				sensorValMsg.centerSensorIn = 0
		       	elif i>=250 and i<275:
		       		sensorValMsg.leftSensorIn = 0
				sensorValMsg.rightSensorIn  = 1
				sensorValMsg.centerSensorIn = 1
		       	elif i>=275 and i<600:
		       		sensorValMsg.leftSensorIn = 1
				sensorValMsg.rightSensorIn  = 1
				sensorValMsg.centerSensorIn = 0
		       	elif i>=600 and i<610:
		       		sensorValMsg.leftSensorIn = 1
				sensorValMsg.rightSensorIn  = 0
				sensorValMsg.centerSensorIn = 1
		       	else:
		       		sensorValMsg.leftSensorIn = 1
				sensorValMsg.rightSensorIn  = 1
				sensorValMsg.centerSensorIn = 0
			i = i+1
			rospy.loginfo(sensorMsg)
			pub.publish(sensorMsg)
			rate.sleep() 
			sendFlag=1'''
	## publish sensor data
		
	rospy.loginfo(sensorMsg)
	pub.publish(sensorMsg)
	rate.sleep()
"""
	if GPIO.input(ProximityPin) == GPIO.HIGH:
			print(GPIO.input(ProximityPin))
			GPIO.output(LedPin,GPIO.HIGH)
			time.sleep(0.25)
		else:
			print("Sensor = LOW")
			GPIO.output(LedPin,GPIO.LOW)
			time.sleep(0.25)
"""
	
"""
if __name__ == '__main__':
	setup()
	try:
		proximityRead()
	except KeyboardInterrupt:
		destroy()
"""

if __name__ == '__main__':
    setup()
    try:
        talker()
    except rospy.ROSInterruptException:
	destroy()        
	pass
