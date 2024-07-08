# Infrastructure Automation with Terraform and Ansible

This project demonstrates how to provision an EC2 instance on AWS using Terraform and configure it using Ansible to install Nginx and deploy a simple HTML file.


## How to Run

### Prerequisites

- Terraform
- Ansible
- AWS CLI configured with appropriate credentials
- SSH key pair for accessing the EC2 instance

### Steps

1. **Provision Infrastructure with Terraform:**

   Navigate to the `terraform` directory and run:

   ```sh
   terraform init
   terraform apply
```

Confirm the apply action when prompted.

Configure Instance with Ansible:

After provisioning the instance, navigate to the ansible directory and run:

```sh
ansible-playbook -i inventory playbook.yml
```
