# Install
1. Requires a PC or [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) running Ubuntu 20.04.
2. Clone taarn_ardupilot repository
```shell
cd ~
git clone --recurse-submodules -b ice9-dev https://github.com/ICE9-Robotics/taarn_ardupilot.git
```
3. Run ardupilot script
```shell
cd ~/taarn_ardupilot
Tools/environment_install/install-prereqs-ubuntu.sh -y
. ~/.profile
```

# Use
## Bluerov SITL
```shell
cd ~/taarn_ardupilot
sim_vehicle.py --console -v ArduSub -f vectored_6dof --out=127.0.0.1:14550 -I0
```

## MallARD SITL
```shell
cd ~/taarn_ardupilot
sim_vehicle.py --console -v ArduSub -f mallard --out=127.0.0.2:14550 -I1
```

Note that you may need to rebuild the SITL binary if it says "Vehicle model (mallard) not found":
```shell
sim_vehicle.py --console -v ArduSub -f mallard --out=127.0.0.2:14550 -I1 -c
```

# External Simulator
By default, Ardupilot SITL will use a simple point mass model for SITL simulations. You can tell the firmware to communicate with an external physics simulation instead. For this case, we use the JSON protocol [https://github.com/ArduPilot/ardupilot/tree/master/libraries/SITL/examples/JSON](https://github.com/ArduPilot/ardupilot/tree/master/libraries/SITL/examples/JSON)

```shell
cd ~/taarn_ardupilot
sim_vehicle.py --console -v ArduSub -f vectored_6dof --model JSON:127.0.0.1 --out=127.0.0.1:14550 -I0
```

```shell
cd ~/taarn_ardupilot
sim_vehicle.py --console -v ArduSub -f mallard --model JSON:127.0.0.2 --out=127.0.0.2:14550 -I1
```

## mavros
mavros launches when you run the `roslaunch` command for each robot. 
```
roslaunch taarn_mallard_onboard mallard_onboard.launch
roslaunch taarn_bluerov_onboard bluerov_onboard.launch
```
You should receive heartbeats at 1 Hz:
```
rostopic echo /mallard/mavros/state
rostopic echo /bluerov/mavros/state
```
You can arm the robots (or disarm by setting `value: false`):
```
rosservice call /mallard/mavros/cmd/arming "value: true"
rosservice call /bluerov/mavros/cmd/arming "value: true"
```
Set velocity command, MallARD:
```
 rostopic pub -r 10 /mallard/cmd_vel geometry_msgs/Twist "linear:
  x: 10.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0"
```
Or Bluerov
```
 rostopic pub -r 10 /bluerov/teleop/cmd_vel geometry_msgs/Twist "linear:
  x: 10.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0"
```
