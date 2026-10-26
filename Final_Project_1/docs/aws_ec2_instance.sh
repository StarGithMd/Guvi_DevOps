#!/usr/bin/env bash
set -e

KEY_NAME="keypair"
MY_IP="$(curl -s https://checkip.amazonaws.com)/32"

echo "1. Authorizing SSH ($MY_IP) on Default Security Group..."
SG_ID=$(aws ec2 describe-security-groups \
    --filters "Name=group-name,Values=default" \
    --query "SecurityGroups[0].GroupId" --output text)

# Ignore error if rule already exists from a previous run
aws ec2 authorize-security-group-ingress \
    --group-id "$SG_ID" --protocol tcp --port 22 --cidr "$MY_IP" 2>/dev/null || true

echo "2. Setting up SSH Key ($KEY_NAME.pem)..."
if [ ! -f "${KEY_NAME}.pem" ]; then
    aws ec2 create-key-pair --key-name "$KEY_NAME" \
        --query "KeyMaterial" --output text > "${KEY_NAME}.pem"
    chmod 400 "${KEY_NAME}.pem"
fi

echo "3. Launching Ubuntu 26.04 EC2 Instance..."
INSTANCE_ID=$(aws ec2 run-instances \
    --image-id resolve:ssm:/aws/service/canonical/ubuntu/server/26.04/stable/current/amd64/hvm/ebs-gp3/ami-id \
    --instance-type t3.micro \
    --key-name "$KEY_NAME" \
    --security-group-ids "$SG_ID" \
    --query "Instances[0].InstanceId" --output text)

echo "4. Waiting for instance ($INSTANCE_ID) to start..."
aws ec2 wait instance-running --instance-ids "$INSTANCE_ID"

PUBLIC_IP=$(aws ec2 describe-instances --instance-ids "$INSTANCE_ID" \
    --query "Reservations[0].Instances[0].PublicIpAddress" --output text)

echo "5. Waiting for SSH on $PUBLIC_IP..."
until ssh -i "${KEY_NAME}.pem" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=5 "ubuntu@${PUBLIC_IP}" exit 2>/dev/null; do
    sleep 3
done

echo "Connected! (To reconnect later: ssh -i ${KEY_NAME}.pem ubuntu@${PUBLIC_IP})"
ssh -i "${KEY_NAME}.pem" "ubuntu@${PUBLIC_IP}"
