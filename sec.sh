#!/bin/bash
sudo apt update
sudo apt install -y docker.io
sudo apt install -y python3-pip
sudo pip3 install docker
sudo sysctl -w vm.max_map_count=262144
sudo docker pull sebp/elk:761 
sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk sebp/elk:761