FROM ubuntu:14.04

RUN apt-get update && \
    apt-get -y install apt-utils curl libssl-dev && \
    apt-get -y install build-essential make cmake git pkg-config man && \
    apt-get -y install python python-pip

RUN apt-get -y install wget && \
    wget -c https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh

RUNbash Anaconda3-5.0.0.1-Linux-x86_64.sh -b -p /anaconda

RUN mkdir /src && \
    cd /src && \
    git clone https://github.com/h3dema/object_detector_app.git && \
    cd object_detector_app && \
    git submodule init && \
    git submodule update

RUN export PATH="/anaconda/bin:$PATH" && \
    cd /src/object_detector_app && \
    conda env create -f environment.yml && \
    sudo apt-get install protobuf-compiler python-pil python-lxml
