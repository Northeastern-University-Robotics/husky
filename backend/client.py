#!/usr/bin/env python3

# Importing the relevant libraries
import rospy
import websockets
import asyncio
from std_msgs.msg import String


# The main function that will handle connection and communication 
# with the server
async def listen():
    url = "ws://northeastern-robotics.com:1500/ws"
    # Connect to the server
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) # 1hz


    async with websockets.connect(url) as ws:
        # Send a greeting message
        await ws.send("connect")
        await asyncio.sleep(1)

        # Stay alive forever, listening to incoming msgs
        while(True):
            msg = await ws.recv()
            rospy.loginfo(msg)
            pub.publish(msg)
            print(msg)
            

# Start the connection
asyncio.get_event_loop().run_until_complete(listen())


