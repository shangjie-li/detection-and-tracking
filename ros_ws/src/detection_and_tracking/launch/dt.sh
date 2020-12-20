#!/bin/bash

source /opt/ros/kinetic/setup.bash
source ~/detection-and-tracking/ros_ws/devel/setup.bash

roslaunch ~/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/dt.launch &
sleep 1

cd ~/detection-and-tracking/ros_ws/src/detection_and_tracking/scripts/
rosparam load param.yaml
python3 detection_and_tracking.py
