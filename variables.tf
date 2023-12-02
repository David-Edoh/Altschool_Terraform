variable "environment" {
  description = "The environment for the infrastructure (dev, staging, or prod)"
  type        = string
  default     = "dev"
}

variable "secret_key" {
  description = "AWS IAM secret key"
  type        = string
}

variable "access_key" {
  description = "AWS IAM access key"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "The type of AWS instances"
  type        = string
  default     = "t2.micro"
}

# variable "availability_zones" {
#   description = "A list of availability zones for the instances"
#   type        = list(string)
# }

variable "regions" {
  description = "The AWS region for the instances"
  type        = list(string)
}
