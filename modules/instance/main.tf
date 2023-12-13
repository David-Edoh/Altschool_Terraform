provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "altschool_ubuntu_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = element(var.availability_zones, count.index)
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y python3-pip
              sudo pip3 install ansible
              EOF
  tags = {
    Name = "altschool-ubuntu-instance-${var.environment}-${var.region}${element(tolist(["a", "b"]), count.index)}"
  }
}
