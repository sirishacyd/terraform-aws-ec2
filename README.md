# Terraform AWS EC2 Setup
## Prerequisites

1. Install [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli).
2. Install and configure [AWS CLI](https://aws.amazon.com/cli/).

## Setup & Deployment

### 1. GitHub Repository:

```bash
git clone git@github.com:sirishacyd/terraform-aws-ec2.git
cd terraform-aws-ec2
```
### 2. Configuration files:

- **main.tf**: Contains the primary AWS resources configurations, including the EC2 instance setup.
  - [View main.tf](https://github.com/sirishacyd/terraform-aws-ec2/blob/main/main.tf)
  
- **variables.tf**: Declares the variables used across configurations, making it modular and flexible for changes.
  - [View variables.tf](https://github.com/sirishacyd/terraform-aws-ec2/blob/main/variables.tf)

- **output.tf**: Defines the outputs (in this case, the public DNS of the EC2 instance) post Terraform apply.
  - [View output.tf](https://github.com/sirishacyd/terraform-aws-ec2/blob/main/output.tf)



### 3. Configure AWS Credentials& Key pair:

Ensure you have set up your AWS credentials using the AWS CLI:

```bash
aws configure
AWS Access Key ID : 
AWS Secret Access Key: 
Default region name : 
Default output format:
```

- **Create an AWS Key Pair**:
This key pair will be used to securely connect to instances created by Terraform.

![keypair](screenshots/keypair.png)

### 4. Initialize Terraform:

```bash
terraform init
```
![init](screenshots/init.png)
  
### 5. Review the Terraform Plan:

Inspect the resources that Terraform plans to create/modify:

```bash
terraform plan
```
 ![plan](screenshots/plan.png)
 
### 6. Apply the Configuration:

Execute the Terraform configuration to create the AWS resource:

```bash
terraform apply
```
 
### 7. Outputs:

After the successful application of the configuration, Terraform will display the public DNS of the created EC2 instance.

![dns](screenshots/dns.png)

![ec2](screenshots/ec2.png)

## 8.Cleanup:

Destroy the Terraform-managed resources when done:

```bash
terraform destroy
```

![destroy](screenshots/destroy.png)
