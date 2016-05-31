#!/bin/bash
cd build1/
make clean all
cd ..
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinder.xml
mv CylinderData1.txt EnergyData/StandardFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderX.xml
mv CylinderData1.txt EnergyData/XFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderXY.xml
mv CylinderData1.txt EnergyData/XYFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderR.xml
mv CylinderData1.txt EnergyData/RFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderP.xml
mv CylinderData1.txt EnergyData/PFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderYaw.xml
mv CylinderData1.txt EnergyData/YawFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderXP.xml
mv CylinderData1.txt EnergyData/XPFall/
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=0.1 cylinderXYaw.xml
mv CylinderData1.txt EnergyData/XYawFall/
