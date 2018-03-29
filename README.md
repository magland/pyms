PYMS -- python/C++ implementation of mountainsort (in progress)

This is a MountainLab processor package

Installation instructions:

0. Install the prerequisites (see below)
1. Install MountainLab
2. Clone this repo into the ~/.mountainlab/packages directory
3. Run ./build.sh

These processors should now appear when running ml-list-processors

Prerequisites:

FFTW

python3 with the following packages:
numpy, numpydoc, pybind11, cppimport, scipy, sklearn

For example, you could install these using pip3

See Dockerfile for installation hints on Ubuntu

