#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://pravinmenghani/index.html /var/www/html/ --region ap-south-1
service httpd start
chkconfig httpd on