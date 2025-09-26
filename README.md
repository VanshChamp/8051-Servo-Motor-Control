# Microcontroller Project: Servo Motor Control with 8051 MCU
## Overview
This repository contains the design and implementation of a Servo Motor Control system using the 8051 microcontroller (AT89C51). The project demonstrates a fundamental understanding of microcontroller interfacing and the use of Pulse Width Modulation (PWM) for precise angular positioning.

The core of this work involved generating PWM signals with specific pulse widths to rotate a servo motor to target positions of 0 
∘
 , 90 
∘
 , and 180 
∘
 . The project highlights the use of the 8051's built-in timers for accurate timing and control.

Project for: Nirma University, Institute of Technology, B. Tech. Semester IV
Course: Microcontroller and Interfacing (2EC701CC23)
Team: Budania Niti Mahavir (23BEC026) & Vansh Champaneri (23BEC027)

## Key Project Deliverables
### 1. Circuit Design & Simulation
The project circuit was designed and simulated in Proteus to verify the functionality before physical implementation. The circuit uses an AT89C51 microcontroller, an SG90 servo motor, and two buttons for controlling clockwise and anti-clockwise movement.

Circuit Diagram: The circuit shows the microcontroller's pin connections for the servo motor and external buttons.

Pulse Width Modulation (PWM): The PWM signal is generated using Timer 0 of the 8051, configured in 16-bit mode. The pulse width is varied to control the servo's angle.

Timer Calculation: The report includes detailed calculations for the timer values required to achieve the precise pulse widths for each target angle.

### 2. Microcontroller Code
The project includes code written in both 8051 Assembly and Arduino C to demonstrate versatility in embedded programming.

Assembly Code: Provides a low-level, register-based implementation of the PWM generation and button-based control logic.

Arduino C Code: Offers a higher-level approach to the same problem, showing an understanding of different development environments and libraries for microcontroller programming.

### 3. Applications and Analysis
The project report includes a comprehensive analysis of the system's performance, advantages, and limitations.

Applications: Discussion of real-world applications in robotics, automation, medical equipment, and smart home devices.

Advantages: Highlights the precision, efficiency, and simplicity of the PWM-based control method.

Limitations: Acknowledges the limitations, such as restricted rotation angle and power requirements for high-torque servos.

## Repository Files
MCI_Servo_Motor_Control.pdf: The complete project report detailing the abstract, circuit diagrams, working principle, code explanation, simulation results, and bill of materials.

README.md: This file, providing a project summary and key details.

Connect with Me
Feel free to connect on LinkedIn to discuss microcontrollers, embedded systems, or other projects!
