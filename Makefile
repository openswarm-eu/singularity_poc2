n_processes := $(shell nproc)

build:
	bash -c "cd user_ros_workspace/ && catkin config --extend /opt/ros/${ROS_DISTRO} && catkin config --merge-devel && catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release && catkin build"

install-sys:
	wstool update -j ${n_processes} -t user_ros_workspace/src/

fly:
	./user_ros_workspace/src/mrs_openswarm_real/tmux/just_flying/start.sh

fly_ferox:
	./user_ros_workspace/src/mrs_openswarm_real/tmux/just_flying/start_ferox.sh

fly_one:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/one_drone_3dlidar/start.sh

fly_one2:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/one_drone_3dlidar_v2/start.sh

fly_three:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/three_drones_swarm/start.sh

fly_three2:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/three_drones_swarm_v2/start.sh

fly_six:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/six_drones_swarm/start.sh

fly_nine:
	./user_ros_workspace/src/mrs_openswarm_simulation/tmux/nine_drones_swarm/start.sh
	
cp:
	./user_ros_workspace/src/mrs_openswarm_real/tmux/just_flying/start_cp.sh

cp_sim:
	./user_ros_workspace/src/mrs_openswarm_hdi/tmux/just_flying/start_cp_sim.sh