# Terraform Azure Demo

This demo deploys a simple Azure environment using Terraform.  
It includes:
- 1 Resource Group  
- 1 Virtual Network  
- 1 Subnet  
- 1 Public IP  
- 1 Network Interface  
- 1 Ubuntu Linux VM  

Perfect for demos, labs, or showing your boss something “cloudy.”

---

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.6 or newer  
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed and logged in  
- An active Azure subscription  
- An SSH key pair (Terraform uses your `~/.ssh/id_rsa.pub` by default):
```bash
ssh-keygen -t rsa -b 4096
```

---

## Authenticate to Azure

Login to Azure and set the subscription you want to use:

```bash
az login
az account set --subscription "<subscription-id>"
```

---

### Run it

```bash
terraform init
terraform apply -auto-approve
```

---

## Test the Web Server

After `terraform apply` finishes:

```bash
Start-Process "http://$(terraform output -raw public_name)"
```

---

## Clean it up

After your demo, clean up your mess:

```bash
terraform destroy -auto-approve
```