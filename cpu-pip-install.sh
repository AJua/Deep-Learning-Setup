#!/bin/bash

apt-get update
add-apt-repository ppa:aseering/wsl -y
apt-get update
apt-get -y install python-numpy python-scipy python-matplotlib python-pandas python-nose python-pip ipython ipython-notebook python-dev python-h5py
# python-sympy  
yes | pip install pyyaml

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
yes | pip install --upgrade $TF_BINARY_URL
yes | pip install git+git://github.com/fchollet/keras.git 

mkdir ~/.keras
cp ./keras.json ~/.keras/keras.json

yes | pip install jupyter

cd examples
git submodule update --init
cd Days-on-Jupyter
jupyter notebook --no-browser
