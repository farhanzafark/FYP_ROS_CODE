#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from metal_line_follower.msg import beginOpMsg
from metal_line_follower.msg import sensorValMsg
from metal_line_follower.msg import rfidMsg
from metal_line_follower.msg import ultrasonicMsg
from metal_line_follower.msg import graphMsg
import RPi.GPIO as GPIO
import time

#bool startFlag = False 	#use this to wait for start node

GPIO.setmode(GPIO.BOARD)

###	DEFINE GPIO PINS 	###
in1=11
in2=12
in3=19
in4=21
enA=40
enB=38

GPIO.setup(enA,GPIO.OUT)	
GPIO.setup(enB,GPIO.OUT)

pEnA = GPIO.PWM(enA,50)
pEnB = GPIO.PWM(enB,50)

stopFlag = False
utFlag = False
enableFlag = True
shortestPathList = []
nextNode = ""

def setup():
	
	#set motor pins
	GPIO.setup(in1,GPIO.OUT)
	GPIO.setup(in2,GPIO.OUT)	
	GPIO.setup(in3,GPIO.OUT)	
	GPIO.setup(in4,GPIO.OUT)
	GPIO.setup(enA,GPIO.OUT)	
	GPIO.setup(enB,GPIO.OUT)
	#set PWM on enA and enB
	
	pEnA.start(0)
	pEnB.start(0)

def proximityCallback(msg):
	global stopFlag
	global enableFlag
	
	sender = msg.sender
	#leftProximityVal = msg.msgData(1)
	#rightProximityVal = msg.msgData(2)
	if enableFlag == True:
		if stopFlag == False:
			if sender == "test_sender":

				rospy.loginfo(rospy.get_caller_id() + 'sender: %s\nsensor values: %s', sender,msg.msgData)
		#	if str(data.data)=="Hello":
		#		rospy.loginfo("Custom Message: %s", data.data)
			elif sender == "proximity":
				#get data
				msgData = (msg.leftSensorIn,msg.centerSensorIn,msg.rightSensorIn)
				rospy.loginfo(rospy.get_caller_id() + 'sender: %s\nsensor values: %s', sender,msgData)
				left = msg.leftSensorIn
				center = msg.centerSensorIn
				right = msg.rightSensorIn
				lineFollow(left,center,right)


def rfidCallback(msg):
	global stopFlag
	global utFlag
	global enableFlag
	
	stopFlag = True
	sender = msg.sender
	if enableFlag == True:
		if utFlag == False:
			 
			if sender == "rfid":
				#get data
				msgData = msg.id
				rospy.loginfo(rospy.get_caller_id() + 'sender: %s\nsensor values: %s', sender,msgData)
				nodeIndex = shortestPathList.index(nextNode)
				if msgData == nextNode:
					if nodeIndex != (len(shortestPathList)-1): 
						nextNode = shortestPathList[nodeIndex+1]
						stopFlag = False
					else:
						stopFlag = True
						motorStop()
					
				'''if msgData == "a":
					print("Go to node b")
				elif msgData == "b":
					print("Go to node c")
				elif msgData == "c":
					print("Go to node d")
				elif msgData == "d":
					print("Go to node e")
				elif msgData == "e":
					print("End")
				
				motorStop()
				time.sleep(2)
				if msgData != "e":
					stopFlag = False
				#get next direction from map
				#turn'''

def ultrasonicCallback(msg):
	global stopFlag
	global utFlag
	global enableFlag
	
	sender = msg.sender
	if enableFlag == True:
		if sender == "ultrasonic":
			msgData = msg.status
			if msgData == "Clear":
				StopFlag = False
				utFlag = False
			else:
				utFlag = True
				stopFlag = True
				rospy.loginfo(rospy.get_caller_id() + 'sender: %s\nsensor values: %s', sender,msgData)
			motorStop()
		
		#get next direction from map
		#turn
		
def graphCallback(msg):
	global enableFlag
	global shortestPathList
	
	sender = msg.sender
	if sender == "graph":
		nodesListString = sender.shortestPath
		nodesListString.strip(",")
		shortestPathList = nodesListString.split(",")
		nextNode = shortestPathList
		if msg.enableFlag == True:
			enableFlag = True


def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    global enableFlag
    rospy.init_node('central_processor', anonymous=True)
    
    rospy.Subscriber('chatter1',sensorValMsg, proximityCallback)
    rospy.Subscriber('graphChatter',graphMsg, graphCallback)
    #rospy.Subscriber('rfidChatter',rfidMsg, rfidCallback)
    #rospy.Subscriber('chatter3',ultrasonicMsg, ultrasonicCallback)
    
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

def lineFollow(left,center,right):
	if center == 0 and left == 1 and right == 1:
		#both motors on
		print("Straight")
		motorForward()
	elif left == 0 and center == 1 and right == 1:
		#turn left, right motor on, left off
		print("Left")
		motorLeft()
	elif right == 0 and center ==1 and left == 1:
		#turn right, left on, right off 
		print("Right")
		motorRight()
	elif right == 0 and center == 0 and left == 0:
		print("Stop")
		motorStop()
	elif right == 0 and center == 0 and left == 0:
		print("Stop")
		motorStop()

'''def forkLeftTurn():
	#code

def forkRightTurn():
	#code

def forkStraight():
	#code
'''
def motorForward():
	#GPIO.output(enA,GPIO.HIGH)
	pEnA.ChangeDutyCycle(20)
	GPIO.output(in1,GPIO.HIGH)
	GPIO.output(in2,GPIO.LOW)
	#GPIO.output(enB,GPIO.HIGH)
	pEnB.ChangeDutyCycle(20)
	GPIO.output(in3,GPIO.HIGH)
	GPIO.output(in4,GPIO.LOW)

def motorLeft():
	#GPIO.output(enA,GPIO.HIGH)
	pEnA.ChangeDutyCycle(50)
	GPIO.output(in1,GPIO.HIGH)
	GPIO.output(in2,GPIO.LOW)
	#GPIO.output(enB,GPIO.HIGH)
	pEnB.ChangeDutyCycle(50)
	GPIO.output(in3,GPIO.LOW)
	GPIO.output(in4,GPIO.LOW)

def motorRight():
	#GPIO.output(enA,GPIO.HIGH)
	pEnA.ChangeDutyCycle(50)
	GPIO.output(in1,GPIO.LOW)
	GPIO.output(in2,GPIO.LOW)
	#GPIO.output(enB,GPIO.HIGH)
	pEnB.ChangeDutyCycle(50)
	GPIO.output(in3,GPIO.HIGH)
	GPIO.output(in4,GPIO.LOW)
def motorStop():
	#GPIO.output(enA,GPIO.HIGH)
	pEnA.ChangeDutyCycle(0)
	GPIO.output(in1,GPIO.LOW)
	GPIO.output(in2,GPIO.LOW)
	#GPIO.output(enB,GPIO.HIGH)
	pEnB.ChangeDutyCycle(0)
	GPIO.output(in3,GPIO.LOW)
	GPIO.output(in4,GPIO.LOW)

if __name__ == '__main__':
	setup()
	listener()



