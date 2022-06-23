#! /bin/sh

# simplescreenrecoder
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder && \
sudo apt-get update && \
sudo apt-get install -y simplescreenrecorder &&\

# terminator
sudo apt install -y terminator && \

# install(for catkin build)
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && \
sudo apt update && \
sudo apt install -y ros-melodic-desktop-full && \
sudo rosdep init && \
rosdep update && \
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc && \
source ~/.bashrc && \
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential && \
#
# catkin build
sudo apt install -y python-catkin-tools && \
mkdir -p ~/catkin_ws/src && \
cd ~/catkin_ws && \
catkin init &&\
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc