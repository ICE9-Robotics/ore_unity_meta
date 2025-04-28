# Instructions

1. Make catkin workspace and cd into
```
mkdir -p ~/bluerov_ws/src
cd ~/bluerov_ws/src
```

2. Clone all repositories
```
git clone git@github.com:ICE9-Robotics/taarn_bluerov.git
git clone -b unity git@github.com:ICE9-Robotics/taarn_bluerov_onboard.git
```

3. Install geographic lib dataset
```
wget https://raw.githubusercontent.com/mavlink/mavros/refs/heads/master/mavros/scripts/install_geographiclib_datasets.sh
chmod +x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh
```

4. Install standard ros packages
```
sudo apt install ros-melodic-mavros
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
echo "source ~/bluerov_ws/devel/setup.bash" >> ~/.bashrc
```

7. launch bluerov
```
roslaunch taarn_bluerov_onboard bluerov_onboard.launch
```
