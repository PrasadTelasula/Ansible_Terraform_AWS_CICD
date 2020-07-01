# Ansible servers provisioning with Terraform

![Alt text](https://github.com/PrasadTelasula/Ansible/blob/master/arch_diag/arch_diag.png?raw=true "Architecture")

# Clone this repository

````
git clone https://github.com/PrasadTelasula/Ansible.git
````


# Generate SSH Keys.

````
mkdir -p /home/centos/keys
````
````
cd /home/centos/keys
````

| Node Name | Command                    |
| ------------- | ------------------------------ |
| `ACS`      | ssh-keygen -t rsa -m PEM -f acsLaunchKey      |
| `CentosNode`   | ssh-keygen -t rsa -m PEM -f centosLaunchKey     |
| `UbuntNode`   | ssh-keygen -t rsa -m PEM -f ubuntuLaunchKey     |
| `WindowsNode`   | ssh-keygen -t rsa -m PEM -f windowsLaunchKey    |


# To Convert Openssh key to RSA Key
````
ssh-keygen -p -m PEM -f windowsLaunchKey
````

# Export AWS accesskey and secretkey

> Create an **IAM** user with **Programtic Access** and attach **EC2FullAdmin** policy.

````
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXX
````
````
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXX
````


# Terraform

````
terraform init
````
````
terraform validate
````
````
terraform plan -out tfplan
````

````
terraform apply "tfplan"
````


# Get the Private IP's of CentosNode, UbuntuNode & WinodwsNode and update in host_vars folder
> Linux example 

````
---
ansible_ssh_host: 192.168.1.1
````

> windows example

````
---
ansible_host: 192.168.1.2
````

# Get the windows server password and update in below file.
> host_vars/node3
````
ansible_password: XXXXXXXX
````

# Test the connectivity using nc 
> Linux example

````
nc -zv 192.168.1.1 22
````
> windows example

````
nc -zv 192.168.1.2 5985
````



# Finally ping the servers using ansible
> Linux example

````
ansible centos -m ping
````
> windows example

````
ansible windows -m win_ping
````

# To Destroy infra
````
terraform destroy
````
