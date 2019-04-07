#!/bin/bash
echo "Welcome to nodeScan!"

# first checks if node is installed on system

echo "Checking if node is installed on system... "

if [[ $(which node) ]]; then
  echo "Node found.  Executing script..."
  touch /var/log/nodeScan.txt
  chmod +w /var/log/nodeScan.txt
  find /home/andrew/Desktop/FSA/flexImmersive/07_Express/code_express/ -name node_modules > /var/log/nodeScan.txt
  awk -F "node_modules" '{print $1}' /var/log/nodeScan.txt | uniq -d > /var/log/nodeScan.txt
  echo "Scan complete.  Please open /var/log/nodeScan.txt to review results."
else
  echo 'Node NOT found on this system.  Aborting.'
fi
