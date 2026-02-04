*Objective*

Provision an EC2 instance using a Terraform module, connect using a private key (PEM), and manually host a Strapi application on the server.

*Terraform module structure*

/AWS-Terraform-Task2$ tree
.
├── README.md
├── backend.tf
├── devops-auto-key.pem
├── main.tf
├── module
│   ├── ec2
│   │   ├── devops-auto-key.pem
│   │   ├── key.tf
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── sg
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   └── vpc
│       ├── main.tf
│       ├── output.tf
│       └── variable.tf
├── output.tf
├── provider.tf
└── task3

*host strapi on ec2*

<img width="1888" height="976" alt="image" src="https://github.com/user-attachments/assets/252315f1-6227-4bd7-bc36-9f763f299a2e" />

*Outcome*
EC2 provisioned using Terraform module
Connected securely using PEM key
Installed Node.js runtime
Hosted Strapi application manually
Verified application over public IP


