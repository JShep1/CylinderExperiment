ControlPath = 'D:/Github/CylinderExperiment/EnergyData/XPFall/CylinderDataControl.txt';
Path01 = 'D:/Github/CylinderExperiment/EnergyData/XPFall/CylinderData01.txt';
Path5 = 'D:/Github/CylinderExperiment/EnergyData/XPFall/CylinderData5.txt';
Path1 = 'D:/Github/CylinderExperiment/EnergyData/XPFall/CylinderData1.txt';
Path10 = 'D:/Github/CylinderExperiment/EnergyData/XPFall/CylinderData10.txt';

ControlMatrix = dlmread(ControlPath);
Path01Matrix = dlmread(Path01);
Path5Matrix = dlmread(Path5);
Path1Matrix = dlmread(Path1);
Path10Matrix = dlmread(Path10);

time001 = ControlMatrix(:,1);
time01 = Path01Matrix(:,1);
time1 = Path1Matrix(:,1);
time5 = Path5Matrix(:,1);
time10 = Path10Matrix(:,1);

time001(length(time001))=[];
time01(length(time01))=[];
time1(length(time1))=[];
time5(length(time5))=[];
time10(length(time10))=[];

values001 = ControlMatrix(:,2);
values01 = Path01Matrix(:,2);
values1 = Path1Matrix(:,2);
values5 = Path5Matrix(:,2);
values10 = Path10Matrix(:,2);

values001(length(values001))=[];
values01(length(values01))=[];
values1(length(values1))=[];
values5(length(values5))=[];
values10(length(values10))=[];


plot(time001,values001,time01,values01,time1,values1,time5,values5,time10,values10);
% x=linspace(0,0.5);
% y=linspace(0,20);
%plot(time2, elbow2, time2, elbowd2);

%plot(time3, elbow3, time3, elbowd3);
legend('Control - 0.001','0.01','0.1','0.5','1.0');
%legend ('ID-0.05','ID-0.01','ID-0.001','PID-0.001');
title('Kinetic Energy of Rod in Simulation with Various Timesteps - X = 5; Omega_Y = 5');
xlabel('Time (s)');
ylabel('Kinetic Energy');


