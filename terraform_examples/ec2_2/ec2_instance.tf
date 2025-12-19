# Define an EC2 instance resource
resource "aws_instance" "my_ubuntu_ec2" {
  ami             = "ami-12345678"  # Ubuntu 20.04 LTS AMI
  instance_type   = "t3.micro"  
  key_name        = "key-pair"  

  security_groups = [Empresa_security_group.allow_ssh_http.name]

  tags = {
    Name = "UbuntuEC2InstanceEmpresa"
  }
