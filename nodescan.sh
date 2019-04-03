#!/bin/bash
echo "Welcome to nodeScan!"

# checks if node is installed on system

echo "Checking if node is installed on system... "

if [[ $(which adfadfadf) ]]; then
  echo 'Confirmed, node is installed. Scan proceeding.'
else
  echo 'Please note node is NOT installed on this system.  Nothing to search.  Script exiting.'
fi
