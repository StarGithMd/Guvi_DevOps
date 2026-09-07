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

#### Task Description:
#### 01_Q. Get me the IP address of a particular domain (guvi.in). How do I find my CPU/memory usage of my server?. Test the connectivity between 2 nodes?

#### 02_Q. I have deployed an application in guvi.com:9000, and logs show my app is running, but I’m unable to view the page. Check whether my port is open or not ?


*******************************************************************************************************************************

#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
  
- Get IP address of a domain: 
  - Using dig
     - dig +short guvi.in

  - using nslookup
     - nslookup guvi.in

  - using host
     - host guvi.in 

- Check CPU and memory usage of your server
  - CPU usage
     - top        # interactive view
     - uptime     # quick load average

- Memory usage
    - free -h    # human-readable memory usage
    - vmstat     # detailed memory stats

- echo "CPU: $(top -bn1 | grep 'Cpu(s)')"
- echo "Memory: $(free -h)"

- Test connectivity between two nodes
  - Ping test
    - ping -c 4 <hostname_or_IP>

  - Check route
    - traceroute <hostname_or_IP>

  - Check port connectivity
    - telnet <hostname_or_IP> <port>
    - nc -zv <hostname_or_IP> <port>

- Check if port is open
  - Using netcat
    - nc -zv guvi.com 9000

  - Using telnet
    - telnet guvi.com 9000

- Using nmap (scan specific port)
    - nmap -p 9000 guvi.com

- Verify that the service is listening:
  - sudo lsof -i:9000
  - sudo netstat -tulnp | grep 9000
  
***************************************************************************************************************
- md_rustam@DESKTOP-CPK0PUB:~/Guvi_DevOps$ git add .; git commit -m "04_Network_Task"; git push origin main
  - [main 47fde69] 04_Network_Task
  - 1 file changed, 73 insertions(+)
  - create mode 100644 04_Network_Task/Network_Task.md
  - Enumerating objects: 5, done.
  - Counting objects: 100% (5/5), done.
  - Delta compression using up to 8 threads
  - Compressing objects: 100% (3/3), done.
  - Writing objects: 100% (4/4), 1.50 KiB | 1.50 MiB/s, done.
  - Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
  - remote: Resolving deltas: 100% (1/1), completed with 1 local object.
  - To https://github.com/StarGithMd/Guvi_Class.git
     - 5c10dd9..47fde69  main -> main

- md_rustam@DESKTOP-CPK0PUB:~/Guvi_DevOps$ git status
  - On branch main
  - nothing to commit, working tree clean
