# Terraform EC2 Instance Project

## Overview
This project contains Terraform configuration to deploy an Ubuntu EC2 instance on AWS with customizable parameters.
This is the task 1 as a part of my DevOps specialization coursework.

## Project Structure

```
ec2_instance/
├── main.tf           # Main configuration for EC2 instance
├── provider.tf       # AWS provider configuration
├── variables.tf      # Variable declarations
├── .gitignore        # Git exclusion patterns
└── terraform.tfvars  # Variable values (not tracked in git)
```

## Git Version Control

For a complete list, refer to the `.gitignore` file.

## Resources Created

This Terraform configuration creates:
- An AWS EC2 instance with Ubuntu AMI
- EBS root volume with configurable size
- The instance is deployed without a public IP address for enhanced security

## Configuration Variables

All configurations are managed through variables in `terraform.tfvars`:

| Variable | Description |
|----------|-------------|
| region | AWS region to deploy resources in |
| ami_id | Ubuntu AMI ID |
| instance_type | EC2 instance type |
| subnet_id | VPC subnet ID for the instance |
| ebs_volume_size | Size of the root EBS volume in GB |
| instance_name | Name tag for the instance |

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with appropriate permissions
- AWS CLI configured with access credentials

## Usage

1. Clone this repository
2. Navigate to the project directory
3. Update the `terraform.tfvars` file with your specific configuration values
4. Initialize the Terraform workspace:
   ```
   terraform init
   ```
5. Review the changes that will be applied:
   ```
   terraform plan
   ```
6. Apply the changes:
   ```
   terraform apply
   ```
7. To destroy the resources:
   ```
   terraform destroy
   ```


## Last Updated
May 9, 2025