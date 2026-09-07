
#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 00 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### HCL GUVI is a skill development and coding educational platform created by HCL in partnership 

#### Link: https://docs.google.com/spreadsheets/d/1rEDq5uYtNuwJFnmURYe8t10eRdSqV_JuxoD5k6dYpcw/edit?gid=351479804#gid=351479804

#### Module-wise practice tasks cum road map for Devops 2026
#### SN 	Module Name	Practice tasks
#### 1	Module_01: Operating System (OS) Linux
#### 2	Module_02: Bash Scripting
#### 3	Module_03: Computer Networking
#### 4	Module_04: Cloud Comouting AWS (Amazon Web Services)
#### 5	Module_05: GIT and GIT HUB
#### 6	Module_06: Build Tools
#### 7	Module_07: Docker	
#### 8	Module_08: Microservices Architecture, Design & Containerization
#### 9	Module_09: kubernetes	
#### 10	Module_10: Introduction to Devops	
#### 11	Module_11: Jenkins	
#### 12	Module_12: Terraform	
#### 13	Module_13: Ansible	
#### 14	Module_14: Cloudformation	
#### 15	Module_15: Prometheus & Grafana	
	
#### Online Learning platform and recorded classes
#### Links: https://v2.zenclass.in/dashboard

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 01 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################
#### Assigned Task 01
### Advanced Linux Commands (File Creation Task):
- https://docs.google.com/document/d/1DE33CLw58HI1wOKju-Hzu4g-44gLzCENf5WBb9X5KrI/edit

#### Techstacks needs to be used: 
- Shell (AWS, Gitbash, WSL, Vbox)

