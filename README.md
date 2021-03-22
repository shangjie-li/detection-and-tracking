# detection-and-tracking

## 运行
 - 启动相机、激光雷达和检测跟踪算法
   ```Shell
   sh ros_ws/src/detection_and_tracking/launch/sensors.sh
   sh ros_ws/src/detection_and_tracking/launch/dt.sh
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
   
 - 单独启动检测跟踪算法
   ```Shell
   roslaunch points_process points_process.launch
   cd ros_ws/src/detection_and_tracking/conf
   rosparam load param.yaml
   cd ros_ws/src/detection_and_tracking/scripts
   python3 detection_and_tracking.py
   ```

