#!/bin/bash

OLD_MOTD_NEWS_URL="homestead.joeferguson.me"
NEW_MOTD_NEWS_URL="raw.githubusercontent.com/butterops/shinn/master/motd"

# Personalize message of the day news url
sudo sed -i "s,$OLD_MOTD_NEWS_URL,$NEW_MOTD_NEWS_URL,g" /etc/default/motd-news
sudo service motd-news restart