#### How do I submit my work?
- Push all your work files to GitHub (O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions?
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.


#### Task Description:
#### 01_Q. Create a directory called ""my_folder"", navigate into it, and create a file named ""my_file.txt"" with some text. Then, create another file named ""another_file.txt"" with some text. Concatenate the content of ""another_file.txt"" to ""my_file.txt"" and display the updated content. Finally, list all files and directories in the current directory.

#### 02_Q. Create 20 files with .txt extensions and rename the first 5 files to .yml extension and Print the latest created top 5 files among the total no of files".

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### Task 01_Answer_01:
#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
- [A] Create a directory called "my_folder"
  - mkdir mkdir my_folder; cd my_folder
  
- [B] Create a file named "my_file.txt" with some test.
  - echo "This is the first file." > my_file.txt
  
- [C] create another file named "another_file.txt" with some text
  - echo "This is the second file." > another_file.txt
  
- [D] Concatenate the content of "another_file.txt" to "my_file.txt"
  - cat another_file.txt >> my_file.txt
  
- [E] Display the updated contents, list the files and directory
  - cat my_file.txt
  - ls -R; ls -l
  
- [F] Create 20 files with .txt and rename first 5 files to .yml extension
  - touch my_folder/file-{1..20}.txt; for i in {1..5}; do mv file$i.txt file$i.yml; done
  
- [G] Print the latest created top 5 files among the total no of files
  - ls -R
  - ls -lt | head -5
  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### Task 01_Answer_02:

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 02 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

#### Assigned Task 02
### Advanced Linux Commands	(File Permission Task): 
- https://docs.google.com/document/d/1nmbC9-RJLwcEViPgsntaU3rHiJMneDfXsEOyYqw0Z1c/edit?tab=t.0

#### Techstacks needs to be used: 
- Shell (AWS, Gitbash, WSL, Vbox)

#### How do I submit my work? #
- Push all your work files to GitHub (O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions: 
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.


#### Task Description: 
#### 01_Q. Create a file with .txt extension (/home/demo.txt). Change the permission set of that file, so that any user can read it, group can read/write & owner can read/write/execute it.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
- [A] Create file unter the path: 
  - $ touch /home/demo.txt
- [B] User can read, Group can read/write and owner can read/write/excute: 
  - $ chmod 764 /home/demo.txt
- [C] List the file permission:
  - $ pwd; ls -l
  
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 03 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

#### Assigned Task 03
### Scripting Task (Automation using Bash Scripts)
- https://docs.google.com/document/d/1D9Q2jU2RGmpI2wp8vkrmRfOiGtNf0FQxyYeJ3IZShl4/edit


#### Techstacks needs to be used: 
- Shell (AWS, Gitbash, WSL, Vbox)

#### How do I submit my work?
- Push all your work files to GitHub (Code & O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions?
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.


#### Task Description:
#### 01_Q. Create a shell script to print the HTTP error code of guvi.in & print, the success/failure message based on the error code response

#### 02_Q. Given a file, replace all occurrence of the word "give" with "learning" from 5th line till the end in only those lines that contain the word "welcome"

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
#### Print HTTP error code of guvi.in and show success/failure message
- [A] Create bash script file unter the path: 
  - cat script-1.sh 
- #!/bin/bash
# Fetch HTTP status code
status_code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)

echo "HTTP Status Code: $status_code"

# Check success/failure
if [ "$status_code" -eq 200 ]; then
    echo "Success: The site is reachable."
else
    echo "Failure: The site returned an error."
fi

#### Replace give with learning from 5th line onward, but only in lines containing welcome
- #!/bin/bash

# Input file
file="input.txt"

# Use sed to replace from line 5 onwards
sed '5,${
    /welcome/ s/give/learning/g
}' "$file" > output.txt

echo "Replacement done. Check output.txt"


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 04 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### Network Task (Networking Commands)
- https://docs.google.com/document/d/1AT88y7YUcEr2qnyW6kFJ443RDZvaU19xAfBr9PTQWBY/edit

#### Techstacks needs to be used: 
- Shell (AWS, Gitbash, WSL, Vbox)

#### How do I submit my work?
- Push all your work files to GitHub (O/P screenshot images must).
- Submit your URLs in the portal.

#### You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#### Task Description:
#### 01_Q. Get me the IP address of a particular domain (guvi.in). How do I find my CPU/memory usage of my server?. Test the connectivity between 2 nodes?

#### 02_Q. I have deployed an application in guvi.com:9000, and logs show my app is running, but I’m unable to view the page. Check whether my port is open or not ?
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
- [A] Create file unter the path: 
  - $ touch /home/demo.txt
  
#### Get IP address of a domain: 
#### Using dig
dig +short guvi.in

# Or using nslookup
nslookup guvi.in

# Or using host
host guvi.in 

#### Check CPU and memory usage of your server
# CPU usage
top        # interactive view
uptime     # quick load average

# Memory usage
free -h    # human-readable memory usage
vmstat     # detailed memory stats

echo "CPU: $(top -bn1 | grep 'Cpu(s)')"
echo "Memory: $(free -h)"

#### Test connectivity between two nodes
# Ping test
ping -c 4 <hostname_or_IP>

# Check route
traceroute <hostname_or_IP>

# Check port connectivity
telnet <hostname_or_IP> <port>
nc -zv <hostname_or_IP> <port>

# Check if port is open
# Using netcat
nc -zv guvi.com 9000

# Using telnet
telnet guvi.com 9000

# Using nmap (scan specific port)
nmap -p 9000 guvi.com

#### Verify that the service is listening:
sudo lsof -i:9000
sudo netstat -tulnp | grep 9000

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.\\\
root@DESKTOP-CPK0PUB:~# ping guvi.in
PING guvi.in (104.26.4.88) 56(84) bytes of data. 64 bytes from 104.26.4.88: icmp_seq=1 ttl=57 time=7.30 ms 64 bytes from 104.26.4.88: icmp_seq=2 ttl=57 time=9.65 ms 64 bytes from 104.26.4.88: icmp_seq=3 ttl=57 time=12.2 ms 64 bytes from 104.26.4.88: icmp_seq=4 ttl=57 time=8.11 ms

root@DESKTOP-CPK0PUB:~# lscpu |grep -E "Model name:|CPU"
CPU op-mode(s): 32-bit, 64-bit CPU(s): 8 On-line CPU(s) list: 0-7 Model name: 11th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz CPU family: 6 NUMA node0 CPU(s): 0-7

root@DESKTOP-CPK0PUB:~# free -h
           total        used        free      shared  buff/cache   available
Mem: 7.5Gi 511Mi 6.7Gi 3.8Mi 365Mi 7.0Gi Swap: 2.0Gi 0B 2.0Gi

root@DESKTOP-CPK0PUB:~# lshw -class memory
*-memory description: System memory physical id: 1 size: 7936MiB

root@DESKTOP-CPK0PUB:~# lshw -class cpu
*-cpu product: 11th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz vendor: Intel Corp. physical id: 2 bus info: cpu@0 version: 6.140.1 width: 64 bits

for real time memory and cpu utilization can see using top command.
top - 03:02:38 up 2:06, 1 user, load average: 0.00, 0.00, 0.00 Tasks: 44 total, 1 running, 43 sleeping, 0 stopped, 0 zombie %Cpu(s): 0.0 us, 0.0 sy, 0.0 ni,100.0 id, 0.0 wa, 0.0 hi, 0.0 si, 0.0 st MiB Mem : 7636.2 total, 6862.9 free, 523.7 used, 403.2 buff/cache MiB Swap: 2048.0 total, 2048.0 free, 0.0 used. 7112.5 avail Mem

PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  1 root      20   0   21928  12540   9340 S   0.0   0.2   0:01.22 systemd
  2 root      20   0    3120   1920   1920 S   0.0   0.0   0:00.01 init-systemd(Ub
  7 root      20   0    3136   1792   1792 S   0.0   0.0   0:00.00 init
We can verify connectivity between my system to othere server by following commands.
ping, telnet(unsecure), nslookup, dig
root@DESKTOP-CPK0PUB:~# ping guvi.in
PING guvi.in (104.26.5.88) 56(84) bytes of data. 64 bytes from 104.26.5.88: icmp_seq=1 ttl=57 time=7.63 ms 64 bytes from 104.26.5.88: icmp_seq=2 ttl=57 time=7.77 ms 64 bytes from 104.26.5.88: icmp_seq=3 ttl=57 time=8.52 ms

root@DESKTOP-CPK0PUB:~# nslookup guvi.in
Server: 10.255.255.254 Address: 10.255.255.254#53 Non-authoritative answer: Name: guvi.in Address: 104.26.5.88 Name: guvi.in Address: 104.26.4.88 Name: guvi.in Address: 172.67.70.207 Name: guvi.in Address: 2606:4700:20::681a:458 Name: guvi.in Address: 2606:4700:20::681a:558 Name: guvi.in Address: 2606:4700:20::ac43:46cf

root@DESKTOP-CPK0PUB:~# dig guvi.in
; <<>> DiG 9.18.39-0ubuntu0.24.04.2-Ubuntu <<>> guvi.in ;; global options: +cmd ;; Got answer: ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 40971 ;; flags: qr rd ra; QUERY: 1, ANSWER: 3, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION: ; EDNS: version: 0, flags:; udp: 512 ;; QUESTION SECTION: ;guvi.in. IN A

;; ANSWER SECTION: guvi.in. 199 IN A 104.26.4.88 guvi.in. 199 IN A 104.26.5.88 guvi.in. 199 IN A 172.67.70.207

;; Query time: 25 msec ;; SERVER: 10.255.255.254#53(10.255.255.254) (UDP) ;; WHEN: Fri Mar 20 03:07:59 UTC 2026 ;; MSG SIZE rcvd: 84

Firt of all insure the web hosing application should be enable and active mode like apache, http, Nginx, Tomcat.
root@DESKTOP-CPK0PUB:~# apt list nginx
Listing... Done nginx/noble-updates,noble-security,now 1.24.0-2ubuntu7.6 amd64 [installed] N: There is 1 additional version. Please use the '-a' switch to see it

root@DESKTOP-CPK0PUB:~# systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled) Active: active (running) since Fri 2026-03-20 01:01:15 UTC; 2h 11min ago Docs: man:nginx(8)

root@DESKTOP-CPK0PUB:~# cat /etc/nginx/sites-enabled/default
server { listen 80; listen [::]:80; ... }

server_name guvi.com;
   root /var/www/guvi.com;
   index index.html;
location / {
try_files $uri $uri/ =404;
}
#}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

change the port 9000 in place of 80
root@DESKTOP-CPK0PUB:~# systemctl start firewalld
root@DESKTOP-CPK0PUB:~# ufw enable
root@DESKTOP-CPK0PUB:~# ufw allow 9000/tcp
or

root@DESKTOP-CPK0PUB:~# systemctl disable firewalld
root@DESKTOP-CPK0PUB:~# ufw disable
semanage port -a -t http_port_t -p tcp 9000
semanage port -l | grep http_port_t
root@DESKTOP-CPK0PUB:~# systemctl status nginx
● nginx.service - A high performance web server and a reverse prox> Loaded: loaded (/usr/lib/systemd/system/nginx.service; enable> Active: active (running) since Fri 2026-03-20 03:54:01 UTC; 2> Docs: man:nginx(8) Main PID: 248 (nginx) Tasks: 9 (limit: 9151) Memory: 7.6M (peak: 8.3M) CPU: 30ms

root@DESKTOP-CPK0PUB:~# telnet guvi.com 9000
Trying 172.67.146.154... Connected to guvi.com. Escape character is '^]'. ^CConnection closed by foreign host.

root@DESKTOP-CPK0PUB:~# nc -zv guvi.com 9000
Connection to guvi.com (104.21.79.166) 9000 port [tcp/http] succeeded!

root@DESKTOP-CPK0PUB:~# ss -tuln | grep 9000
tcp LISTEN 0 511 0.0.0.0:9000 0.0.0.0:* tcp LISTEN 0 511 [::]:9000 [::]:*

root@DESKTOP-CPK0PUB:~# netstat -tulnp | grep 9000
tcp LISTEN 0 511 0.0.0.0:9000 0.0.0.0:* tcp LISTEN 0 511 [::]:9000 [::]:*

root@DESKTOP-CPK0PUB:~# curl -v guvi.com:9000
Host guvi.com:9000 was resolved.
IPv6: 2606:4700:3037::ac43:929a, 2606:4700:3031::6815:4fa6
IPv4: 104.21.79.166, 172.67.146.154
Trying 104.21.79.166:9000...
Connected to guvi.com (104.21.79.166) port 9000
GET / HTTP/1.1 Host: guvi.com User-Agent: curl/8.5.0 Accept: /

root@DESKTOP-CPK0PUB:/var/log/nginx# ls -l
total 4 -rw-r----- 1 www-data adm 0 Mar 7 10:58 access.log -rw-r----- 1 www-data adm 0 Mar 13 01:04 error.log -rw-r----- 1 www-data adm 78 Mar 7 10:58 error.log.1

root@DESKTOP-CPK0PUB:/var/log/nginx# tail error.log

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 05 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### AWS Task-1 (EC2, AWS CLI, AMI)
- https://docs.google.com/document/d/1_ubEMSWcJS9qM5tJCQh7EWUymaIBADNAbTQ6WqagFEA/edit?usp=sharing

#### Techstacks needs to be used : 
- AWS EC2 (windows)
- RDP (Preavailable in Windows)

#### How do I submit my work?
- Push all your work files to GitHub (O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions?
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Task Description:
#### 01_Q. Create a windows Vm machine in AWS and connect with RDP open CMD in windows share the about system info.

#### Accessed AWS CLI services from my local laptop environment, completed the assigned tasks, and successfully committed and pushed the changes to the GitHub repository.”
#### To complete the assigned task, the following points were observed and performed accordingly.

#### Log in to AWS Management Console
 - Go to the AWS Console (console.aws.amazon.com in Bing).
   - Navigate to EC2 Dashboard.
   - Start the Launch Wizard
   - Click Launch Instance.
   - Choose an Amazon Machine Image (AMI)

- Select a Windows Server AMI (e.g., Windows Server 2022 Base).
   - AWS provides several versions (2016, 2019, 2022).
   
- Choose Instance Type
   - Common choice: t2.micro (free tier eligible).
   - For heavier workloads, pick larger instance types.

- Configure Instance Details
   - Number of instances.
   - Network (VPC and subnet).
   - Assign a public IP if you want remote access.
   - IAM role (optional, for permissions).

- Add Storage
   - Default is 30 GB (can increase).
   - Choose SSD (gp3) or HDD depending on needs.
   
- Configure Security Group
   - Create or select a security group.
   - Add inbound rules:
   - RDP (TCP 3389) → allow from your IP for remote desktop access.
   - Other ports as needed (e.g., HTTP/HTTPS).

- Review and Launch
   - Click Launch.
   - Select or create a Key Pair (needed to decrypt the Windows admin password).
   - Download the key pair (.pem file) and keep it safe.
   - Connected to the Instance
   - Waited until the instance state is running.

- Select the instance → Connect → RDP Client.
   - Use the key pair to decrypt the Administrator password.

- Open the RDP file in Windows Remote Desktop, enter the decrypted password, and connect.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 06 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
####################################################################################################################### ##

### AWS Task-2 (VPC)
- https://docs.google.com/document/d/1WWaXO7v_Cv3ydJfKp4cQmGwEKeckJL71Vx-9HKOnsY0/edit?usp=sharing

#### Techstacks needs to be used: 
- AWS VPC
- AWS EC2

#### How do I submit my work?
- Push all your work files to GitHub (O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions?
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Task Description:

#### 1_Q. Set up a VPC with an Internet gateway, create a public subnet with 256 IP addresses, a private subnet with 256 IP addresses, make a route table connecting the Internet gateway and the subnets, and launch a Linux EC2 instance by using the above VPC and public subnet.


#### Task 06_Answer_01:
#### Accessed AWS CLI services from my local laptop environment, completed the assigned tasks, and successfully committed and pushed the changes to the GitHub repository.”
#### To complete the assigned task, the following points were observed and performed accordingly.
- Step 1: Create an VPC
   - aws ec2 create-vpc --cidr-block 10.0.0.0/16 --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=MyVPC}]"
   
- Step 2: Create an Internet Gateway
   - aws ec2 create-internet-gateway --tag-specifications "ResourceType=internet-gateway,Tags=[{Key=Name,Value=MyIGW}]"
 - Attached VPC with IGW
   - aws ec2 attach-internet-gateway --vpc-id "vpc-08ff44161ceef31a7" --internet-gateway-id "igw-04f8276460a21401d"

- Step 3: Create Public and Private Subnets
 - Public Subnet:
   - aws ec2 create-subnet --vpc-id "vpc-08ff44161ceef31a7" --cidr-block 10.0.1.0/24 --availability-zone us-east-1a --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=PublicSubnet}]"

 - Private Subnet:
   - aws ec2 create-subnet --vpc-id "vpc-08ff44161ceef31a7" --cidr-block 10.0.2.0/24 --availability-zone us-east-1a --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=PrivateSubnet}]"

