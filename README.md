# Terraform Multi-Region and Multi-Environment AWS Deployment

This Terraform project demonstrates how to deploy AWS resources, including EC2 instances and VPCs, to multiple regions (eu-west-1, eu-central-1) and environments (prod, dev).

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Modules](#modules)
- [Variables](#variables)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

The project is structured as follows:


![assignment](https://github.com/David-Edoh/Altschool_Terraform/assets/45123163/0f3ad1ae-f347-4157-b3db-916982b7e535)


- `main.tf`: Main Terraform configuration.
- `variables.tf`: Variables used across the project.
- `outputs.tf`: Output variables.
- `modules`: Directory containing modularized configurations.

## Prerequisites

Before using this project, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed.
- AWS credentials with appropriate permissions configured.

## Usage

1. Clone the repository and setup .tfvars file:

    ```bash
    git clone https://github.com/your-username/terraform-multi-region.git
    cd terraform-multi-region
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Adjust the variables in `dev.tfvars, prod.tfvars, and staging.tfvars` to match your environment.

4. Apply the Terraform configuration:

    ```bash
    terraform apply -var-file="prod.tfvars"
    ```
    Note: Adjust the -var-file arg between dev, staging and prod depending on which environment you want to deploy to.

## Modules

### Instance Module

The `instance` module deploys EC2 instances to the specified regions and environments.

#### Variables

- `region`: AWS region.
- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `ami_id`: AMI ID for instances.
- `instance_type`: EC2 instance type.
- `availability_zones`: List of availability zones.
- `environment`: Environment name.
- `instance_count`: Number of instances to create.

### VPC Module

The `vpc` module creates a VPC in the specified region and environment.

#### Variables

- `region`: AWS region.
- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `vpc_cidr`: CIDR block for the VPC.
- `environment`: Environment name.

## Variables

- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `ami_id`: AMI ID for instances.
- `instance_type`: EC2 instance type.
- `environment`: Environment name.
