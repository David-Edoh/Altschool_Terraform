# Altschool_Terraform

# For dev environment
terraform apply -var-file="dev.tfvars"

# For staging environment
terraform apply -var-file="staging.tfvars"

# For prod environment
terraform apply -var-file="prod.tfvars"