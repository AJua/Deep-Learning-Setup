#!/bin/bash

wget https://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh -O ~/Anaconda3.sh
bash ~/Anaconda3.sh -b -p $HOME/Anaconda3
export PATH="$HOME/Anaconda3/bin:$PATH"
echo 'export PATH="$HOME/Anaconda3/bin:$PATH"' >> ~/.bashrc

conda install -c jzuhone zeromq=4.1.dev0 -y
conda install -c alchayward keras=0.1.2 -y
conda install -y conda-forge tensorflow -y

mkdir ~/.keras
cp ./keras.json ~/.keras/keras.json

jupyter nbextension enable --py --sys-prefix widgetsnbextension

cd examples
git submodule update --init
cd Days-on-Jupyter
jupyter notebook --no-browser
