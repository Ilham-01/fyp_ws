FROM ros:humble

Run apt-get update && apt-get install -y \
    build-essential \
    python3-colcon-common-extension \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Install desktop tools
RUN apt-get update && apt-get install -y \
    ros-humble-desktop \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-rviz2 \
    && rm -rf /var/lib/apt/lists/*

Run rosdep update