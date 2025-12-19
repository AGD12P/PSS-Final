# Define an EC2 instance resource
resource "aws_instance" "ec2_resource" {
  ami             = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI 
  instance_type   = "t2.micro"  
  key_name        = "key-pair"  # You should have created an EC2 key pair for SSH access

  security_groups = [aws_Empresa_security_group.allow_ssh.name]

  tags = {
    Name = "EC2Instance_Empresa"
  }
