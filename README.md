first created *manually via the AWS Console*
Initially, the following resources were created manually from the AWS Console to understand dependencies and configurations:
- VPC
- Subnet
- Internet Gateway (IGW)
- Route Table and Route Table Association
- EC2 Instance

  ## Terraform Setup
After manual creation, the same infrastructure was provisioned using Terraform.

### Terraform Files
*I used resuable terraform modules to create infra*
module - VPC, Ec2, SG
- *providers.tf* – Configures the AWS provider
- *variables.tf* – Defines input variables
- *main.tf* – Creates AWS resources (VPC, Subnet, IGW, Route Table, EC2)
- *outputs.tf* – Exposes important outputs like EC2 public IP
- *backend.tf* - to securely store my state files
  
  ## Tools Used
- AWS
- Terraform
