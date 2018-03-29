#!/bin/bash

set -e

cd basic
g++ -O3 -Wall -shared -std=c++11 -fPIC `python3 -m pybind11 --includes` basic_cpp.cpp -o basic_cpp`python3-config --extension-suffix` -I../mlpy
cd ..
