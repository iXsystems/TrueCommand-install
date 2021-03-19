# Debian Setup Instructions
A list of instructions for installing TrueCommand on Debian OS's.

## Quick Setup
**Note** : Ensure you have the "wget" utility installed first: `apt-get install wget`

Run these commands in-order from a system terminal

```
wget https://raw.githubusercontent.com/iXsystems/truecommand-install/main/debian/setup.sh -O setup.sh
chmod 775 setup.sh
sudo ./setup.sh
```

## Manual Setup
The setup comes down to 3 pieces:

1. Ensure that docker is installed
2. Install the "truecommand.service" and "start-truecommand" files from this repository
3. Enable the services

For details about how this is done, take a look at the "quick setup" script here: [setup.sh](setup.sh).
