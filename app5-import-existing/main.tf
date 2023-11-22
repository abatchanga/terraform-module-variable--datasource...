# When  you run only terraform import, it will generate a resource file
# reviewed resources file generated by Terraform to create a new ec2
# Even if we didn't create this resource using Terraform, now we track it using Terraform

resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1d"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-key"
  monitoring                  = false
  security_groups             = ["launch-wizard-2"]
  subnet_id                   = "subnet-73123d2c"
  tags = {
    Name = "Imported server"
    env  = "dev"
    Team = "DevOps"
  }

}
