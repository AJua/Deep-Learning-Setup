#!/bin/bash

wget https://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh -O ~/Anaconda3.sh
bash ~/Anaconda3.sh -b -p $HOME/Anaconda3
export PATH="$HOME/Anaconda3/bin:$PATH"
echo 'export PATH="$HOME/Anaconda3/bin:$PATH"' >> ~/.bashrc

conda install -y jzuhone zeromq=4.1.dev0
conda install -y alchayward keras=0.1.2
conda install -y conda-forge tensorflow

mkdir ~/.keras
cp ./keras.json ~/.keras/keras.json

jupyter nbextension enable --py --sys-refix widgetsnbextension

cd examples
git submodule update --init
cd Days-on-Jupyter
jupyter notebook --no-browser
