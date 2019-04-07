#!/bin/bash
echo "Welcome to nodeScan!"

# first checks if node is installed on system

if [[ $(which node) ]]; then
  echo "Node installed. Search for node applications..."
  sudo mkdir -p /var/log/nodescan
  sudo chown $USER /var/log/nodescan
  touch /var/log/nodescan/log.txt
  touch /var/log/nodescan/error.txt
  find / -name node_modules 2> /var/log/nodescan/error.txt | awk -F "node_modules" '{print $1}' > /var/log/nodescan/log.txt
  sort -uo /var/log/nodescan/log.txt /var/log/nodescan/log.txt
  echo "Scan complete.  Please open /var/log/nodescan/log.txt to review results."
else
  echo 'Node NOT found on this system.  Aborting.'
fi
