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
