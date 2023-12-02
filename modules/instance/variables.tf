variable "region" {
  description = "AWS region"
}

variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret key"
}

variable "ami_id" {
  description = "AMI ID"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "environment" {
  description = "Environment name"
}

variable "instance_count" {
  description = "Number of instances to create"
}