- Step 4: Create Route Table (PublicRouteTable)
   - aws ec2 create-route-table --vpc-id "vpc-08ff44161ceef31a7" --tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=PublicRouteTable}]"

 - Add a route to the Internet Gateway:
   - aws ec2 create-route --route-table-id "rtb-0871b8ccf836002d6" --destination-cidr-block 0.0.0.0/0 --gateway-id "igw-04f8276460a21401d"

 - Associate the route table with the public subnet:
   - aws ec2 associate-route-table --subnet-id "subnet-0d5166d4595032431" --route-table-id "rtb-0871b8ccf836002d6"

 - aws ec2 create-key-pair --key-name MyKey --query "KeyMaterial" --output text > MyKey.pem
   - aws ec2 run-instances --image-id "ami-0ec10929233384c7f" --count 1 --instance-type t2.micro --key-name MyKey --security-group-ids "sg-027a935ea88657816" --subnet-id "subnet-0d5166d4595032431" --associate-public-ip-address --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=LinuxInstance}]"

#### To verify the the newly created Linux instance form my laptop
   - C:\Users\Md Rustam>ssh -i MyKey.pem ubuntu@54.161.28.195
   - The authenticity of host '54.161.28.195 (54.161.28.195)' can't be established. ED25519 key fingerprint is SHA256:V1ytXQd1c889XKpd5ut89jpUSk3p90VbxEba8JMQZyw.
   - This key is not known by any other names.
   - Are you sure you want to continue connecting (yes/no/[fingerprint])? yes Warning: Permanently added 54.161.28.195' (ED25519) to the list of known hosts.
   - Welcome to Ubuntu 24.04.4 LTS (GNU/Linux 6.17.0-1007-aws x86_64)

   - * Documentation:	https://help.ubuntu.com
   - Management:		https://landscape.canonical.com
   - Support:			https://ubuntu.com/pro

   - System information as of Sun Apr 26 10:54:00 UTC 2026
   - System load:	0.12				Processes:				107
   - Usage of /:	26.3% of 6.71GB		Users logged in:		0
   - Memory usage:	21%					IPv4 address for enxe:	10.0.1.116	
   - wap usage:	0%

 - ubuntu@ip-10-0-1-110:~$ cat /etc/release
   - DISTRIB_ID=Ubuntu
   - DISTRIB_RELEASE=24.04
   - DISTRIB_CODENAME=noble
   - DISTRIB_DESCRIPTION="Ubuntu 24.04.4 LTS"
   - PRETTY_NAME="Ubuntu 24.04.4 LTS"
   - NAME="Ubuntu"
   - VERSION_ID="24.04"
   - VERSION="24.04.4 LTS (Noble Numbat)"
   - VERSION_CODENAME=noble
   - ID=ubuntu
   - ID_LIKE=debian
   - HOME_URL="https://www.ubuntu.com/"
   - SUPPORT_URL="https://help.ubuntu.com/"
   - BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
   - PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
   - UBUNTU_CODENAME=noble
   - LOGO-ubuntu-logo
 - ubuntu@ip-10-0-1-110:~$ curl ifconfig.me
   - 54.161.28.195

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 07 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### AWS Task-3
- https://docs.google.com/document/d/1C8K3ZWj8rMeEQotAXi9cjvWqGbXjIo3_6-hSYbyy-Rc/edit?usp=sharing

