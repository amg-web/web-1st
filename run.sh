#!/bin/sh

sudo ln -s /home/box/djiga/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
