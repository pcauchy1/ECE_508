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
        ECE_508_Voltage_Ripple - A  matlab script, run in matlab, to measure and plot the voltage ripple found in the simulations.
        linearization - A matlab script used to plot the frequency response of the closed loop N=2 CoBB covnerter as measured from PLECS
        solarbuckboost - A simulink file ran with simulink used to simulate the PV system with the basic buck/boost configuration and no battery.
        Base_MPPT.slx - Simulink file that contains the PV array system with a typical buck boost converter as the converter.
        CoBB_without_MPPT.slx - Simulink file that contains the PV array system with the CoBB converter integrated as the converter but no MPPT controls. 
        ECE_508_system_battery_CoBB_MPPT.slx - Simulink file that contains the PV array system with the CoBB converter integrated the converter along with MPPT algorithm

        Base_MPPT.slx, CoBB_without_MPPT.slx, and ECE_508_system_battery_CoBB_MPPT.slx all utilize the Specialized Power Systems package in simulink. 