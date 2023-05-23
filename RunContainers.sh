#!/bin/bash

#cria pasta banco caso nao exista
if [ ! -d "/banco" ]; then
  mkdir banco;
fi
docker run -d --network auth_MySQL_network -v /banco:/var/lib/mysql --name auth_MySQL_cont auth_MySQL > /dev/null 2>&1
docker run -d --network auth_MySQL_network --name swagger_server_cont auth_swagger_server > /dev/null 2>&1
