# Deep-Learning-Setup

A bash script to install software on Bash on Windows (unbuntu)

### Prerequisite

Windows10 + bash on windows


### Usage

Since git is not install by on Bash on Windows, you need to install it mannually.
After you installed git, clone the script and run cpu-pip-install.sh

```sh
sudo apt-get install -y git
git clone https://github.com/AJua/Deep-Learning-Setup.git
cd Deep-Learning-Setup
chmod 755 cpu-pip-install.sh
sudo ./cpu-pip-install.sh
```

Now you have python2, jupyter and Keras (tensorflow cpu backend) installed
Open your favorite browser and navigate to localhost:8888,
you should able to execute the python scripts from "Deep Learning > 用神經網路做手寫辨識.ipynb" without errors.
