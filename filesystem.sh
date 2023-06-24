#!/bin/bash
set -e
df -H | awk '{print $1 " " $5}'| while read output;
do
    usage=$(echo $output | awk '{print $2}' | tr -d '%')
    disk=$(echo $output| awk '{print $1}')
    if [[ $usage -ge 80 ]]
    then
        echo "Disk is Critical Condition $disk"
    else
        echo "$disk usage meets $usage%" | column -t
    fi
done

