# nodeScan

Finds all node packages on your system.  A bash script.

## Background

We cannot secure what we do not know exists.

The purpose of this script is to search and log all folders that contain node modules.  Ideal for development machines where exact amount and/or location of node applications is unknown.  Search criteria is 'node_modules'.

## Installation

* Open command Terminal
* Navigate to desired working directory
* Run git clone https://github.com/andrewhheller/nodescan/
* cd nodscan
* Execute script with sudo privileges

  sudo ./nodescan.sh

## Usage

The log file 'log.txt' will be generated in the /nodescan folder.

Depending on amount of folders on target system, the script could take a considerable amount of time.

The final log file will be filtered list of all node application folders (see logic section below for more details regarding 'filtered')

### Script Logic
- determines if Node is installed on system (if not, aborts)
- finds all folders starting at root / named 'node_modules'
- only lists the parent folders up to and exclude 'node_modules'
- excludes duplicating folders
- final output is written to 'log.txt' in the /nodscan directory
