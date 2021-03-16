import rospy
import sys
import time
import threading
import argparse
import numpy as np
import math
import enum
import time
import os
from control_node import HiwinRobotInterface
DEBUG = True  # Set True to show debug log, False to hide it.
ItemNo = 0
positon = [0.0,36.8,11.35,180,0,0]
Goal = [0.0,36.8,11.35,180,0,0]
Current_pos = [0.0,0.0,0.0,0.0,0.0,0.0]


class point():
    def __init__(self,x,y,z,pitch,roll,yaw):
        self.x = x
        self.y = y
        self.z = z
        self.pitch = pitch
        self.roll = roll
        self.yaw = yaw
pos = point(0,36.8,9.35,180,0,90)
pos.x = -43.4
pos.y = 34.3
pos.z = -16
pos.pitch = -180
pos.roll = 0
pos.yaw = 0

five_pos = point(0,36.8,9.35,180,0,90)
five_pos.x = -27.4
five_pos.y = 41.0
five_pos.z = -16
five_pos.pitch = -180
five_pos.roll = 0
five_pos.yaw = 0

class tool_pla():         #
    def __init__(self,tool_x1,tool_y1,tool_x2,tool_y2):
        self.tool_x1 = tool_x1    
        self.tool_y1 = tool_y1
        self.tool_x2 = tool_x2
        self.tool_y2 = tool_y2
tool_place = tool_pla( 13.6 , 52.8 , 6.57 , 52.92 )

class tak_pic_pla():
    def __init__(self,up_x,up_y,width_x,width_y):
        self.up_x = up_x    
        self.up_y = up_y
        self.width_x = width_x
        self.width_y = width_y
pic = tak_pic_pla( -18.4 , 52.8 , 25.6 , 28.8 )

class star_cfg():              
    def __init__(self,yolo_z,down_z,above_z,pic_z,testdown_z,acrylic_z,tool_z):
        correction = 0                #  coordinate hight
        self.yolo_z = yolo_z + correction    #  need to change to avoid sucker hit the box 
        self.down_z = down_z + correction    #  receive what realsense got z
        self.above_z = above_z + correction  #  puzzle up a little make sure not hit puzzle 
        self.pic_z = pic_z  + correction     #  take pic hight
        self.testdown_z = testdown_z + correction    #arm to floor hight
        self.acrylic_z = acrylic_z + correction
        self.tool_z = tool_z + correction
#star_config = star_cfg( -12.1 , -19.2 , -16.0 , 4.5 , -19.3 , -18.5 , -14.0) 
star_config = star_cfg( 3.5 , -3.6 , -0.4 , 20.1 , -3.7 , -3.6 , 1.6)   # while tool


##-----------switch define------------##
class switch(object):
    def __init__(self, value):
        self.value = value
        self.fall = False

    def __iter__(self):
        """Return the match method once, then stop"""
        yield self.match
        raise StopIteration

    def match(self, *args):
        """Indicate whether or not to enter a case suite"""
        if self.fall or not args:
            return True
        elif self.value in args: # changed for v1.5, see below
            self.fall = True
            return True
        else:
            return False

def test_task():
    global ItemNo
    Arm_state = robot_ctr.get_robot_motion_state()
    if Arm_state == 1:
        if ItemNo==0:
            positon =  [18.7, 36.7, 4.6, -180, 0, 90]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 1
            print("task:0")
        elif ItemNo==1:
            positon =  [18.7, 41.7, 4.6, -180, 0, 90]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 2
            print("task:1")
        elif ItemNo==2:
            positon =  [-18.7, 41.7, 4.6, -180, 0, 90]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 3
            print("task:2")
        elif ItemNo==3:
            positon =  [18.7, 36.7, 4.6, -180, 0, 90]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 4
            print("task:3")
        elif ItemNo==4:
            robot_ctr.Set_operation_mode(0)
            robot_ctr.Go_home()
            ItemNo = 4
            print("task:4")

