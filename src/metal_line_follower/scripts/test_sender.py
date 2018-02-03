#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import myCustom
import RPi.GPIO as GPIO
import time

def setup():
	GPIO.setmode(GPIO.BOARD)
	GPIO.setup(LedPin,GPIO.OUT)
	GPIO.setup(ProximityPinLeft,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)
	GPIO.setup(ProximityPinRight,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)
	GPIO.output(LedPin,GPIO.LOW)
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
	GPIO.output(LedPin,GPIO.LOW)
	GPIO.cleanup()




def talker():
    pub = rospy.Publisher('chatter', myCustom,queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
	
    myCustomMsg = myCustom()
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
	#sensorValMsg.leftSensorIn = GPIO.input(ProximityPinLeft)
	#sensorValMsg.rightSensorIn  = GPIO.input(ProximityPinRight)
	a = list()
	myCustomMsg.senderType = "test_sender1"
	a = (0,1,1)
	myCustomMsg.msgData = a 	
	## publish sensor data 
	rospy.loginfo(myCustomMsg)
	pub.publish(myCustomMsg)
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
    #setup()
    try:
        talker()
    except rospy.ROSInterruptException:
	#destroy()        
	pass
