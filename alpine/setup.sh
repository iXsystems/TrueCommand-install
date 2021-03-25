#!/bin/sh
# ===============================
# TrueCommand Service setup script from iXsystems
# https://github.com/ixsystems/truecommand-install
# ===============================

if [ $(id -u) -ne 0 ] ; then
  echo "This script needs to run with root permissions"
  exit 1
fi

# Install Docker
if [ ! -e /usr/bin/docker ] ; then
  apk add docker
  if [ $? -ne 0 ] ; then
    echo "Error Installing docker package!!"
    exit 1
  fi
fi

# Install the TrueCommand service file and startup script
filelist="all/start-truecommand:/usr/local/bin/start-truecommand alpine/truecommand.openrc:/etc/init.d/truecommand"
for _file in ${filelist}
do
  relpath=$(echo ${_file} | cut -d : -f 1)
  instpath=$(echo ${_file} | cut -d : -f 2)
  #Fetch the latest version of the file directly from Github
  if [ -e "${instpath}" ] ; then
    rm "${instpath}"
  fi
  wget https://raw.githubusercontent.com/iXsystems/truecommand-install/main/${relpath} -O "${instpath}"
  chmod 775 "${instpath}" #ensure it is executable by root/group
done

# Enable the services
rc-update add docker
rc-update add truecommand
rc-service docker start
rc-service truecommand start

# Now print out some quick instructions
echo "=================================="
echo "The TrueCommand service is now running on ports 80/443!"
echo "Manage the service with your system service-management utility:"
echo "Examples:"
echo "   \"rc-service truecommand start\" : Turn on the service"
echo "   \"rc-service truecommand stop\" : Turn off the service"
echo "   \"rc-service truecommand restart\" : Restart the service"
echo "The service will automatically check for and apply updates every time it is turned on if your system is connected to the internet."
echo "=================================="