change_to_right = 0
def test_acrylic_1():   #Lu_pin_project_test
    global ItemNo
    global change_to_right
    Arm_state = robot_ctr.get_robot_motion_state()
    # print("state:",Arm_state)
    if Arm_state == 1:
        # move to acrylic up center 
        if ItemNo==0: 
            pos.x =  -43.4
            pos.y =  34.3
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 1
            print("task:0")

        #down to suck acrylic
        elif ItemNo==1: 
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 2
            print("task:1")

        # here should insert turn on the suck power !!!!!
        #suck the acrylic arm up a little make sure not crush tool
        elif ItemNo==2:  
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 3
            print("task:2")
#----------------------left side of the puzzle to press---------------------
        # move to left center puzzle
        elif ItemNo==3:
            pos.x = -23.5
            pos.y =  34.1 
            pos.z = star_config.yolo_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 4
            print("task:3")

        # here should insert turn off the suck power !!!!!
        
        # move to acrylic upper left 
        elif ItemNo==4:
            pos.x = pos.x  - 4.5
            pos.y = pos.y  + 7
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 5
            print("task:4")

        # down to press acrylic upper left
        elif ItemNo==5:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 6
            print("task:5")
        
        # arm move up
        elif ItemNo==6:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 7
            print("task:6")

        # move to acrylic upper right
        elif ItemNo==7:
            pos.x = pos.x + 9
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 8
            print("task:7")

        # down to press acrylic upper right
        elif ItemNo==8:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 9
            print("task:8")

        # arm move up
        elif ItemNo==9:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 10
            print("task:9")
        
        # move to acrylic bottom right
        elif ItemNo==10:
            pos.x = pos.x
            pos.y = pos.y - 14
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 11
            print("task:10")

        # down to press acrylic bottom right
        elif ItemNo==11:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 12
            print("task:11")

        # arm move up
        elif ItemNo==12:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 13
            print("task:12")

        # move to acrylic bottom left
        elif ItemNo==13:
            pos.x = pos.x - 9
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 14
            print("task:13")

        # down to press acrylic bottom left
        elif ItemNo==14:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 15
            print("task:14")

        # arm move up
        elif ItemNo==15:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 16
            print("task:15")

        # move to acrylic center
        elif ItemNo==16:
            pos.x = pos.x + 4.5
            pos.y = pos.y + 7
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 17
            print("task:16")

        # down to suck acrylic
        elif ItemNo==17:
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.acrylic_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 18
            print("task:17")

        # here should insert turn on the suck power !!!!!
        #suck the acrylic arm up a little make sure not crush tool
        elif ItemNo==18:  
            pos.x = pos.x
            pos.y = pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 19
            if change_to_right == 1:
                ItemNo = 20
            print("task:18")
#----------------------change to right side of the puzzle to press---------------------
        # move to right center puzzle
        elif ItemNo==19:
            print("change_to_right = ",change_to_right)
            pos.x =  -10.3
            pos.y =  34.3
            pos.z = star_config.yolo_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            # back to press 
            if change_to_right == 0:
                change_to_right = 1
                print("change_to_right = ",change_to_right)
                ItemNo = 4
            elif change_to_right == 1:
                ItemNo = 20
            print("task:19")

        # here should insert turn off the suck power !!!!!
#----------------------finish Lu ping project---------------------
        elif ItemNo==20:
            change_to_right = 0
            robot_ctr.Set_operation_mode(0)
            robot_ctr.Go_home()
            ItemNo = 20
            print("task:20 GO home")

