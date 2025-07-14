# JumpOverZScaler from scratch and with no fear.

## Idea behind everything

ZScaler is blocking your access to some webpages and you want a method to keep accessing it. In order to do so, we are going to execute a Firefox in a "box", a Firefox that is going to be fully free to visit any webpage you want (using VM+Docker technology). 

ZScaler will sniff ALL TRAFIC coming in and out our network interfaces, so we need to jump this using "Bridge mode" of a network interfaces in a VM. This allows us to have direct access to LAN without ZSCaler control. We can just open a VM in bridge mode and install Firefox there and user the GUI of the virtualitzation software ... but it's going to use an entire OS to run a Firefox instance! We can use a X11 forwarding solution in the same escenario with a MobaXterm X11 server ... but it's going to use an entire OS to run a Firefox instance! Go for a Docker solution!

In this example I try to go a little bit further and have a nice access from my windows to the donwload directory of th boxed Firefox (in order to get the downloaded files or to upload files)

## Linux VM+Dockers installation

You must be able to install a Linux Virtual Machine (any flavor), and install dockers software in ... otherwise it's not for you. In my case using virtual box.

If having doubts about what Linux OS, my prefered option is allways Debian with a very minimal installation:

[NetInst media](https://www.debian.org/CD/netinst/)
[Minimal installation instructions](https://www.howtoforge.com/tutorial/debian-minimal-server/)

Let me give you also the official installation guide for dockers on Debian

[Docker on Debian](https://docs.docker.com/engine/install/debian)

Mandatory to have the virtual machine with the network in bridge mode and not mandatory but a very nice practice to have a LAN statis ip address (in my case 192.168.1.21). Also to install the guest additions in that VM. Guest additions are very usufull in order to have nice access to the Download directory of our Firefox in a box.

## Firefox in a box

### Folder exporting to the Vm running Dockers

With all that things done, in the virtual machine:
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
A reboot after all is a good idea in order to be sure that everything is up and running. At this moment you should be able to open an explorer in your windows machine inside the folder "C:\Users\username\VirtualBox VMs\Dockers\Share" , place a file there and the see it in the VM with and easy "ls -la /mnt/firefox-boxed". And with a "touch /mnt/firefox-boxed/greetings-from-the-host.txt" see a Linux created file in your windows folder.

### Firefox in a box docker creation

And now just proceed with the docker creation:
```
cd
git clone https://github.com/urri34/JumpOverZScaler
cd JumpOverZScaler
chmod 750 make.sh
./make.sh
```
