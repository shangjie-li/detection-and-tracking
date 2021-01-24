# detection-and-tracking

## 运行
 - 启动相机、激光雷达和dt算法（目标检测和跟踪）
   ```Shell
   sh ~/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/sensors.sh
   sh ~/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/dt.sh
   ``` 
   
 - 如果出现`source: not found`
   ```Shell
   sudo dpkg-reconfigure dash
   ```
   - 在弹出的界面中选择`no`
   
 - 单独启动相机、激光雷达
   ```Shell
   roslaunch usb_cam usb_cam-test.launch
   roslaunch hesai_lidar p40.launch
   ```
   
 - 单独启动dt算法（目标检测和跟踪）
   ```Shell
   roslaunch points_process points_process.launch
   roslaunch points_ground_filter points_ground_filter.launch
   rosparam load ~/detection-and-tracking/ros_ws/src/detection_and_tracking/scripts/param.yaml
   python3 ~/detection-and-tracking/ros_ws/src/detection_and_tracking/scripts/detection_and_tracking.py
   ```

