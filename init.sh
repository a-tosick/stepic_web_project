#!/bin/sh
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -c /home/box/web/etc/gunicorn.conf hello:app
gunicorn -c /home/box/web/etc/gunicorn_ask.conf ask.wsgi:application