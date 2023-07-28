## 0x05. Processes and signals

### Resources
* Read or watch:

(http://www.linfo.org/pid.html)[Linux PID]
(https://www.thegeekstuff.com/2012/03/linux-processes-environment/)[Linux process]
(https://www.educative.io/answers/what-are-linux-signals)[Linux signal]
(https://www.digitalocean.com/community/tutorials/process-management-in-linux)[Process management in linux]

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
