
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

provider "aws" {
  region = "us-east-1"
  alias  = "use1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "usw2"
}

# EC2 in us-east-1
resource "aws_instance" "east_instance" {
  provider      = aws.use1
  ami           = "ami-081b0a6eac00b4f53" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"
  key_name      = "east-key" # replace with your existing key pair name in us-east-1

  # Default security group attaches automatically

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
resource "aws_instance" "west_instance" {
  provider      = aws.usw2
  ami           = "ami-0bea529386a62a2ad" # Amazon Linux 2 AMI in us-west-2
  instance_type = "t2.micro"
  key_name      = "west-key" # replace with your existing key pair name in us-west-2

  # Default security group attaches automatically

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

output "east_instance_public_ip" {
  value = aws_instance.east_instance.public_ip
}

output "west_instance_public_ip" {
  value = aws_instance.west_instance.public_ip
}



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







