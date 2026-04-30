### ECE 508 Project

Project repo for ECE 508

Files:
    README: A file with a description of each file and how to run them
    PLECS:
        N1CoBB - A CoBB converter model with Duty cycle control with zero flying capacitors
        N2CoBB - A CoBB converter model with a fast current control loop, active capacitor balancing, and a slow voltage control loop
        N4CoBB - A CoBB converter model with Duty cycle control.
        These files can be run via the PLECS modeling software. Each should be configured to run  a brief test of some part of their functionality.
    MATLAB/Simulink:
        ECE_508_Dutycycle_calcs - A matlab script used to calculate parameters of the CoBB converter based on the number of flying capacitors.
        ECE_508_System_battery_CoBB - A  simulation file, to be run in simulink. Measures system  behavior with the PV pannel and a CoBB converter
        ECE_508_System_with_battery - A simulation file, to be run in simulink. Measures system behavior with the PV pannel and the traditional boost ->  buck setup
        ECE_508_Voltage_Ripple - A  matlab script, run in matlab, to measure and plot the voltage ripple found in the simulations.
        linearization - A matlab script used to plot the frequency response of the closed loop N=2 CoBB covnerter as measured from PLECS
        solarbuckboost - A simulink file ran with simulink used to simulate the PV system with the basic buck/boost configuration and no battery.