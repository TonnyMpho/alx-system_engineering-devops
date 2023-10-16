## Firewall

- [What is a firewall](https://en.wikipedia.org/wiki/Firewall_%28computing%29)

__telnet__ is a very good tool to check if sockets are open with `telnet IP PORT`

### Tasks
0. Block all incoming traffic but

- Let’s install the ufw firewall and setup a few rules

##### Requirements:

- Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
	- 22 (SSH)
	- 443 (HTTPS SSL)
	- 80 (HTTP)
