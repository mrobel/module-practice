#!/bin/bash
sudo su
yum install httpd -y
cd /var/www/html
echo "<html><h1>Welcome to Ashok IT...!!</h1></html>" > index.html
service httpd start