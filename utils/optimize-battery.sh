#!/bin/bash
sudo service mysql stop
sudo service apache2 stop
sudo service nginx stop
sudo powertop --auto-tune
