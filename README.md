# terraform_scaleway
deploy instance on scaleway with terraform

## Prerequisites
```bash
Terraform
```
### Generate secret_key and get organization_key, store them in variables.tf
```bash
https://console.scaleway.com/account/credentials
```

## Create resources
```bash
terraform init
terraform plan
terraform apply --auto-approve
```

## Enter instance
Grab IP from terraform output, remove leading/trailing spaces:
```bash
ssh -o StrictHostKeyChecking=no root@$(terraform output | cut -d "=" -f2 | awk '{$1=$1;print}')
```

## General
Don’t forget to shutdown/destroy the resources when done:
```bash
terraform destroy --force
```
