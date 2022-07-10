variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-east-1"
}
variable "instance_count" {
   default = 1
}

variable "ami_name_filter" {
   description = "Filter to use to find the AMI by name"
   default = "web-app-ami"
}
 
variable "ami_owner" {
   description = "Filter for the AMI owner"
   default = "self"
}
variable "instance_type" {
   description = "Type of EC2 instance"
   default = "t2.micro"
}

variable "tag_name" {
   description = "Value of the tags Name to apply to all resources"
   default = "aws-packer"
}

variable "key_name" {
   description = "new key keypair for ec2 instance"
   default = "web-deployer-key"
}