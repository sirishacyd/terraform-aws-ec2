variable "aws_region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
  default     = "aws-ec2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0ccabb5f82d4c9af5"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 should be launched"
  default     = "subnet-0440f16816f0aaae5"
}

variable "vpc_id" {
  description = "VPC ID where EC2 should be launched"
  default     = "vpc-xxxxxxxxxxxxx" 
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {
    Terraform = "True"
  }
}