#### Techstacks needs to be used: 
   - AWS S3
   - AWS EC2
   - AWS LoadBalancer

#### How do I submit my work?
   - Push all your work files to GitHub (O/P screenshot images must).
   - Submit your URLs in the portal.

#### Terms and Conditions?
   - You agree to not share this confidential document with anyone. 
   - You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
   - We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

   - NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

#### Task Description:

### 01_Q. Create a S3 bucket, with no public access and upload files to the bucket & view the logs using cloudwatch for the uploaded files.

### 02_Q. Launch two ec2-instances and connect it to a application load balancer, where the output traffic from the server must be an load balancer IP address


#### Accessed AWS CLI services from my local laptop environment, completed the assigned tasks, and successfully committed and pushed the changes to the GitHub repository.”
#### To complete the assigned task, the following points were observed and performed accordingly.

### Task 07_Answer_01:
- Step 1: Create an S3 Bucket (No Public Access)
   - aws s3api create-bucket --bucket my-private-bucket-123 --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1

 - Block all public access:
   - aws s3api put-public-access-block --bucket my-private-bucket-123 --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true

- Step 2: Upload Files to the Bucket: 
 - Upload a single file:
   - aws s3 cp "C:\Users\Md Rustam\Documents\example.txt" s3://my-private-bucket-123/

 - Upload a folder recursively:
   - aws s3 cp "C:\Users\Md Rustam\Documents" s3://my-private-bucket-123/ --recursive

