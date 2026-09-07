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
