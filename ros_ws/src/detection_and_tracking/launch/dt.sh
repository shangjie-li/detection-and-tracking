#!/bin/bash

unset LD_LIBRARY_PATH

source /opt/ros/kinetic/setup.bash
source /home/seucat/shangjie/detection-and-tracking/ros_ws/devel/setup.bash

roslaunch /home/seucat/shangjie/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/dt.launch &
sleep 1

cd /home/seucat/shangjie/detection-and-tracking/ros_ws/src/detection_and_tracking/scripts/
rosparam load param.yaml
python3 detection_and_tracking.py