- Step 3: Enable Logging for S3 Bucket
 - Create a separate log bucket:
   - aws s3api create-bucket --bucket my-log-bucket-123 --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1

 - Enable logging on your data bucket:
   - aws s3api put-bucket-logging --bucket my-private-bucket-123 --bucket-logging-status "{\"LoggingEnabled\":{\"TargetBucket\":\"my-log-bucket-123\",\"TargetPrefix\":\"logs/\"}}"

- Step 4: Send Upload Events to CloudWatch
 - Create a CloudTrail trail to capture S3 events:
   - aws cloudtrail create-trail --name S3UploadTrail --s3-bucket-name my-log-bucket-123

 - Start logging:
   - aws cloudtrail start-logging --name S3UploadTrail

 - Create a CloudWatch log group:
   - aws logs create-log-group --log-group-name S3UploadLogs

 - Link CloudTrail to CloudWatch (replace ACCOUNT_ID with your AWS account ID):
   - aws cloudtrail update-trail --name S3UploadTrail --cloud-watch-logs-log-group-arn arn:aws:logs:ap-south-1:ACCOUNT_ID:log-group:S3UploadLogs --cloud-watch-logs-role-arn arn:aws:iam::ACCOUNT_ID:role/CloudTrailRole

- Step 5: View Upload Logs in CloudWatch
   - aws logs filter-log-events --log-group-name S3UploadLogs --filter-pattern "{ $.eventName = PutObject }"

