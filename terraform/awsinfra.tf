provider "aws" {
 region     = "ca-central-1"
 shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
 profile = "default"
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type

  count = 3

  tags = {
    env  = var.env_1
    env  = var.env_2
    Name = "${var.env_2}-${count.index}"
    Name = "${var.env_1}-${count.index}"
  }
}
