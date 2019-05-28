![nodeScan](https://github.com/andrewhheller/nodescan/blob/master/node-scan1.jpg)

# nodeScan

Finds all node packages on your system.  A bash script.

## Background

We cannot secure what we do not know exists.

The purpose of this script is to search for and log all folders that contain node modules (i.e. node applications).  Ideal for systems where exact amount and/or location of node applications is unknown.  Search criteria is 'node_modules'.

From the log file data, we can generate a list of node applications on the system and run npm audit or execute additional maintenance as needed.

## Installation

* Open Terminal
* Navigate to desired working directory
* Run git clone https://github.com/andrewhheller/nodescan/
* cd nodescan
* Execute script with sudo privileges

  sudo ./nodescan.sh

## Usage

The log file 'nodeScan.txt' will be generated in the /var/log folder.

Depending on amount of folders on target system, the script could take a considerable amount of time.

The final log file will be a filtered list of all node application folders (see logic section below for more details regarding 'filtered')

### Script Logic
- determines if Node is installed on system (if not, aborts)
- finds all folders starting at root / named 'node_modules'
- only lists the parent folders up to and excluding 'node_modules'
- list only unique (no duplicating) directories
- final output is written to /var/log/nodeScan.txt

_NOTE:  if you have some idea of the parent directory to search in and do not need to search the entire system, change the '/' after find to the parent directory_
