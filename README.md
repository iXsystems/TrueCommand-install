# truecommand-install
TrueCommand is available as a docker container and can run on any OS where docker is supported.

This repo provides some simple installation scripts for running a TrueCommand container as a system service, making it easier to start/stop/update the container as needed.

## TrueCommand Service Notes
The install routines from this repo does the following:

* Setup a system service for running the TrueCommand docker container
   * This service is enabled to auto-start on system boot
   * Use your standard system service tools to manage the container (start, stop, restart, status, etc)
* The TrueCommand image has the following configuration by default:
   * Starts the UI on ports **80** (http) and **443** (https)
   * Stores the TrueCommand database at "/data" on the host
   * Will use the "latest" TrueCommand docker image (latest official release)

### Changing the TrueCommand configuration
1. Turn off the service
2. Edit the ["/usr/bin/start-truecommand"](all/start-truecommand) file (as root).
   * All of the configuration options are right at the top of the file for easy-modification.
   * Save the new file when you are done
3. Turn on the service

## Basic Process

1. Install your OS of choice (onto real hardware, or into a VM platform) - [Pre-Built Linux VM Images](https://www.linuxvmimages.com/).
2. Download and run the "setup.sh" script from this repository for your particular OS.


## Supported OS's 
This list is *not* exhaustive, please feel free to submit updates for other OS's as desired.

| OS | Images | Architecture | Instructions | Notes |
|:---:|:---:|:---:|:---:|:---:|
|Debian Linux| [Download Site](https://www.debian.org/CD/http-ftp/) | amd64 | [Setup Guide](debian) | Uses systemd service file|
|Alpine Linux| [Download Site](https://alpinelinux.org/downloads/) | x86_64 |[Setup Guide](alpine) | Uses OpenRC service file|
|Void Linux| [Download Site](https://voidlinux.org/download/) | x86_64 |[Setup Guide](void) | Uses Runit service file|

## Manual Setup
The setup comes down to 3 pieces:

1. Ensure that docker is installed
2. Install the "start-truecommand" file from this repository [all/start-truecommand](all/start-truecommand) and a service file for your OS
3. Enable the services
