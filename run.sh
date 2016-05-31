#!/bin/bash
cd build1/
make clean all
cd ..
moby-driver -r -p=./build1/libcylinder-drop.so -mt=3 -s=$1 cylinder.xml
mv CylinderData10.txt EnergyData/$2
