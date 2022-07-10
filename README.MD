### How to provision ec2 instance using terraform packer AMI

### How to run the code

```
terraform init
terraform plan
terraform apply
```

### How to destroy aws infrastracture

```
terraform destroy
```

### How to connect to EC2 instance via ssh 

```
ssh -i web-deployer-key  ubuntu@ec2-xx-xxx-xxx-xx.compute-1.amazonaws.com
```

### To customize/overrid use define variable create terraform.tfvars file 

Example 

```
ami_name_filter = "linux-aws-redis-focal-*"
instance_type = "t2.micro"
key_name = "xxxxx"
#allow_ssh_from_cidrs = ["190.18.32.44/32"]
tag_name = "web-server-prod"
```