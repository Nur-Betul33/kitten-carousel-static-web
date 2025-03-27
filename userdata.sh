#/bin/bash

dnf update -y
dnf install httpd -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html

FOLDER="https://raw.githubusercontent.com/Nur-Betul33/101-kittens-carousel-static-website-ec2/refs/heads/main/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/ondia.png
