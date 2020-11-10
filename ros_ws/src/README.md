# detection-and-tracking

## 安装
 - 需要的环境包括Python3和Pip3以及ros-kinetic-desktop-full
 - 安装YOLACT依赖(Pytorch 1.0.1和TorchVision以及其他相关包)
   ```Shell
   sudo pip3 install torch==1.0.1 -f https://download.pytorch.org/whl/cu90/stable
   sudo pip3 install torchvision==0.2.2
   pip3 install cython
   pip3 install opencv-python pillow pycocotools matplotlib
   ```
 - 安装其他依赖
   ```Shell
   # scikit-learn机器学习库
   pip3 install -U scikit-learn
   # Python3与ROS兼容
   pip3 install catkin_tools
   pip3 install rospkg
   # 网络接口数据包捕获函数库
   sudo apt-get install libpcap-dev
   ```
 - 拷贝这个库并编译
   ```Shell
   cd detection-and-tracking/ros_ws
   catkin_make
   ```

## 使用说明
 - 启动相机节点
   ```Shell
   roslaunch usb_cam usb_cam-test.launch
   ```
 - 启动激光雷达节点
   ```Shell
   roslaunch velodyne_pointcloud VLP16_points.launch
   ```
 - 加载参数文件至ROS参数服务器
   ```Shell
   cd detection_and_tracking/scripts
   rosparam load param.yaml
 - 启动`detection_and_tracking`
   ```Shell
   python3 detection_and_tracking.py
   ```
 - 检测及跟踪的目标发布至话题`/targets`，类型为`BoundingBoxArray`，可以通过rviz查看
 
 

