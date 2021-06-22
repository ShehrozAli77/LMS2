#!/bin/bash
git clone https://github.com/ShehrozAli77/LMS2.git
cd LMS2/
docker build -t node-mysql-app .
echo "Launching Mysql Service"
docker-compose up -d
sleep 15
echo "Launching App"
docker run --name library_sys -p 3000:3000 node-mysql-app
