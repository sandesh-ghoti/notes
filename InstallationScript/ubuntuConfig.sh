#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt install ubuntu-desktop-minimal -y
sudo wget  https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb -y
#set passwd
sudo su
passwd
#enter pass for root
passwd ubuntu
#enter pass for ubuntu
passwd <user>
#enter pass for user
usermod -aG sudo sandeshghoti194
nano /etc/sudoers
#config vs code
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/0ee08df0cf4527e40edc9aa28f4b5bd38bbff2b2/code_1.85.1-1702462158_amd64.deb
apt install ./code_1.85.1-1702462158_amd64.deb
rm code_1.85.1-1702462158_amd64.deb
cd /usr/local/sbin
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz
rm ./vscode_cli.tar.gz
nano /usr/local/sbin/vscodecommand.sh
# #!/bin/bash

# # Navigate to the specified directory
# cd /usr/local/sbin/

# # Execute the "code tunnel" command
# code tunnel
nano /etc/systemd/system/code-server.service
# [Unit]
# Description=My Background Process
# After=network.target

# [Service]
# User=<username>
# ExecStart=/usr/local/sbin/vscodecommand.sh
# WorkingDirectory=/home/<user>
# Type=simple
# Restart=always

# [Install]
# WantedBy=multi-user.target
exit
sudo chmod +x /usr/local/sbin/vscodecommand.sh
sudo systemctl daemon-reload
sudo systemctl start code-server.service
sudo systemctl enable code-server.service