# JumpOverZScaler from scratch and with no fear.

## Linux VM installation

You must be able to install a Linux Virtual Machine (any flavor), and install dockers software in ... otherwise it's not for you. In my case using virtual box.

If having doubts about what Linux OS, my prefered option is allways Debian with a very minimal installation:

[https://www.debian.org/CD/netinst/](NetInst)

Let me give you also the official installation guide for dockers on Debian

[https://docs.docker.com/engine/install/debian/](Docker on Debian)

Mandatory to have the virtual machine with the network in bridge mode and not mandatory but a very nice practice to have a LAN statis ip address (in my case 192.168.1.21). Also to install the guest additions in that VM. With all that things done, in the virtual machine:
```
mkdir /mnt/firefox-boxed
chmod 777 /mnt
chmod 777 /mnt/firefox-boxed
```
We go to the VirtualBox graphical interface and configure the shared folder. In my case
```
C:\Users\username\VirtualBox VMs\Dockers\Share and /mnt/firefox-boxed
[Permanent]
[Auto mounted]
```
And now just proceed with the docker creation:
```
cd
git clone https://github.com/urri34/JumpOverZScaler
cd JumpOverZScaler
chmod 750 make.sh
./make.sh
```
