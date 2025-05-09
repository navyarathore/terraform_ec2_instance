# resource "aws_instance" "my_ec2_instance" {
#   ami           = "ami-0e35ddab05955cf57"
#   instance_type = "t3.micro"
#   subnet_id     = "subnet-0881f59f14c87cbf1"
#   associate_public_ip_address = false

#   tags = {
#     Name = "MyTestInstance"
#   }

#   root_block_device {
#     volume_size = 12
#   }
# }

# when using the .tfvars file
resource "aws_instance" "ubuntu_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address = false

  root_block_device {
    volume_size = var.ebs_volume_size
  }

  tags = {
    Name = var.instance_name
  }
}
