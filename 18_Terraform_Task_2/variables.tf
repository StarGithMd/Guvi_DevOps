variable "aws_region_1" {
  default = "us-east-1"
}

variable "aws_region_2" {
  default = "us-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id_region1" {
  # Amazon Linux 2023 AMI for us-east-1
  default = "ami-0c55b159cbfafe1f0"
}

variable "ami_id_region2" {
  # Amazon Linux 2023 AMI for us-west-2
  default = "ami-0892d3c7ee96c0bf7"
}
