import sys
import rospy
import serial
import time
import std_msgs
import Moteus
import asyncio
from motor_controller.msg import Motor,CAN

canIDs=sys.argv[1]

def handle_motor_command(mot_msg):
    if mot_msg.turnTo==True:
        handle_turnTo(mot_msg)
    else:
        handle_setAttributes(mot_msg)

def handle_setAttributes(mot_msg):
    can=mot_msg.canID
    posi=mot_msg.position
    velo=mot_msg.velocity
    torq=mot_msg.torque
    chain.setAttributes(can, pos=posi, velocity=velo, torque=torq)

def handle_turnTo(mot_msg):
    can=mot_msg.canID
    posi=mot_msg.position
    velo=mot_msg.velocity
    torq=mot_msg.torque
    tol=mot_msg.tolerance
    chain.turnTo(can, pos=posi, velocity=velo, torque=torq, tolerance=tol)

def motor_cotrol(IDs):
    rospy.init_node("moteus_control", anonymous=True)
    rospy.Subscriber("moteus_command", Motor, handle_motor_command)
    rospy.spin()

if __name__=="__main__":
    try:
        chain = Moteus(ids=canIDs)
        global chain
        motor_control(canIDs)
    except rospy.ROSInterruptionException:
        pass
