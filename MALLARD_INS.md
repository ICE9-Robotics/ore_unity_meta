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
git clone -b 1.15.0 https://github.com/mavlink/mavros.git
git clone -b 1.0.9 https://github.com/mavlink/mavlink.git
```

3. Install standard ros packages
```
sudo apt install ros-melodic-apriltag-ros=3.2.1-1bionic.20221025.223206
```

4. cd workspace root dir and build
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

8. launch MallARD
```
roslaunch taarn_mallard_onboard mallard_onboard.launch
```
