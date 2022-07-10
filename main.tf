provider "aws" {
   region = var.aws_region
   skip_credentials_validation = true
}

locals {
 common_tags = {
   Name = "${var.tag_name}"
 }
}