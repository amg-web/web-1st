#!/bin/bash/
git config --global user.email "a.gangan@gmail.com"   
git config --global user.name "a.gangan@gmail.com"

sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/ng.conf
sudo /etc/init.d/nginx restart
