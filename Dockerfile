FROM ubuntu:16.04

MAINTAINER Jeremy Magland

# Python3
RUN apt-get update && \
    apt-get install -y \
    python3 python3-pip

# Python3 packages
RUN pip3 install --upgrade numpy
RUN pip3 install --upgrade pybind11 cppimport
RUN pip3 install --upgrade scipy
RUN pip3 install --upgrade sklearn
RUN pip3 install --upgrade numpydoc

RUN apt-get update && apt-get install -y fftw3-dev

ADD . /package

# Build
WORKDIR /package
RUN ./build.sh
RUN basic/basic.mp spec > basic.spec
RUN curation/curation.mp spec > curation.spec
RUN synthesis/synthesis.mp spec > synthesis.spec
RUN validation/validation.mp spec > validation.spec
