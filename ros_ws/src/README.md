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
   # jsk_recognition_msgs消息类型
   sudo apt-get install ros-kinetic-jsk-recognition-msgs
   # 网络接口数据包捕获函数库
   sudo apt-get install libpcap-dev
   ```
 - 拷贝这个库并编译
   ```Shell
   cd detection-and-tracking/ros_ws
   catkin_make
   ```
 - 下载模型文件[yolact_resnet50_54_800000.pth](https://drive.google.com/file/d/1yp7ZbbDwvMiFJEq4ptVKTYTI2VeRDXl0/view?usp=sharing)，并保存至目录`detection_and_tracking/scripts/weights`

## 使用说明
 - 启动相机节点
   ```Shell
   roslaunch usb_cam usb_cam-test.launch
   ```
 - 启动激光雷达节点
   ```Shell
   roslaunch hesai_lidar p40.launch
   ```
 - 启动`detection_and_tracking`
   ```Shell
   cd detection_and_tracking/scripts
   rosparam load param.yaml
   python3 detection_and_tracking.py
   ```
 - 检测及跟踪的目标发布至话题`/targets`，类型为`BoundingBoxArray`，可以通过rviz查看
 
 

