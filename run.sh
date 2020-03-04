#!/bin/bash
git config --global user.email "a.gangan@gmail.com"   
git config --global user.name "anmg"

sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/ng.conf
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-enabled/default
gunicorn hello:app --bind='0.0.0.0:8080'
sudo /etc/init.d/nginx restart

sudo cat /var/log/nginx/error.log