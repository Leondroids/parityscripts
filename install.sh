#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "No destination supplied"
    exit 1
fi

export dest=$1

rm -rf $dest
mkdir $dest

cp ./* $dest
chmod +x $dest/*

