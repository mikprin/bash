#!/bin/bash

sudo pacman -Sy && sudo pacman -S cockpit 

sudo systemctl start cockpit.service

sudo systemctl enable cockpit.service
