# JumpOverZScaler from scratch and with no fear.

## Linux VM installation

You must be able to install a Linux Virtual Machine (any flavor), and install dockers software in ... otherwise it's not for you. In my case using virtual box.

Mandatory to have the virtual machine with the network in bridge mode and a LAN statis ip address (in my case 192.168.1.21). Also to install the guest additions. With ll that things done, in the virtual machine:
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
