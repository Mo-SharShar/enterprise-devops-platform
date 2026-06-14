#!/bin/bash

echo "===== SERVER HEALTH CHECK ====="

echo ""
echo "Hostname:"
hostname

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "CPU Load:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Logged Users:"
who
