#roslaunch px4 fast_racing.launch & sleep 20;
roslaunch ego_planner single_uav_XT.launch & sleep 10;
roslaunch px4ctrl run_node_XTDrone.launch & sleep 10;
rosrun rqt_reconfigure rqt_reconfigure & sleep 10;
roslaunch ego_planner rviz.launch
