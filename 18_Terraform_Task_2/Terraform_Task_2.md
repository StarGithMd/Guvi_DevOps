
#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 18 Task -2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### Terraform_Task -2
https://docs.google.com/document/d/1rNQWkSvWAdo5TKPvqjZUT__qidven4yjQzX4QKwMX6s/edit?usp=sharing

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
   - 01_Q. Create 2 EC2 instances on 2 different regions and install nginx using terraform script.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Activity GUVI Assignment 18 Task -2  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To setting it up jenkins on ubuntu, create projects and manage users is a core skill for DevOps. Let’s walk through the essentials step by step. Afterward, push the project files to a GitHub repository.


# Multi-Region EC2 + Nginx (Terraform)

Deploys one EC2 instance in each of two AWS regions (defaults: `us-east-1` and `ap-south-1`), each running Ubuntu 22.04 with Nginx installed and started automatically via `user_data`.

Assigned project to create two EC2 instances in two different regions (us-east-1 and us-west-2) and install nginx on both using user_data. 
First of all, Install Terraform on Ubuntu 26.04 local system.
1. Update system packages
sudo apt update && sudo apt upgrade -y

2. Install prerequisites
sudo apt install -y wget unzip gnupg software-properties-common

3. Add HashiCorp GPG key
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

4. Add HashiCorp repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

5. Install Terraform
sudo apt update
sudo apt install -y terraform

6. Verify installation
$ terraform -version
Terraform v1.16.2
on linux_amd64
+ provider registry.terraform.io/hashicorp/aws v5.100.0

$ terraform init
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/aws v5.100.0...
- Installed hashicorp/aws v5.100.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

$ sudo apt install awscli
[sudo: authenticate] Password:
Installing:
  awscli

Installing dependencies:
  docutils-common  python3-awscrt    python3-docutils  python3-pil             python3-ruamel.yaml
  libimagequant0   python3-colorama  python3-jmespath  python3-prompt-toolkit  python3-ruamel.yaml.clib
  libraqm0         python3-dateutil  python3-olefile   python3-roman-numerals  python3-wcwidth

Suggested packages:
  docutils-doc          | ttf-linux-libertine  texlive-latex-base         python-pil-doc
  fonts-linuxlibertine  texlive-lang-french    texlive-latex-recommended

Summary:
  Upgrading: 0, Installing: 16, Removing: 0, Not Upgrading: 4
  Download size: 14.1 MB
  Space needed: 143 MB / 1024 GB available

Continue? [Y/n] y

$ aws configure list
NAME       : VALUE                    : TYPE             : LOCATION
profile    : <not set>                : None             : None
access_key : ****************M7EX     : shared-credentials-file :
secret_key : ****************jwgh     : shared-credentials-file :
region     : <not set>                : None             : None


us-east-1 and us-west-2), both running amazone linux 2023 with Nginx auto-installed via terraform
md_rustam@DESKTOP-CPK0PUB:~/Project$ mkdir 18_Terraform_Task_2
md_rustam@DESKTOP-CPK0PUB:~/Project$ cd  18_Terraform_Task_2
md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ cat main.tf
# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "useast"
}

provider "aws" {
  region = "us-west-2"
  alias  = "uswest"
}

# EC2 in us-east-1
resource "aws_instance" "east_nginx" {
  provider      = aws.useast
  ami           = "ami-081b0a6eac00b4f53" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"
  key_name      = "key_pair_090926"       # must exist in us-east-1

  # Attach default security group
  vpc_security_group_ids = ["default"]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-east"
  }
}

# EC2 in us-west-2
resource "aws_instance" "west_nginx" {
  provider      = aws.uswest
  ami           = "ami-0bea529386a62a2ad" # Amazon Linux 2 AMI in us-west-2
  instance_type = "t2.micro"
  key_name      = "key_pair_090926"       # must exist in us-west-2

  # Attach default security group
  vpc_security_group_ids = ["default"]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-west"
  }
}

$ cat outputs.tf
# outputs.tf

output "east_public_ip" {
  value = aws_instance.east_nginx.public_ip
}

output "west_public_ip" {
  value = aws_instance.west_nginx.public_ip
}

Validate again  
After initialization succeeds:
$ terraform validate
Success! The configuration is valid.

$ terraform plan

$ terraform apply -auto-approve
aws_instance.west_nginx: Refreshing state... [id=i-02d75c6d827cc34a3]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply" which may have affected this
plan:

  # aws_instance.west_nginx has been deleted
  - resource "aws_instance" "west_nginx" {
        id                                   = "i-02d75c6d827cc34a3"
      - public_ip                            = "44.251.125.216" -> null
        tags                                 = {
            "Name" = "nginx-west"
        }
        # (39 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + east_public_ip = (known after apply)
  ~ west_public_ip = "44.251.125.216" -> (known after apply)
aws_instance.east_nginx: Creating...
aws_instance.west_nginx: Creating...
aws_instance.east_nginx: Still creating... [00m10s elapsed]
aws_instance.west_nginx: Still creating... [00m10s elapsed]
aws_instance.east_nginx: Creation complete after 18s [id=i-0aa9d881464186a81]
aws_instance.west_nginx: Creation complete after 19s [id=i-0bf4f346593f0978a]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

east_public_ip = "44.211.126.132"
west_public_ip = "52.13.86.135"

$ ssh -i "key_pair_e.pem" ec2-user@ec2-44-211-126-132.compute-1.amazonaws.com
The authenticity of host 'ec2-44-211-126-132.compute-1.amazonaws.com (44.211.126.132)' can't be established.
ED25519 key fingerprint is: SHA256:kQ+eafObxWkDr3C2Afp1ONAcvLrdbmiszrgSwlFWwCg
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ec2-44-211-126-132.compute-1.amazonaws.com' (ED25519) to the list of known hosts.
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
	   

[ec2-user@ip-172-31-92-109 ~]$ systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Wed 2026-09-09 17:37:23 UTC; 3s ago
    Process: 26531 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 26535 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 26548 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 26563 (nginx)
      Tasks: 2 (limit: 1113)
	  
$ curl http://44.211.126.132
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>

$ ssh -i "key_pair_w.pem" ec2-user@ec2-52-13-86-135.us-west-2.compute.amazonaws.com

^C
md_rustam@DESKTOP-CPK0PUB:~/Terraform$ ssh -i "key_pair_w.pem" ec2-user@ec2-52-13-86-135.us-west-2.compute.amazonaws.com
The authenticity of host 'ec2-52-13-86-135.us-west-2.compute.amazonaws.com (52.13.86.135)' can't be established.
ED25519 key fingerprint is: SHA256:cUzOgtHBNBxN2na0cakZBsTR6clYU+LdOEhOR9pfqPw
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ec2-52-13-86-135.us-west-2.compute.amazonaws.com' (ED25519) to the list of known hosts.
** WARNING: connection is not using a post-quantum key exchange algorithm.
** This session may be vulnerable to "store now, decrypt later" attacks.
** The server may need to be upgraded. See https://openssh.com/pq.html
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
	   
# systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Wed 2026-09-09 17:42:32 UTC; 3s ago
    Process: 21242 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 21256 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 21295 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 21319 (nginx)
      Tasks: 2 (limit: 1113)
	  
curl http://52.13.86.135
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>


md_rustam@DESKTOP-CPK0PUB:~/Project$ git add .; git commit -m "18_Terraform_Task_2"; git push origin main
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 875 bytes | 291.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/StarGithMd/Guvi_DevOps.git
   834eb4f..421d9fa  main -> main







