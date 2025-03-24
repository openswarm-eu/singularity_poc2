n_processes := $(shell nproc)

build:
	bash -c "cd user_ros_workspace/ && catkin config --extend /opt/ros/${ROS_DISTRO} && catkin config --merge-devel && catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release && catkin build"

install-sys:
	wstool update -j ${n_processes} -t user_ros_workspace/src/

fly:
	./user_ros_workspace/src/mrs_openswarm_real/tmux/just_flying/start.sh
