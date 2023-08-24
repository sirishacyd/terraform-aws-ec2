variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 should be launched"
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {
    Terraform = "True"
  }
}
