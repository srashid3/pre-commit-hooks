#!/bin/bash

status=0

if [ -f CMakeLists.txt ]
then
    if [ -d build ]
    then
        cd build
    else
        mkdir build
        cd build
        cmake ../
    fi
    cmake --build .
    status=$?
    cd ..
else
    echo "warning: no cmake project detected in $(pwd)"
fi

exit $status
