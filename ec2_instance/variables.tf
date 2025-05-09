variable "region" {
  description = "aws_region"
  type        = string
}

variable "ami_id" {
  description = "ami_id_ubuntu"
  type        = string
}

variable "instance_type" {
  description = "ec2_instance_type"
  type        = string
}

variable "subnet_id" {
  description = "vpc_subnet_id"
  type        = string
}

variable "ebs_volume_size" {
  description = "ebs_volume_size_gb"
  type        = number
}

variable "instance_name" {
  description = "instance_name_tag"
  type        = string
}
