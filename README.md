# FPGA-Based Health Monitoring System

The FPGA-Based Health Monitoring System leverages FPGA technology to provide real-time health monitoring. Designed for applications like elderly care, fitness tracking, and rehabilitation, the system integrates advanced sensors and wireless communication to ensure high performance, low latency, and scalability.


## Hardware Components

- **Nexys A7 FPGA Board**: The central processing unit featuring programmable logic and onboard memory.
- **ADT7420 Onboard Temperature Sensor**: High-accuracy (±0.25°C) monitoring for health applications.
- **PMOD ACL (Accelerometer)**: Detects movement, including standing, motion, and falls.
- **PMOD BLE Module**: Enables wireless communication between the system and mobile devices.
- **MicroBlaze Processor**: Manages sensor data acquisition, processing, and communication.

## Setup and Usage

1. **Hardware Integration**: Connect sensors (temperature and accelerometer) to the FPGA board and integrate the BLE module.
2. **VHDL Implementation**: Develop custom IPs for sensor data processing.
3. **Software Development**: Use Vitis IDE to program the MicroBlaze processor for handling data acquisition, processing, and BLE communication.
4. **Wireless Communication**: Configure the BLE module to transmit data to mobile devices.
5. **Testing**: Validate sensor readings, fall detection, and BLE communication.


## Team Collaboration

The project was a collaborative effort, with all team members contributing to conceptualization, implementation, and testing. Equal participation ensured a comprehensive and functional health monitoring solution.

## Conclusion

The FPGA-Based Health Monitoring System demonstrates the potential of FPGA technology in healthcare applications. By integrating real-time monitoring and wireless communication, it provides a robust and adaptable platform for various health monitoring needs.
