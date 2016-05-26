#!/bin/bash
cd build/
make clean all
cd ..
moby-driver -r -p=./build/libcylinder-drop.so -mt=3 -s=$1 cylinder.xml
cp CylinderData01.txt CylinderData100.txt
rm CylinderData01.txt
mv CylinderData100.txt Success/$2
