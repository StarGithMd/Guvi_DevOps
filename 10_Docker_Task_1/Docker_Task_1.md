
#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 10 Task -1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### Docker Task -1
https://docs.google.com/document/d/1CnLGQKqZ3EFakP-YZPbGWGyvhJ90odeFkCK0hvbDVag/edit?usp=sharing

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
- 01_Q. Install docker on EC2 and explore the docker commands (docker images, containers, volumes, network)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 10 Task-1 Activity_0 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I'll create a comprehensive guide for installing Docker on EC2 and exploring Docker commands.

Install Docker on Amazon Linux 2 / Amazon Linux 2023 and Connect to the EC2 Instance via SSH to prepare for Docker installation.
ssh -i "your-key.pem" ec2-user@<Public-IP>

Update packages
sudo yum update -y

Install Docker
sudo yum install -y docker

Start & enable Docker service
sudo systemctl enable --now docker

Add ec2-user to docker group (no sudo needed)
sudo usermod -aG docker ec2-user
newgrp docker

Verify installation
docker --version
docker info

created an script for Install prerequisites & add Docker repo

cat docker_repo.sh
sudo apt update
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list
  
Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io

Verify Installation
Confirm Docker is installed and running.
docker run hello-world

Explore Docker Images
docker pull ubuntu:24.04
docker images

Run and control containers interactively or in background.
docker run -it ubuntu:24.04 bash
docker ps -a

Work with Volumes )Persist data across container restarts using volumes).
docker volume create myvol
docker run -d -v myvol:/data ubuntu

Explore Networking (Connect containers using custom networks).
docker network create mynet
docker run -d --name web --network mynet nginx


Images → docker pull, docker images
Containers → docker run, docker ps, docker stop
Volumes → docker volume create, docker run -v
Networks → docker network create, docker run --network