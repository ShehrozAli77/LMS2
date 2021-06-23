#!/bin/bash
sudo snap install docker
mv .env-example .env
sudo docker-compose up