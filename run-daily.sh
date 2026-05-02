#!/bin/bash
# HN News Digest - Daily Run Script
# Schedule: Daily via cron

cd /root/hn-news-digest
python3 agent.py > /root/hn-digest.log 2>&1
echo "Last run: $(date)" >> /root/hn-digest.log
