#!/bin/bash
echo "Searching for running Node.js processes:"
ps aux | grep " node " | grep -v grep

nodepids=$(ps aux | grep " node " | grep ubuntu | grep -v grep | cut -c10-16)

echo "Terminating the following process(es):"

for nodepid in ${nodepids[@]}
do
    echo "Stopping PID: $nodepid"
    kill -9 $nodepid
done

echo "All processes have been terminated."
