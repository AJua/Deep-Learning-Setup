#!/bin/bash

apt-get update
add-apt-repository ppa:aseering/wsl
apt-get update
apt-get -y install python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose
yes yes | pip install pyyaml h5py

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
yes yes | pip install --upgrade $TF_BINARY_URL
yes yes | pip install git+git://github.com/fchollet/keras.git 

ipython notebook --no-browser
