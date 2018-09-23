#!/bin/bash

sudo apt-get update
sudo apt-get install nginx

sudo sh -c "echo -n 'admin:' >> /etc/nginx/.htpasswd"
sudo sh -c "openssl passwd -apr1 >> /etc/nginx/.htpasswd"
cat /etc/nginx/.htpasswd

# sudo vi /etc/nginx/sites-enabled/default
# location / {
#        auth_basic "Restricted Content";
#        auth_basic_user_file /etc/nginx/.htpasswd;
#    }

# systemctl restart nginx
