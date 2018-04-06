#!/usr/bin/env bash


if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi


case "$1" in
 "start" ) sudo systemctl start parity;;
 "reload" ) sudo systemctl daemon-reload;;
 "stop" ) sudo systemctl stop parity;;
 "status" ) sudo systemctl status parity.service;;
esac
