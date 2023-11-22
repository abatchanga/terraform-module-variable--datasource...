# Using data source to pull info about ec2 id created in aws console
data "aws_instance" "demo" {
  instance_id = "i-0c2803efdc45be391"

}

# Using data source to pull info in aws about ami id
data "aws_ami" "ami1" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
