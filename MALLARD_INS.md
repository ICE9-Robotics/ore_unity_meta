# Instructions

Installation guide: [taarn_mallard_onboard/install/INSTALL.md](https://github.com/ICE9-Robotics/taarn_mallard_onboard/blob/unity/install/INSTALL.md)

When installing mavros, you may see errors complaining missing geographic lib dataset. You can install it with the following commands
```
wget https://github.com/mavlink/mavros/blob/master/mavros/scripts/install_geographiclib_datasets.sh
chmod +x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh
```


To launch MallARD
```
roslaunch taarn_mallard_onboard mallard_onboard.launch
```
