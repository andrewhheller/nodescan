#!/bin/bash
echo "Welcome to nodeScan!"

# first checks if node is installed on system

echo "Checking if node is installed on system... "

if [[ $(which node) ]]; then
  echo "Node found.  Executing script..."
  sudo mkdir /var/log/nodescan
  sudo chown $USER /var/log/nodescan
  touch /var/log/nodescan/log.txt
  touch /var/log/nodescan/error.txt
  find / -name node_modules 2> /var/log/nodescan/error.txt | awk -F "node_modules" '{print $1}' | uniq -d > /var/log/nodescan/log.txt
  echo "Scan complete.  Please open /var/log/nodeScan.txt to review results."
else
  echo 'Node NOT found on this system.  Aborting.'
fi
