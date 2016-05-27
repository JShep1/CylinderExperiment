ControlPath = 'D:/Github/CylinderExperiment/Success/StandardFall/CylinderData001Control.txt';
Path01 = 'D:/Github/CylinderExperiment/Success/StandardFall/CylinderData01.txt';
Path1 = 'D:/Github/CylinderExperiment/Success/StandardFall/CylinderData1.txt';
Path10 = 'D:/Github/CylinderExperiment/Success/StandardFall/CylinderData10.txt';

ControlMatrix = dlmread(ControlPath);
Path01Matrix = dlmread(Path01);
Path1Matrix = dlmread(Path1);
Path10Matrix = dlmread(Path10);


%control2 = csvread(ControlPath,2);
% path01 = csvread(Path01,0);
% path1 = csvread(Path1,0);
% path10 = csvread(Path10,0);

%joint1 = control1(:,1);
%joint2 = control1(:,2);
%elbowPIDDesired = elbowsPIDDesired(:,1);



%minLength = min([size(X1,1),size(x2,1)]);
%X1 = (reshape(X1, minLength, 1));
%X2 = (reshape(X2, minLength, 1));
%plot(x2(1:(minValue)), X1(1:(minValue)), x2(1:(minValue)), X2(1:(minValue)));
plot( time, joint1,time, joint2 ,time, joint3,time,joint4,time,joint5,time,joint6,time1, joint11,time1, joint21 ,time1, joint31,time1,joint41,time1,joint51,time1,joint61);
x=linspace(0,0.5);
y=linspace(0,20);
%plot(time2, elbow2, time2, elbowd2);

%plot(time3, elbow3, time3, elbowd3);
 legend('X','Y','Z','Omega_X','Omega_Y','Omega_Z');
%legend ('ID-0.05','ID-0.01','ID-0.001','PID-0.001');
%title('Inverse Dynamics vs. PID Controller - Wrist 3');
%xlabel('Time (s)');
%ylabel('Positional Error');


