#!/bin/sh

sudo snap install android-studio --classic

echo ANDROID_HOME=/opt/android/sdk | tee --append ~/.bashrc
echo PATH=\$PATH:\$ANDROID_HOME/tools:\$ANDROID_HOME/platform-tools | tee --append ~/.bashrc

