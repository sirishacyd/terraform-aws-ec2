aws_region = "us-east-2"
instance_type = "t2.micro"
subnet_id = "subnet-0440f16816f0aaae5"
key_name = "aws-ec2"
ami_id   = "ami-0ccabb5f82d4c9af5"
tags = {
  "Name"    = "my-custom-terraform-instance"
  "Project" = "Demo"
}