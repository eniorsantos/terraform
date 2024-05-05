provider "aws" {
    region = "us-east-2"
}




resource "aws_instance" "windows" {
  
  ami           = "ami-0c9890fb99eafa637"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "eniomaquinaprod"
  vpc_security_group_ids = ["sg-23847238474f"]
  subnet_id     = "subnet-0c301cadf4395f403"

  tags = {
    Name = var.instance_names

    } 

}


output "aws_instance_public_dns" {
  value = aws_instance.windows.public_dns
}


