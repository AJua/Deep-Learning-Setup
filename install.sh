#!/bin/bash

apt-get update
add-apt-repository ppa:aseering/wsl
apt-get update
apt-get install python-pip ipython ipython-notebook python-dev
ipython notebook --no-browser

apt-get install python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose

pip install pyyaml h5py

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
pip install --upgrade $TF_BINARY_URL
pip install git+git://github.com/fchollet/keras.git 