#### Task 07_Answer_02:
   
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 08 Task-4 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### AWS Task-4
https://docs.google.com/document/d/11a2HCpdG2K088lnPoAU43q6jtLn0Pvc52EX3y8LLTsA/edit?usp=sharing

#### Techstacks needs to be used : 
   - AWS EBS
   - AWS EC2

#### How do I submit my work?
   - Push all your work files to GitHub (O/P screenshot images must).
   - Submit your URLs in the portal.

#### Terms and Conditions?
   - You agree to not share this confidential document with anyone. 
   - You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
   - We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

   - NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

#### Task Description:
- 01_Q. Launch an EC2 instance (Linux and Windows) along with a web server. Then, create an EBS volume of 5 GB, attach it to an EC2 machine (Linux and Windows), and take a snapshot. Finally, create an EBS volume using the taken snapshot.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 08 Task-4 Activity_01 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### The following points were observed before carrying out the activity to complete the assigned task.
- Verify the accessibility and configuration of the AWS CLI on the source system from which intend to access AWS console services.
  - 1. Availability-Zone(AZ): us-east-1, 
  - 2. Default PVC: ,
  - 3. Subnets of Default PVC: ,
  - 4. Security-Group(sg): MySG, 
  - 5. Key_Pair: MyKey, 
  - 6. Image-Id: Linux "ami-091138d0f0d41ff90" & Windows "ami-0798c9ebaf695e14e"
  - 7. Launch EC2 2 Instances: Instance (Linux and Windows).
  - 8. Install web packages on both instances (Linux and Windows).
  - 9. Create 5Gb EBS volume, and attached them with both instances
  - 10. Take a snapshot and make EBS volume using the snapshot.

