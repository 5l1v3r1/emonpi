#!/bin/bash

# Force NTP time update
date
rpi-rw > /dev/null
sudo service ntp stop
sudo ntpd -q -g
sudo service ntp start
rpi-ro > /dev/null
echo

