#!/usr/bin/env bash

docker login
sudo docker run -it -p 30303:8001 leondroid/webtest:0.0.1