first created *manually via the AWS Console*
Initially, the following resources were created manually from the AWS Console to understand dependencies and configurations:
- VPC
- Subnet
- Internet Gateway (IGW)
- Route Table and Route Table Association
- EC2 Instance

  <img width="1818" height="454" alt="image" src="https://github.com/user-attachments/assets/6d966791-dcf4-4388-bc3c-1276603d8802" />

  <img width="1663" height="447" alt="image" src="https://github.com/user-attachments/assets/6ca13fa4-fed4-4d5a-ae2d-fabf6a2073fe" />

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
