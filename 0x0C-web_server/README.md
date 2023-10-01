## Web server

Resources
Read or watch:

- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
- [Nginx](https://en.wikipedia.org/wiki/Nginx)
- [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
- [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/
- [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm)
- [HTTP redirection](https://moz.com/learn/seo/redirection)
- [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
- [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)


### Tasks

0. ### Transfer a file to your server

#### Bash script that transfers a file from our client to a server:

##### Requirements:

- Accepts 4 parameters
	- The path to the file to be transferred
	- The IP of the server we want to transfer the file to
	- The username scp connects with
	- The path to the SSH private key that `scp` uses
- Display Usage: `0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY` if less than 3 parameters passed
- `scp` must transfer the file to the user home directory ~/
- Strict host key checking must be disabled when using `scp`

1. ### Install nginx web server

Readme:

[-y on apt-get command](https://askubuntu.com/questions/672892/what-does-y-mean-in-apt-get-y-install-command)
#### Web servers are the piece of software generating and serving HTML pages, let’s install one!

##### Requirements:

- Install nginx on your web-01
server
- Nginx should be listening on port 80
- When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!
- Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself)
- can’t use systemctl for restarting nginx

3. ### Redirection

Readme:

- [Replace a line with multiple lines with sed](https://stackoverflow.com/questions/26041088/sed-replace-line-with-multiline-variablehttps://stackoverflow.com/questions/26041088/sed-replace-line-with-multiline-variable)
#### Configure your Nginx server so that /redirect_me is redirecting to another page.

##### Requirements:

- The redirection must be a “301 Moved Permanently”
- Using what we did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task

4. ### Not found page 404

#### Configure your Nginx server to have a custom 404 page that contains the string `Ceci n'est pas une page`.

##### Requirements:

- The page must return an HTTP 404 error code
- The page must contain the string `Ceci n'est pas une page`
- Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task

5. ### Install Nginx web server (w/ Puppet)

- Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.

##### Requirements:

- Nginx should be listening on port 80
- When querying Nginx at its root `/` with a GET request (requesting a page) using `curl`, it must return a page that contains the string Hello World!
- The redirection must be a “301 Moved Permanently”
