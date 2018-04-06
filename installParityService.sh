#!/usr/bin/env bash


export SCRIPT_HOME=~/parityscripts
sed -i 's/USERNAME/$USER/g' $SCRIPT_HOME/parity.service
sudo cp ~/$SCRIPT_HOME/parity.service /etc/systemd/system