
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

## Files
- `providers.tf` – Terraform + two aliased AWS providers (one per region)
- `variables.tf` – Configurable inputs (regions, instance type, key pair, SSH CIDR)
- `main.tf` – AMI lookups, security groups, and EC2 instances for both regions
- `user_data.sh` – Bootstrap script that installs and starts Nginx
- `outputs.tf` – Public IPs / instance IDs after apply

## Prerequisites
- Terraform >= 1.3.0
- AWS credentials configured (env vars, `~/.aws/credentials`, or SSO) with permission to create EC2 instances, security groups, and describe AMIs in both regions
- (Optional) An existing EC2 key pair in **each** region if you want SSH access

## Usage

```bash
terraform init
terraform plan
terraform apply
```

To customize regions, instance type, or SSH access, either edit `variables.tf` defaults or pass flags:

```bash
terraform apply \
  -var="region1=us-west-2" \
  -var="region2=eu-west-1" \
  -var="key_name=my-keypair" \
  -var="allowed_ssh_cidr=203.0.113.4/32"
```

> Note: if you set `key_name`, the same key pair name must exist in **both** regions, or specify different logic/variables per region if needed.

## Verify

After `terraform apply` finishes, grab the public IPs from the output:

```bash
terraform output
```

Then visit `http://<public_ip>` in a browser — you should see the "Nginx is running on <region>" page.

## Clean up

```bash
terraform destroy
```

## Notes
- Instances are launched into the **default VPC** of each region using its default subnet (no `subnet_id`/`vpc_id` specified). If a region has no default VPC, add VPC/subnet resources or pass explicit `subnet_id` / `vpc_security_group_ids` referencing a custom VPC.
- The security group opens port 80 to the world and port 22 to `allowed_ssh_cidr` (defaults to open — tighten this for production use).
- Default instance type is `t3.micro`, which is eligible for the AWS Free Tier in most regions.

Create 2 EC2 instances on 2 different regions and install nginx using terraform script.
This deploys one EC2 instance in each of two regions (defaults: us-east-1 and ap-south-1), both running Ubuntu 22.04 with Nginx auto-installed via
md_rustam@DESKTOP-CPK0PUB:~/Project$ mkdir 18_Terraform_Task_2
md_rustam@DESKTOP-CPK0PUB:~/Project$ cd  18_Terraform_Task_2
md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ vi main.tf
##############################
# Region 1
##############################

data "aws_ami" "ubuntu_region1" {
  provider    = aws.region1
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_security_group" "nginx_sg_region1" {
  provider    = aws.region1
  name        = "${var.project_name}-sg-${var.region1}"
  description = "Allow HTTP and SSH"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg-${var.region1}"
  }
}

resource "aws_instance" "nginx_region1" {
  provider               = aws.region1
  ami                     = data.aws_ami.ubuntu_region1.id
  instance_type           = var.instance_type
  key_name                = var.key_name != "" ? var.key_name : null
  vpc_security_group_ids  = [aws_security_group.nginx_sg_region1.id]

  user_data = templatefile("${path.module}/user_data.sh", {
    region = var.region1
  })

  tags = {
    Name = "${var.project_name}-${var.region1}"
  }
}

##############################
# Region 2
##############################

data "aws_ami" "ubuntu_region2" {
  provider    = aws.region2
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_security_group" "nginx_sg_region2" {
  provider    = aws.region2
  name        = "${var.project_name}-sg-${var.region2}"
  description = "Allow HTTP and SSH"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg-${var.region2}"
  }
}

resource "aws_instance" "nginx_region2" {
  provider               = aws.region2
  ami                     = data.aws_ami.ubuntu_region2.id
  instance_type           = var.instance_type
  key_name                = var.key_name != "" ? var.key_name : null
  vpc_security_group_ids  = [aws_security_group.nginx_sg_region2.id]

  user_data = templatefile("${path.module}/user_data.sh", {
    region = var.region2
  })

  tags = {
    Name = "${var.project_name}-${var.region2}"
  }
}

md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ vi providers.tf
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Default/primary region provider
provider "aws" {
  alias  = "region1"
  region = var.region1
}

# Secondary region provider
provider "aws" {
  alias  = "region2"
  region = var.region2
}
md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ vi variables.tf
variable "region1" {
  description = "First AWS region"
  type        = string
  default     = "us-east-1"
}

variable "region2" {
  description = "Second AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair to enable SSH access (leave blank to skip SSH key assignment)"
  type        = string
  default     = ""
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instances"
  type        = string
  default     = "0.0.0.0/0"
}

variable "project_name" {
  description = "Name prefix used to tag resources"
  type        = string
  default     = "nginx-multiregion"
} variable "region1" {
  description = "First AWS region"
  type        = string
  default     = "us-east-1"
}

variable "region2" {
  description = "Second AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair to enable SSH access (leave blank to skip SSH key assignment)"
  type        = string
  default     = ""
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instances"
  type        = string
  default     = "0.0.0.0/0"
}

variable "project_name" {
  description = "Name prefix used to tag resources"
  type        = string
  default     = "nginx-multiregion"
}

md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ vi outputs.tf
output "region1_instance_public_ip" {
  description = "Public IP of the EC2 instance in region 1"
  value       = aws_instance.nginx_region1.public_ip
}

output "region1_instance_id" {
  description = "Instance ID in region 1"
  value       = aws_instance.nginx_region1.id
}

output "region2_instance_public_ip" {
  description = "Public IP of the EC2 instance in region 2"
  value       = aws_instance.nginx_region2.public_ip
}

output "region2_instance_id" {
  description = "Instance ID in region 2"
  value       = aws_instance.nginx_region2.id
}

md_rustam@DESKTOP-CPK0PUB:~/Project/18_Terraform_Task_2$ vi user_data.sh
#!/bin/bash
set -e
apt-get update -y
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

# Simple identifying page so you can tell the two instances apart
cat <<'EOF' > /var/www/html/index.nginx-debian.html
<html>
  <head><title>Nginx on $${region}</title></head>
  <body>
    <h1>Nginx is running on $${region}</h1>
  </body>
</html>
EOF









