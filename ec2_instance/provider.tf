# provider "aws" {
#   region     = "ap-south-1"
# }


# when using the .tfvars file
provider "aws" {
  region = var.region
}