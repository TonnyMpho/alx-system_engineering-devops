## 0x08. Networking basics #1

### Resources
#### Read or watch:

- [What is localhost](https://en.wikipedia.org/wiki/Localhost)
- [What is 0.0.0.0](https://en.wikipedia.org/wiki/0.0.0.0)
- [What is the hosts file](https://www.makeuseof.com/tag/modify-manage-hosts-file-linux/)
- [Netcat examples](https://www.thegeekstuff.com/2012/04/nc-command-examples/)

##### man or help:
- ifconfig
- telnet
- nc
- cut

### ***Tasks***

### 0. Change your home IP

#### Bash script that configures an Ubuntu server with the below requirements.

##### Requirements:

- localhost resolves to 127.0.0.2
- facebook.com resolves to 8.8.8.8.

If you’re running this script on a machine that you’ll continue to use, be sure to revert localhost to 127.0.0.1. Otherwise, a lot of things will stop working!

### 1. Show attached IPs

#### Bash script that displays all active IPv4 IPs on the machine it’s executed on.

### 2. Port listening on localhost

 Bash script that listens on port 98 on localhost.
