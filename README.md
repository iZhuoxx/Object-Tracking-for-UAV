
# UAV Motion Planning and Control

Welcome to the UAV Motion Planning and Control repository! This project is based on the EGO Planner v2 and includes a PX4 controller that implements both PID and LQR controllers for executing UAV trajectories. The workspace supports simulation in two environments: PX4-Autopilot and XTDrone.

## Features

- **EGO Planner v2:** Advanced motion planning algorithm for UAVs.
- **PX4 Controller:** Supports both PID and LQR controllers for precise trajectory execution.
- **Dual Simulation Environments:** Compatible with both PX4-Autopilot and XTDrone platforms.

## Table of Contents

- [Installation](#installation)
- [Simulation](#simulation)
  - [PX4-Autopilot Simulation](#px4-autopilot-simulation)
  - [XTDrone Platform Simulation](#xtdrone-platform-simulation)
- [Usage](#usage)
- [Contact](#contact)

## Installation

### Prerequisites

Before cloning the repository, ensure you have the following dependencies installed:

- [PX4-Autopilot](https://github.com/PX4/PX4-Autopilot) or [XTDrone](https://github.com/robin-shaun/XTDrone/blob/master/README.en.md)

### Clone the Repository

Clone this repository to your local machine:

```sh
cd catkin_ws
git clone https://github.com/iZhuoxx/Object-Tracking-for-UAV.git
catkin_make
```

## Simulation

### PX4-Autopilot Simulation

To simulate the UAV in the PX4-Autopilot environment, follow these steps:

1. **Navigate to the script directory:**

    ```sh
    cd script
    ```

2. **Run the PX4-Autopilot simulation script:**

    ```sh
    sh mybot_gazebo.sh
    ```

### XTDrone Platform Simulation

To simulate the UAV in the XTDrone platform, follow these steps:

1. **Navigate to the script directory:**

    ```sh
    cd script
    ```

2. **Run the XTDrone simulation script:**

    ```sh
    sh XTbot_gazebo.sh
    ```

### Result of Simulation

![Example GIF](result/egov2demo.gif)

## Usage

Please follow these steps to operate the UAV:

1. **Start the Simulation Platform:**

    - Running the appropriate PX4-Autopilot's or XTDrone's simulation script, the UAV will initialize in the Gazebo simulation environment.

2. **Use QGroundControl:**

    - Launch QGroundControl to take off the UAV.

3. **Run the Motion Planner Script:**

    - Run the simulation script that we provided in script folder. The motion planning and control algorithms will be executed, allowing you to observe the UAV's trajectory.

4. **Configure RQT Reconfigure Interface:**

    - When the `rqt_reconfigure` interface appears, first select the `mode_bool` option to enter offboard mode.
    - Then, select the `cmd_bool` option to initiate the setpoint in Rviz.

5. **Set the Target with 2D Nav Goal:**

    - Use the "2D Nav Goal" tool in Rviz to set the target destination for the UAV.

### Viewing the Simulation

- **Gazebo:** The primary simulation environment where you can visualize the UAV's movements and interactions.
- **Rviz:** Use Rviz for a 3D visualization of the planning and control processes.

## Contact

For questions, issues, or support, please open an issue or contact [zhuohuang07@gmail.com](zhuohuang07@gmail.com).
