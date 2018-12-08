#!/bin/bash

sudo apt-get install -y openjdk-8-jdk

# optional
# sudo apt-get install -y visualvm

echo "JAVA_HOME=\$(dirname \$(dirname \$(readlink -f \$(which java))))" | sudo tee --append /etc/environment
source /etc/environment
