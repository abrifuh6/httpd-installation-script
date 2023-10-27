#!/bin/bash
# Use for your userdata (script from top to bottom)

# Update the package repository information and install Apache (httpd).
yum update -y
yum install -y httpd

# Start the Apache web server and enable it to start on boot.
systemctl start httpd
systemctl enable httpd

# Create a simple "Hello World" HTML page with the hostname and write it to the default web directory.
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

