## 0x05. Processes and signals

### Resources
* Read or watch:

[http://www.linfo.org/pid.html]([Linux PID)
[https://www.thegeekstuff.com/2012/03/linux-processes-environment/](Linux process)
[https://www.educative.io/answers/what-are-linux-signals](Linux signal)
[https://www.digitalocean.com/community/tutorials/process-management-in-linux](Process management in linux)

## Tasks

### 0. What is my PID

### Bash script that displays its own PID.

### 1. List your processes

#### Bash script that displays a list of currently running processes.

##### Requirements:

* Must show all processes, for all users, including those which might not have a TTY
* Display in a user-oriented format
* Show process hierarchy

### 2. Show your Bash PID

#### Using your previous exercise command, A Bash script that displays lines containing the bash word, thus allowing you to easily get the PID of your Bash process.

##### Requirements:

* cannot use pgrep

### 3. Show your Bash PID made easy

#### Bash script that displays the PID, along with the process name, of processes whose name contain the word bash.

##### Requirements:

* cannot use ps

### 4. To infinity and beyond

#### Bash script that displays To infinity and beyond indefinitely.

##### Requirements:

* In between each iteration of the loop, add a sleep 2

### 5. Don't stop me now!

#### Bash script that stops 4-to_infinity_and_beyond process.

##### Requirements:

* must use kill

### 6. Stop me if you can

#### Bash script that stops 4-to_infinity_and_beyond process.

##### Requirements:

* cannot use kill or killall

### 7. Highlander

#### Bash script that displays:

* To infinity and beyond indefinitely
* With a sleep 2 in between each iteration
* I am invincible!!! when receiving a SIGTERM signal

### 8. Beheaded process

#### Bash script that kills the process 7-highlander.

### 9. Process and PID file
\#advanced

#### Bash script that:

* Creates the file /var/run/myscript.pid containing its PID
* Displays To infinity and beyond indefinitely
* Displays I hate the kill command when receiving a SIGTERM signal
* Displays Y U no love me?! when receiving a SIGINT signal
* Deletes the file /var/run/myscript.pid and terminates itself when receiving a SIGQUIT or SIGTERM signal

### 10. Manage my process
\#advanced

Read:

[&](https://bashitout.com/2013/05/18/Ampersands-on-the-command-line.html)
[init.d](https://www.ghacks.net/2009/04/04/get-to-know-linux-the-etcinitd-directory/)
[https://en.wikipedia.org/wiki/Daemon_%28computing%29](Daemon)
[https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html](Positional parameters)
* man: sudo

* Programs that are detached from the terminal and running in the background are called daemons or processes, need to be managed. The general minimum set of instructions is: start, restart and stop. The most popular way of doing so on Unix system is to use the init scripts.

#### A manage_my_process Bash script that:

* Indefinitely writes I am alive! to the file /tmp/my_process
* In between every I am alive! message, the program should pause for 2 seconds
#### Bash (init) script 101-manage_my_process that manages manage_my_process.

#### Requirements:

1. When passing the argument start:
* Starts manage_my_process
* Creates a file containing its PID in /var/run/my_process.pid
* Displays manage_my_process started
2. When passing the argument stop:
* Stops manage_my_process
* Deletes the file /var/run/my_process.pid
* Displays manage_my_process stopped
3. When passing the argument ***restart***
* Stops ***manage_my_process***
* Deletes the file `/var/run/my_process.pid`
* Starts ***manage_my_process***
* Creates a file containing its PID in `/var/run/my_process.pid`
* Displays ***manage_my_process restarted***

4. Displays Usage: manage_my_process {start|stop|restart} if any other argument or no argument is passed
* Note that this init script is far from being perfect (but good enough for the sake of manipulating process and PID file), for example we do not handle the case where we check if a process is already running when doing `./101-manage_my_process` start, in our case it will simply create a new process instead of saying that it is already started.

### 11. Zombie
\#advanced

Read [https://zombieprocess.wordpress.com/what-is-a-zombie-process/](what a zombie process is.)

#### C program that creates 5 zombie processes.

##### Requirements:

* For every zombie process created, it displays Zombie process created, PID: ZOMBIE_PID
* When your code is done creating the parent process and the zombies, use the function bellow
``` C
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}```
