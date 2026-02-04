resource "aws_instance" "devops" {
  ami                         = "ami-0532be01f26a3de55"
  instance_type               = "t3.small"
 subnet_id                    = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  key_name                    = aws_key_pair.devops_keypair.key_name
  associate_public_ip_address = true

  tags = {
    Name = "auto-ec2"
  }
}
