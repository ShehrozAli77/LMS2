#!/bin/bash
git clone https://github.com/ShehrozAli77/LMS2.git
cd LMS2/
docker build -t node-mysql-app .
(docker-compose up)
sleep 10
echo "Launching Mysql Service"
echo "Launching App"
docker run --name library_sys -p 3000:3000 node-mysql-app
