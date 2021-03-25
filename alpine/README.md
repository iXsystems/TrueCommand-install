# Alpine Linux Setup Instructions
A list of instructions for installing TrueCommand on Alpine Linux.

**Notes**

1. Ensure you have the "wget" utility installed first: `apk add wget`
2. Ensure that you have the "community" package repository enabled
   * Edit the "/etc/apk/repositories" file as root and uncomment the community repository line
   * Run `apk update` to refresh the list of available packages

Run this command (as root) from a system terminal

```
wget https://raw.githubusercontent.com/iXsystems/truecommand-install/main/alpine/setup.sh -O - | sh
```

You can see the details of the "quick setup" script here: [setup.sh](setup.sh).
