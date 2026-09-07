
### AWS Task-3
- https://docs.google.com/document/d/1C8K3ZWj8rMeEQotAXi9cjvWqGbXjIo3_6-hSYbyy-Rc/edit?usp=sharing

#### Techstacks needs to be used: 
   - AWS S3
   - AWS EC2
   - AWS LoadBalancer

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

### 01_Q. Create a S3 bucket, with no public access and upload files to the bucket & view the logs using cloudwatch for the uploaded files.

### 02_Q. Launch two ec2-instances and connect it to a application load balancer, where the output traffic from the server must be an load balancer IP address


#### Accessed AWS services via the CLI from my laptop environment to completed the assigned tasks. successfully committed and pushed the changes to the GitHub repository.

#### To complete the assigned task, the following points were observed in question number 01. 

- Step 1: Create an S3 Bucket (No Public Access)
   - aws s3api create-bucket --bucket my-private-bucket-123 --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1
   - aws s3api create-bucket --bucket my-private-bucket-123456 --region us-east-1


 - Block all public access:
   - aws s3api put-public-access-block --bucket my-private-bucket-123 --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true

- Step 2: Upload Files to the Bucket: 
 - Upload a single file:
   - aws s3 cp "C:\Users\Md Rustam\Documents\example.txt" s3://my-private-bucket-123/

 - Upload a folder recursively:
   - aws s3 cp "C:\Users\Md Rustam\Documents" s3://my-private-bucket-123/ --recursive

- Step 3: Enable Logging for S3 Bucket
 - Create a separate log bucket:
   - aws s3api create-bucket --bucket my-log-bucket-123 --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1

 - Enable logging on your data bucket:
   - aws s3api put-bucket-logging --bucket my-private-bucket-123 --bucket-logging-status "{\"LoggingEnabled\":{\"TargetBucket\":\"my-log-bucket-123\",\"TargetPrefix\":\"logs/\"}}"

- Step 4: Send Upload Events to CloudWatch
 - Create a CloudTrail trail to capture S3 events:
   - aws cloudtrail create-trail --name S3UploadTrail --s3-bucket-name my-log-bucket-123

 - Start logging:
   - aws cloudtrail start-logging --name S3UploadTrail

 - Create a CloudWatch log group:
   - aws logs create-log-group --log-group-name S3UploadLogs

 - Link CloudTrail to CloudWatch (replace ACCOUNT_ID with your AWS account ID):
   - aws cloudtrail update-trail --name S3UploadTrail --cloud-watch-logs-log-group-arn arn:aws:logs:ap-south-1:ACCOUNT_ID:log-group:S3UploadLogs --cloud-watch-logs-role-arn arn:aws:iam::ACCOUNT_ID:role/CloudTrailRole

- Step 5: View Upload Logs in CloudWatch
   - aws logs filter-log-events --log-group-name S3UploadLogs --filter-pattern "{ $.eventName = PutObject }"
   
   
#### To complete the assigned task, the following points were observed in question number 02. 

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&