- Step-01. Every AWS region has a already created default VPC. Verify it:  
   - aws ec2 describe-vpcs --filters Name=isDefault,Values=true
   
- Step 2: Each Availability Zone having subnets with the Default VPCs.
   - aws ec2 describe-subnets --filters Name=vpc-id,Values=vpc-0abc12345def67890

- Step 3: Create a Security Group
   - aws ec2 create-security-group --group-name MyDefaultSG --description "Allow SSH and HTTP" --vpc-id vpc-0abc12345def67890

   - aws ec2 authorize-security-group-ingress --group-id sg-0abc12345def67890 --protocol tcp --port 22 --cidr 0.0.0.0/0
   - aws ec2 authorize-security-group-ingress --group-id sg-0abc12345def67890 --protocol tcp --port 80 --cidr 0.0.0.0/0

- Step 4: Create a new key pair with a new name to access the instance operarting system.
   - aws ec2 create-key-pair --key-name MyKey2 --query "KeyMaterial" --output text > MyKey.pem 
   
- Step 5: Install Web Service on both the instances Linux (Amazon Linux 2) and Windows (Server 2025)
  - access the instance with associated key pair of the both systems.
   - ssh -i "C:\Users\Md\MyKey.pem" ec2-user@<Linux-Public-IP>
   - sudo yum update -y; sudo yum install -y httpd
   - sudo systemctl enable --now httpd

- Step 6: Create EBS Volume (5 GB) on both instances.
   - aws ec2 create-volume --availability-zone ap-south-1a --size 5 --volume-type gp2 --tag-specifications "ResourceType=volume,Tags=[{Key=Name,Value=MyDataVolume}]"
   
- Step 7: Attach EBS Volume to the both EC2 instances 
 - Linux EC2
   - aws ec2 attach-volume --volume-id vol-xxxxxxxx --instance-id i-xxxxxxxx --device /dev/sdf

 - Windows EC2
   - aws ec2 attach-volume --volume-id vol-xxxxxxxx --instance-id i-yyyyyyyy --device xvdf

- Step 8: Take Snapshot of the Volume
   - aws ec2 create-snapshot --volume-id vol-xxxxxxxx --description "Snapshot of MyDataVolume"
   
- Step 9: Create New EBS Volume from Snapshot
   - aws ec2 create-volume --availability-zone ap-south-1a --snapshot-id snap-xxxxxxxx --volume-type gp2 --tag-specifications "ResourceType=volume,Tags=[{Key=Name,Value=RestoredVolume}]"

#### Post completed the assigned tasks, committed successfully and pushed the changes to the GitHub repository.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assigned Task 07 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
