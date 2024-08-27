# Terraform locals are similar to variables, however they are scoped to use within a module.
# Locals are used to assign a value to a variable that is used multiple times within a module.
# Locals can only be changed in the code.
locals {
  region = "us-west-2"
  bucket = "scs-my-test-bucket"

}

# Documentation: https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest
module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.2"
  bucket  = local.bucket

}
