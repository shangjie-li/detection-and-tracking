# detection-and-tracking

## 运行
 - 启动相机和激光雷达
   ```Shell
   sh ~/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/sensors.sh
   ``` 
 - 启动点云处理和dt算法（目标检测和跟踪）
   ```Shell
   sh ~/detection-and-tracking/ros_ws/src/detection_and_tracking/launch/dt.sh
   ```
 - 如果出现`source: not found`
   ```Shell
   sudo dpkg-reconfigure dash
   ```
   - 在弹出的界面中选择`no`
