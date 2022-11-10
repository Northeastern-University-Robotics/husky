import sys
import rospy
import serial
import time
import std_msgs
import Moteus
import asyncio
from motor_controller.msg import Motor,CAN

canIDs=sys.argv[1]

def motor_server(chain, IDs):
    pub=rospy.Publisher("moteus_states", CAN, queue_size=20)
    rospy.init_node("moteus", anonymous=True)
    rate = rospy.Rate(10)
    mot_pub=MotorResponse()
    while not rospy.is_shutdown():
        value=chain.getParsedResults()
        for mot in IDs:
            mot_pub.position = value[mot-1]["POSITION"]
            mot_pub.velocity = value[mot-1]["VELOCITY"]
            mot_pub.torque = value[mot-1]["TORQUE"]
            mot_pub.canID=mot
            pub.publish(mot_pub)

if __name__=="__main__":
    try:
        chn = Moteus(ids=canIDs)
        motor_server(chn,canIDs)
    except rospy.ROSInterruptionException:
        pass