def test_five_point():   #test_five_point_project_test
    global ItemNo
    Arm_state = robot_ctr.get_robot_motion_state()
    if Arm_state == 1:
        # POINT 1 UP 
        if ItemNo==0: 
            pos.x =  five_pos.x
            pos.y =  five_pos.y
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            corr_input = 0
            ItemNo = 1
            print("task:0")

        #POINT 1  DOWN
        elif ItemNo==1: 
            pos.x = five_pos.x
            pos.y = five_pos.y
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 2
            print("task:1")

        #POINT 1  UP
        elif ItemNo==2: 
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1: 
                pos.x = five_pos.x
                pos.y = five_pos.y
                pos.z = star_config.above_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsPTPCmd(positon)
                ItemNo = 3
                break
             if corr_input == 2:
                ItemNo = 100
                break
            print("task:2")
        # tool 2 UP
        elif ItemNo==3:
            pos.x = tool_place.tool_x2
            pos.y = tool_place.tool_y2 
            pos.z = star_config.tool_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 4
            print("task:3")

        
        # tool 2  DOWN
        elif ItemNo==4:
            pos.x = tool_place.tool_x2
            pos.y = tool_place.tool_y2
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 5
            print("task:4")

        #tool 2 UP
        elif ItemNo==5:
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1:
                pos.x = tool_place.tool_x2
                pos.y = tool_place.tool_y2
                pos.z = star_config.above_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsLine_PosCmd(positon)
                ItemNo = 6
            if corr_input == 2:
                ItemNo = 101
                break
            print("task:5")
        
        # tool 1 UP
        elif ItemNo==6:
            pos.x = tool_place.tool_x1
            pos.y = tool_place.tool_y1
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 7
            print("task:6")

        # tool 1  DOWN
        elif ItemNo==7:
            pos.x = tool_place.tool_x1
            pos.y = tool_place.tool_y1
            pos.z = star_config.down_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 8
            print("task:7")

        # tool 1 UP
        elif ItemNo==8:
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1:
                pos.x = tool_place.tool_x1
                pos.y = tool_place.tool_y1
                pos.z = star_config.tool_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsLine_PosCmd(positon)
                ItemNo = 9
            if corr_input == 2:
                ItemNo = 101
                break
            print("task:8")

        # POINT 2  UP
        elif ItemNo==9:
            pos.x = -5.9
            pos.y = 41.0
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 10
            print("task:9")
        
        # POINT 2  DOWN
        elif ItemNo==10:
            pos.x = -5.9
            pos.y = 41.0
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 11
            print("task:10")

        # POINT 2  UP
        elif ItemNo==11:
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1:
                pos.x = -5.9
                pos.y = 41.0
                pos.z = star_config.above_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsLine_PosCmd(positon)
                ItemNo = 12
            if corr_input == 2:
                ItemNo = 100
                break
            print("task:11")

        # POINT 3  UP
        elif ItemNo==12:
            pos.x = -5.9
            pos.y = 27.3
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 13
            print("task:12")

        # POINT 3  DOWN
        elif ItemNo==13:
            pos.x = -5.9
            pos.y = 27.3
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 14
            print("task:13")

        # POINT 3  UP
        elif ItemNo==14:
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1:
                pos.x = -5.9
                pos.y = 27.3
                pos.z = star_config.above_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsLine_PosCmd(positon)
                ItemNo = 15
            if corr_input == 2:
                ItemNo = 100
                break
            print("task:14")

        # POINT 4 UP
        elif ItemNo==15:
            pos.x = -27.4
            pos.y = 27.3
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 16
            print("task:15")

        # POINT 4  DOWN
        elif ItemNo==16:
            pos.x = -27.4
            pos.y = 27.3
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsLine_PosCmd(positon)
            ItemNo = 17
            print("task:16")

        # POINT 4 UP
        elif ItemNo==17:
            corr_input = int(input('繼續校正請按1 返回原始校正點請按2 : '))
            if corr_input == 1:
                pos.x = -27.4
                pos.y = 27.3
                pos.z = star_config.above_z
                positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
                robot_ctr.Step_AbsLine_PosCmd(positon)
                ItemNo = 18
            if corr_input == 2:
                ItemNo = 100
                break
            print("task:17")

        #POINT 5 UP
        elif ItemNo==18:  
            pos.x = -20.3
            pos.y = 34.1
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 19
            print("task:18")
        # POINT 5  DOWN
        elif ItemNo==19:
            pos.x = -20.3
            pos.y = 34.1
            pos.z = star_config.testdown_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 20
            print("task:19")
        #tak pic area up
        elif ItemNo==20:
            #input()
            pos.x = pic.up_x
            pos.y = pic.up_y
            pos.z = star_config.pic_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            # take pic
            ItemNo = 21
            print("task:20")
        #tak pic area width
        elif ItemNo==21:
            #input()
            pos.x = pic.width_x
            pos.y = pic.width_y
            pos.z = star_config.pic_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            # take pic
            ItemNo = 22
            print("task:21")
        # test finish
        # here should insert turn off the suck power !!!!!
       
