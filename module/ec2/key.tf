# 1️⃣ Generate SSH key
resource "tls_private_key" "devops_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# 2️⃣ Create AWS Key Pair using generated public key
resource "aws_key_pair" "devops_keypair" {
  key_name   = "devops-auto-key"
  public_key = tls_private_key.devops_key.public_key_openssh
}

# 3️⃣ Save private key locally as .pem file
resource "local_file" "devops_pem" {
  content  = tls_private_key.devops_key.private_key_pem
  filename = "${path.module}/devops-auto-key.pem"

  file_permission = "0400"
}
