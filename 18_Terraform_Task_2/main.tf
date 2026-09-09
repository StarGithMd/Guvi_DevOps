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

