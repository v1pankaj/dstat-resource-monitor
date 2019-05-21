#!/bin/sh
if [ $# -lt 1 ]; then
    echo "Usage: resourceMonitor.sh <Delay time in seconds>"
    exit
fi
rm /scripts/output/resourcemonitor_not_all_cpus.out
dstat -t -l -m -s -c -r -y --top-cpu --top-mem --proc-count $1 >> /scripts/output/resourcemonitor_not_all_cpus.out
