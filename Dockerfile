from ubuntu

run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update
run apt-get install -y nginx
run apt-get install -y vim
run rm /etc/nginx/sites-enabled/default
add gophercon.conf /etc/nginx/sites-enabled/
expose 80
cmd nginx