#----------------------finish test_five_point_project_test---------------------
        elif ItemNo==22:
            change_to_right = 0
            robot_ctr.Set_operation_mode(0)
            robot_ctr.Go_home()
            ItemNo = 22
            print("task:22 GO home")
        #Back original corr
        elif ItemNo==100:
            pos.x =  0
            pos.y =  36.8
            pos.z = star_config.above_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 0
            print("task:0")
        # Back original corr in tool hight
        elif ItemNo==101:
            pos.x =  0
            pos.y =  36.8
            pos.z = star_config.tool_z
            positon =  [pos.x, pos.y, pos.z, pos.pitch, pos.roll, pos.yaw]
            robot_ctr.Step_AbsPTPCmd(positon)
            ItemNo = 0
            print("task:0")



if __name__ == '__main__':
    arg_parser = argparse.ArgumentParser("Driver Node")
    arg_parser.add_argument("--robot_ip", help="IP addr of the robot",
                            type=str)
    arg_parser.add_argument("--robot_name", help="Name of the robot", type=str)
    arg_parser.add_argument("--control_mode", help="Default is 1, set it to 0 if you do not want to control the robot, but only to monitor its state.",
                            type=bool, default=1, required=False)
    arg_parser.add_argument("--log_level", help="Logging level: INFO, DEBUG",
                            type=str, default="INFO", required=False)
    arg_parser.add_argument("__name")
    arg_parser.add_argument("__log")
    args = arg_parser.parse_args()

    # Extract the necessary arguments
    robot_ip = args.robot_ip
    robot_name = args.robot_name
    control_mode = int(args.control_mode)
    if args.log_level == "DEBUG":
        log_level = rospy.DEBUG
    elif args.log_level == "ERROR":
        log_level = rospy.ERROR
    else:
        log_level = rospy.INFO
    
    # Start the ROS node
    rospy.init_node('hiwin_robot_sdk_'+robot_name,
                    log_level=log_level,
                    disable_signals=True)
    if rospy.get_param("use_sim_time", False):
        rospy.logwarn("use_sim_time is set!!!")

    robot_ctr = HiwinRobotInterface(robot_ip=robot_ip, connection_level=control_mode,name=robot_name)
    robot_ctr.connect()
    try:
        if robot_ctr.is_connected():
            robot_ctr.Set_operation_mode(0)
            # robot_ctr.Set_base_number(5)

            # set to soloman mode (5) and base coordinate (0)
            robot_ctr.Set_base_number(0)
            robot_ctr.Set_tool_number(5)

            robot_ctr.Set_operation_mode(1)
            robot_ctr.Set_override_ratio(10)
            robot_ctr.Set_acc_dec_ratio(100)
        # put the function of program step by step
            while(1):
                #test_acrylic_1()
                test_five_point()
        
            #pose = robot_ctr.Get_current_position()
            #print("pose:",pose)
       
        rospy.spin()
    except KeyboardInterrupt:
        robot_ctr.Set_motor_state(0)
        robot_ctr.close()
        pass

