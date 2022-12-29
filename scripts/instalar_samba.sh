#!/bin/bash

sudo apt install samba -y

sudo mkdir /var/files/public
chmod 777 /var/files/public

#escrevendo as configurações do SAMBA
echo -e "[public]\npath = /var/files/public\nwriteable = yes\nguest ok = yes\nguest only = yes" | sudo tee -a /etc.smb.conf >/dev/null
sudo systemctl restart smbd
sudo systemctl enable smbd
sudo systemctl status smbd
