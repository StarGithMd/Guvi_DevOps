### Scripting Task (Automation using Bash Scripts)
- https://docs.google.com/document/d/1D9Q2jU2RGmpI2wp8vkrmRfOiGtNf0FQxyYeJ3IZShl4/edit


#### Techstacks needs to be used: 
- Shell (AWS, Gitbash, WSL, Vbox)

#### How do I submit my work?
- Push all your work files to GitHub (Code & O/P screenshot images must).
- Submit your URLs in the portal.

#### Terms and Conditions?
- You agree to not share this confidential document with anyone. 
- You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
- We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

- NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.


#### Task Description:
#### 01_Q. Create a shell script to print the HTTP error code of guvi.in & print, the success/failure message based on the error code response

#### 02_Q. Given a file, replace all occurrence of the word "give" with "learning" from 5th line till the end in only those lines that contain the word "welcome"

**********************************************************************************************************************************************


#### Opened bash shell on my laptop and perfomed assigned task on it and pushed it on GitHub repository.
#### To complete the task activity, observed the following points and perform the suggested steps.
#### Print HTTP error code of guvi.in and show success/failure message

#### chmod u+ x guvi_script_HTTP_error_code.sh; cat guvi_script_HTTP_error_code.sh
- [A] Create bash script file unter the path: 
  - cat script-1.sh 
- #!/bin/bash
- # Fetch HTTP status code
- status_code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)

- echo "HTTP Status Code: $status_code"

- # Check success/failure
- if [ "$status_code" -eq 200 ]; then
  - echo "Success: The site is reachable."
- else
  - echo "Failure: The site returned an error."
- fi

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ sh guvi_script_HTTP_error_code.sh
  - HTTP Status Code: 200
  - Success: The site is reachable.



#### Replace give with learning from 5th line onward, but only in lines containing welcome

#### echo "welcome give" > input.txt
#### echo "this is a test" >> input.txt
#### echo "welcome give again" >> input.txt

#### chmod u+x guvi_welcome_script.sh; cat guvi_welcome_script.sh
- #!/bin/bash

# Input file
- file="input.txt"

# Use sed to replace from line 5 onwards
- sed '5,${
   - /welcome/ s/give/learning/g
- }' "$file" > output.txt

- echo "Replacement done. Check output.txt"

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ sh guvi_script_HTTP_error_code.sh
  - HTTP Status Code: 200
  - Success: The site is reachable.

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ ls -l
  - total 8
  - -rwxr--r-- 1 md_rustam md_rustam 363 Apr 21 20:12 guvi_script_HTTP_error_code.sh
  - -rwxr--r-- 1 md_rustam md_rustam 190 Apr 21 20:17 guvi_welcome_script.sh

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ echo "welcome give" > input.txt
- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ echo "this is a test" >> input.txt
- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ echo "welcome give again" >> input.txt

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ ls -l
  - total 12
  - -rwxr--r-- 1 md_rustam md_rustam 363 Apr 21 20:12 guvi_script_HTTP_error_code.sh
  - -rwxr--r-- 1 md_rustam md_rustam 190 Apr 21 20:17 guvi_welcome_script.sh
  - -rw-r--r-- 1 md_rustam md_rustam  47 Apr 21 20:37 input.txt

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ sh guvi_welcome_script.sh
  - Replacement done. Check output.txt

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ ls -l
  - total 16
  - -rwxr--r-- 1 md_rustam md_rustam 363 Apr 21 20:12 guvi_script_HTTP_error_code.sh
  - -rwxr--r-- 1 md_rustam md_rustam 190 Apr 21 20:17 guvi_welcome_script.sh
  - -rw-r--r-- 1 md_rustam md_rustam  47 Apr 21 20:37 input.txt
  - -rw-r--r-- 1 md_rustam md_rustam  47 Apr 21 20:41 output.txt

- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ cat output.txt
  - welcome give
  - this is a test
  - welcome give again
  
- md_rustam@DESKTOP-CPK0PUB:~/Prectice_Lab$ cat input.txt
  - welcome give
  - this is a test
  - welcome give again
