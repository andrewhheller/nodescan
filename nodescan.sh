#!/bin/bash
echo "Welcome to nodeScan!"

# checks if node is installed on system

echo "Checking if node is installed on system... "

if [[ $(which node) ]]; then
  echo "Node found.  Executing script..."
  echo "Results will be saved in log.txt of the current working directory."
  find / -name node_modules > log.txt | awk -F "node_modules" '{print $1}' > log.txt | uniq -d log.txt
else
  echo 'Node NOT found on this system.  Aborting.'
fi
