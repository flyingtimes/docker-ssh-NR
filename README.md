# docker-ssh-NR
## description

Sometime your machine is inside a firewall. You want to access this machine from outside the firewall.
You can use this image to achieve this goal.

** NOTICE **

mac is not supported.

## how to use

### prepare

step 1) install docker, if your are not familar with docker, please refer to [docker.com](docker.com)

step 2) pull the image from server 
```
docker pull clarkchan/alpine-ssh
```
if you are using raspberry pi, use following instead.
```
docker pull clarkchan/rpi-alpine-ssh
```
step 3) run your service in your local machine. Let's suppose you start a serve at 127.0.0.1:8080 locally.

step 4) prepare a jumper machine, which can be access from anywhere. Let's suppose your machine ip is 1.2.3.4, you want it be access at 1.2.3.4:10080. You need the access privilege on this machine, that means you have an account and key file of this machine. Let's suppose your username is ubuntu and your key file name is key.pem

step 5) place the key.pem in this folder.

step 6) add a line to /etc/ssh/sshd_config in jumper machine.
```
GatewayPorts yes
```
This line make sure the jumper can be access from anywhere. If you are using cloud service, please make sure the firwall stagery open the port also. 

### setup parameters and start the container

step 1) modify alpine-ssh.yml file with your parameters if needed.If you are using raspberry pi, use rpi-alpine-ssh.yml instead.

step 2) start container
```
docker-compose -f alphine-ssh.yml up -d
```
or
```
docker-compose -f rpi-alphine-ssh.yml up -d   
```
on raspberry pi.
