FROM ros:humble-ros-base

Run apt-get update && apt-get install -y \
    build-essential \
    python3-colcon-common-extension \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

Run rosdep update

