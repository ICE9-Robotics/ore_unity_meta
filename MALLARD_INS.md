# Instructions

1. Make catkin workspace and cd into
```
mkdir -p ~/mallard_ws/src
cd ~/mallard_ws/src
```

2. Clone all repositories
```
git clone -b unity git@github.com:ICE9-Robotics/taarn_mallard_onboard.git
git clone -b ice9-dev git@github.com:ICE9-Robotics/MallARD.git
git clone -b unity git@github.com:ICE9-Robotics/visual_virtual_tether.git
```

3. Install geographic lib dataset
```
wget https://github.com/mavlink/mavros/blob/master/mavros/scripts/install_geographiclib_datasets.sh
chmod +x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh
```

4. Install standard ros packages
```
sudo apt install ros-melodic-mavros
sudo apt install ros-melodic-apriltag-ros=3.2.1-1bionic.20221025.223206
```

5. cd workspace root dir and build
```
cd ..
rosdep install --from-paths src -i -y
catkin_make
```

6. Source and config bashrc
```
source devel/setup.bash
echo "source ~/devel/setup.bash" >> ~/.bashrc
```

7. launch MallARD
```
roslaunch taarn_mallard_onboard mallard_onboard.launch
```
