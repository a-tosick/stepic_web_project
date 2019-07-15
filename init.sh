#!/bin/sh
sudo rm /etc/nginx/sites-enabled/default
#sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
#sudo service nginx restart
#gunicorn -c /home/box/web/etc/gunicorn.conf hello:app
gunicorn -c /home/box/web/etc/gunicorn_ask.conf ask.wsgi:application
#gunicorn --bind 0.0.0.0:8000 --access-logfile acc.log --error-logfile err.log ask.wsgi:application