#!/bin/bash

check_disk() {

    USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

    if [ "$USAGE" -gt 80 ]
    then
        echo "WARNING: Disk Usage = $USAGE%"
    else
        echo "Disk Usage Normal: $USAGE%"
    fi
}

check_memory() {

    MEM=$(free | awk '/Mem:/ {print int($3/$2 * 100)}')

    echo "Memory Usage: $MEM%"
}

check_uptime() {

    uptime
}

echo "===== SERVER REPORT ====="

check_disk

check_memory

check_uptime
