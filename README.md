# Deep-Learning-Setup

A bash script to install packages on Bash on Windows (ubuntu 14.04)

### Prerequisite

Windows10 64-bit(since tensorflow doesn't support 32-bit) + bash on windows. You can reference  [how-to-install-and-use-the-linux-bash-shell-on-windows-10](http://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/)

### Usage

Reinstall a fresh one from powershell. (CAUTION: this will delete all data on the existing bash)

```powershell
lxrun /uninstall /full /y; lxrun /install /y
```

Lauch bash on windows and excute the following.

```sh
wget -O https://raw.githubusercontent.com/AJua/Deep-Learning-Setup/master/setup.sh | bash -s -stable
```

Now you have Anaconda3, jupyter and Keras (tensorflow cpu backend) with Jupyter installed running on bash.
If everything is ok, please restart bash to make environment variables take effect.

### Reference

[Bash on Ubuntu on WindowsでTensorFlowを使うためのメモ](http://qiita.com/toyolab/items/bccd03d4cb7795112ab6)
