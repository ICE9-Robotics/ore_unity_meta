# ore_unity_meta

![data_link](software_data_link.png)

## Installation and Use
### ROS packages
> ##### Before you start:
> Delete any existing `source xx_ws/devel/setup.bash` lines from your `~/.bashrc` file and restart your terminal to ensure you have a clean start.

#### One-line installation
Open a terminal and run the following command:
```shell
wget -c https://raw.githubusercontent.com/ICE9-Robotics/ore_unity_meta/refs/heads/main/scripts/install_ros_packages.sh && chmod +x install_ros_packages.sh && ./install_ros_packages.sh
```
Once the script finishes, you should find the ROS packages under `~/unity_ws`, and you can launch the ros packages by:
```
roslaunch taarn_mallard_onboard mallard_onboard.launch
roslaunch taarn_bluerov_onboard bluerov_onboard.launch
```

### Ardupilot SITL
See [ARDUPILOT_SITL.md](ARDUPILOT_SITL.md)


## List of repositories

#### Mallard
- [taarn_mallard_onboard](https://github.com/ICE9-Robotics/taarn_mallard_onboard/tree/unity) unity branch
- [MallARD](https://github.com/ICE9-Robotics/MallARD/tree/ice9-dev) ice9-dev branch
- [visual_virtual_tether](https://github.com/ICE9-Robotics/visual_virtual_tether/tree/unity) unity branch

#### Bluerov
- [taarn_bluerov_onboard](https://github.com/ICE9-Robotics/taarn_bluerov_onboard/tree/unity) unity branch
- [taarn_bluerov](https://github.com/ICE9-Robotics/taarn_bluerov)

#### Ardupilot
- [taarn_ardupilot](https://github.com/ICE9-Robotics/taarn_ardupilot)
