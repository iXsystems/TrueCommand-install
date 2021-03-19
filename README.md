# truecommand-install
TrueCommand is available as a docker container and can run on any OS where docker is supported.

This repo provides some simple installation scripts for running a TrueCommand container as a system service, making it easier to start/stop/update the container as needed.

## Basic Process

1. Install your OS (onto real hardware, or into a VM platform).
2. Download and run the "setup.sh" script from this repository for your particular OS.


## Supported OS's 
This list is *not* exhaustive, please feel free to submit updates for other OS's as desired.

| OS | Images | Architecture | Instructions | Notes |
|:---:|:---:|:---:|:---:|:---:|
|Debian Linux| [Download Site](https://www.debian.org/CD/http-ftp/) | amd64 | [Setup Guide](debian) | |
|Alpine Linux| [Download Site](https://alpinelinux.org/downloads/) | x86_64 | | |
|Void Linux| [Download Site](https://voidlinux.org/download/) | x86_64 | | |

## Manual Setup
The setup comes down to 3 pieces:

1. Ensure that docker is installed
2. Install the "start-truecommand" file from this repository [all/start-truecommand](all/start-truecommand) and a service file for your OS
3. Enable the services
