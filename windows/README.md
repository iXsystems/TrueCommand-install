### Windows Installation Instructions

1. On your Windows platform (VM or Bare-Metal) install [Docker for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)
2. Open the PowerShell (Start -> Windows Power Shell -> Windows Power Shell)
3. Run the following command inside powershell to start TrueCommand, replacing [hostdirectory] with a path to where you want TrueCommand to store its local database:

NOTE: Replace [portnumber] and [sslportnumber] with the ports you wish to expose for TC access. 

`docker run --pull=always --restart unless-stopped --detach -v "[hostdirectory]:/data" -p [portnumber]:80 -p [sslportnumber]:443 ixsystems/truecommand`

Example:

`docker run --pull=always --restart unless-stopped --detach -v "C:/truecommand/:/data" -p 80:80 -p 443:443 ixsystems/truecommand`

If successful, you should see something similar to the following, and be able to access TrueCommand on http://localhost:80

Docker Deployment:

![image](https://user-images.githubusercontent.com/1933088/112502019-17c38b00-8d60-11eb-8294-9fbaeef41e04.png)

Initial Login Screen:

![image](https://user-images.githubusercontent.com/1933088/112498138-9e766900-8d5c-11eb-9b94-7ec4dfede1c3.png)

