# XpHunt
This is a simple Bash script that allows you to search for exploits for a given service using the searchsploit tool and download the exploits of your choice. It also provides the option to search for exploits in Metasploit after downloading an exploit.

# Introduction
The Exploit Search and Download Script is a useful tool for security researchers and penetration testers who want to find and download exploits for a particular service. It uses the searchsploit tool to search for exploits in the Exploit Database, and provides an easy way to download the exploits of your choice. Additionally, it offers the option to search for exploits in Metasploit after downloading an exploit.

# Installation
To use the Exploit Search and Download Script, you will need to have the following prerequisites installed:

* searchsploit tool
* Metasploit Framework (if you want to search for exploits in Metasploit)

To install the script, follow these steps:
Clone this repository to your local machine:
1. `git clone https://github.com/xpinux/XpHunt.git`
2. Change to the directory where the repository was cloned:
`cd XpHunt`
3. Make the script executable:
`chmod +x XpHunt.sh`

# Usage
To use the script, follow these steps:
1. Run the Script
`./exploit_search_download.sh`
2. Follow the prompts to enter the name and version of the service you want to search for exploits, and to download exploits of your choice.
3. After downloading an exploit, you will be prompted to search for exploits in Metasploit. If you choose to do so, Metasploit will be launched and a search for exploits for the given service will be performed.

# Contributing
If you want to contribute to the Exploit Search and Download Script, follow these steps:

1. Fork this repository.
2. Make your changes.
3. Submit a pull request.

Before submitting a pull request, make sure your changes meet the following criteria:

* Your code is well-documented and easy to read.
* Your changes do not break existing functionality.
* Your changes are accompanied by tests where appropriate.

# Credits
This script was created by Xpinux based on the Bash scripting knowledge and examples from the following sources:

searchsploit documentation
Metasploit Framework documentation
