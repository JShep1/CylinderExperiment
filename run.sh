#!/bin/bash
cd build/
make clean all
cd ..
moby-driver -r -p=./build/libcylinder-drop.so -mt=3 -s=$1 cylinder.xml
mv CylinderData01.txt Success/$2