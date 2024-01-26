#!/bin/bash

# https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/generic-linux-install.html

# Make sure to have appropriate access to execute the script

# Run 'sudo chmod +x install_corretto17.sh'

wget -O - https://apt.corretto.aws/corretto.key | sudo gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | sudo tee /etc/apt/sources.list.d/corretto.list

sudo apt-get update
 
sudo apt-get install -y java-17-amazon-corretto-jdk

java -version