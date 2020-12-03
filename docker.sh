#!/usr/bin/env bash

sudo docker run -p 8090:8080 -v /home/www-data/github42/static:/static -v /home/www-data/github42/templates:/code/templates --env-file /home/ubuntu/github42.env --rm --name github42.com-web github42.com-web
