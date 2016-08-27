#!/bin/bash

apt-get update
add-apt-repository ppa:aseering/wsl
apt-get update
apt-get -y install python-numpy python-scipy python-matplotlib python-pandas python-nose python-pip ipython ipython-notebook python-dev python-h5py
# python-sympy  
yes | pip install pyyaml

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
yes | pip install --upgrade $TF_BINARY_URL
yes | pip install git+git://github.com/fchollet/keras.git 

dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
apt-get update
apt-get -y install cuda

wget https://dl.dropboxusercontent.com/u/17482940/cudnn-7.0-linux-x64-v4.0-prod.solitairetheme8
tar xvzf cudnn-7.0-linux-x64-v4.0-prod.solitairetheme8
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

mkdir ~/.keras
cp ./keras.json ~/.keras/keras.json

yes | pip install jupyter
jupyter nbextension enable --py --sys-refix widgetsnbextension

cd examples
git submodule update --init
cd Days-on-Jupyter
jupyter notebook --no-browser
