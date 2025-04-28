sudo apt install ros-$ROS_DISTRO-mavros

# install dependencies for mavros
wget https://raw.githubusercontent.com/mavlink/mavros/refs/heads/master/mavros/scripts/install_geographiclib_datasets.sh
chmod +x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh
rm install_geographiclib_datasets.sh

# setup ros workspace
mkdir -p ~/unity_ws/src
cd ~/unity_ws/src

# install mallard
git clone -b unity git@github.com:ICE9-Robotics/taarn_mallard_onboard.git
git clone -b ice9-dev git@github.com:ICE9-Robotics/MallARD.git
git clone -b unity git@github.com:ICE9-Robotics/visual_virtual_tether.git
git clone https://github.com/EEEManchester/apriltag_ros.git

# install bluerov
git clone git@github.com:ICE9-Robotics/taarn_bluerov.git
git clone -b unity git@github.com:ICE9-Robotics/taarn_bluerov_onboard.git

# build ros workspace
cd ..
rosdep install --from-paths src -i -y
catkin_make

# source
source devel/setup.bash
echo "source ~/unity_ws/devel/setup.bash" >> ~/.bashrc
