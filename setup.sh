#!/bin/bash

apt-get update
apt-get install git -y

wget https://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh -O ~/Anaconda3.sh
bash ~/Anaconda3.sh -b -p $HOME/Anaconda3

export PATH="$HOME/Anaconda3/bin:$PATH"
export DISPLAY=:0
echo 'export PATH="$HOME/Anaconda3/bin:$PATH"' >> ~/.bashrc
echo 'export DISPLAY=:0' >> ~/.bashrc

conda install -c jzuhone zeromq=4.1.dev0 -y
conda install -c conda-forge tensorflow -y
pip install git+git://github.com/fchollet/keras.git
mkdir ~/.keras
cp ./keras.json ~/.keras/keras.json

jupyter nbextension enable --py --sys-prefix widgetsnbextension

git clone https://github.com/yenlung/Days-on-Jupyter.git ~/Days-on-Jupyter
cd ~/Days-on-Jupyter
jupyter notebook --no-browser
