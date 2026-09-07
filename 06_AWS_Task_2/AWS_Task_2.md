
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

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#### Task Description:

#### 1_Q. Set up a VPC with an Internet gateway, create a public subnet with 256 IP addresses, a private subnet with 256 IP addresses, make a route table connecting the Internet gateway and the subnets, and launch a Linux EC2 instance by using the above VPC and public subnet.


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

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&