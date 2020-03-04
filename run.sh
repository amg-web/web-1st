#!/bin/bash
git config --global user.email "a.gangan@gmail.com"   
git config --global user.name "anmg"

sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/ng.conf
sudo ln -s /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-enabled/default
gunicorn -D -b 0.0.0.0:8080 -c ~/web/hello.py hello:app
sudo /etc/init.d/nginx restart

sudo cat /var/log/nginx/error.log