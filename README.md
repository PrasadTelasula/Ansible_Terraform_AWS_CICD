# Ansible servers provisioning with Terraform

![Alt text](https://github.com/PrasadTelasula/Ansible/blob/master/arch_diag/arch_diag.png?raw=true "Architecture")

# Clone this repository

````
git clone https://github.com/PrasadTelasula/Ansible_Terraform_AWS_CICD.git
````


# Generate SSH Keys.

````
mkdir -p keys
````
````
cd keys
````

| Node Name | Command                    |
| ------------- | ------------------------------ |
| `ACS`      | ssh-keygen -t rsa -m PEM -f keys/acsLaunchKey -q -N ""      |
| `CentosNode`   | ssh-keygen -t rsa -m PEM -f keys/centosLaunchKey -q -N ""     |
| `UbuntNode`   | ssh-keygen -t rsa -m PEM -f keys/ubuntuLaunchKey -q -N ""     |
| `WindowsNode`   | ssh-keygen -t rsa -m PEM -f keys/windowsLaunchKey -q -N ""    |


# CICD 
````
1. Create an IAM user with programatic access
````
````
2. Confgire AWS CLI locally
   # aws configure
````
````
3. Create S3 Buckets
   # aws s3api create-bucket --bucket terraform-cicd-artifacts --region ap-south-1
   # aws s3api create-bucket --bucket terraform-cicd-state-file --region ap-south-1
   # aws s3api create-bucket --bucket terraform-cicd-state-file --region ap-south-1
````
