#!/bin/bash

apt-get update
add-apt-repository ppa:aseering/wsl
apt-get update
apt-get install python-pip ipython ipython-notebook
ipython notebook --no-browser
