*Objective*

Provision an EC2 instance using a Terraform module, connect using a private key (PEM), and manually host a Strapi application on the server.

*Terraform module structure*

<img width="572" height="643" alt="image" src="https://github.com/user-attachments/assets/3415e52c-a548-4536-b745-496b479a03ee" />


AWS-Terraform-Task2/
│
├── provider.tf          # AWS provider configuration (region)
├── backend.tf           # Terraform state configuration
├── main.tf              # Calls all modules (VPC, SG, EC2)
├── output.tf            # Root outputs
├── README.md
│
└── module/
    ├── vpc/
    │   ├── main.tf      # VPC, Subnet, IGW, Route Table
    │   ├── variable.tf
    │   └── output.tf
    │
    ├── sg/
    │   ├── main.tf      # Security group (22, 1337)
    │   ├── variable.tf
    │   └── output.tf
    │
    └── ec2/
        ├── main.tf      # EC2 instance creation
        ├── key.tf       # Key pair usage
        ├── variables.tf
        └── output.tf


*host strapi on ec2*

<img width="1888" height="976" alt="image" src="https://github.com/user-attachments/assets/252315f1-6227-4bd7-bc36-9f763f299a2e" />

*Outcome*
EC2 provisioned using Terraform module
Connected securely using PEM key
Installed Node.js runtime
Hosted Strapi application manually
Verified application over public IP


