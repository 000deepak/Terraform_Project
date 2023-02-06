## Create EC2
1.select ubuntu t2.medium & create ec2
2.take access in gitbash using ssh
3.sudo -i


## Install Java
```ubuntu
sudo apt update
sudo apt install openjdk-11-jdk -y
```

## Add jenkin Repository
1. Start by importing the GPG key. The GPG key verifies package integrity but there is no output. Run:
```ubuntu
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc &gt; /dev/null
```

2. Add the Jenkins software repository to the source list and provide the authentication key:
```ubuntu
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list &gt; /dev/null
```

## Install Jenkins
```ubuntu
sudo apt update
sudo apt install jenkins -y
sudo systemctl status jenkins
```

1. check running status of jenkin
2. open public DNS in browser with port 8080
> If it is not opening then go to security group and edit inbound rulesmand All traffic rule.
3. Now copy the password path given on jenkins console in browser and do cat <path> in git bash
4. U will get password, copy & paste the password in console and login
5. install suggested plugins
6. Create admin user
7. Give url and start using jenkins


## Install Terraform 
1. First, install repository addition dependencies:
```ubuntu
sudo apt update
sudo apt install  software-properties-common gnupg2 curl
```

2. Now import repository GPG key
```ubuntu
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
```

3. With the key imported now add Hashicorp repository to your Ubuntu system:
```ubuntu
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
```

4.install terraform on your Ubuntu Linux system:
```ubuntu
sudo apt install terraform
terraform --version
```

## create S3 bucket
* see rules to give bucket names
>give public access, enable versionng, create bucket

## Create DynamoDB able
1. go to create tables and give name same as given in backend.tf file
2. give partion key as lockId of type string, create table

## IAM Role
> we have to give access key and secret key for terraform for creating infrastruture, Here will create role and assign to 
1. Go to roles
2. create new role
3. select AWS Services and use case EC2.
4. Permission Policies EC2 Full Access & ADMNISTRATOR ACCESS

> Assign this role to ec2
* Now go to instance -> actions -> security -> modifyIAM -> choose role we have created -> update IAM role

## Jenkin Pipelins
1. new item of type pipeline
