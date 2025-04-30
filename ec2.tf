resource "aws_instance" "bastion" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PublicSubnet1.id
  key_name      = aws_key_pair.PubKey.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "application" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PrivateSubnet1.id
  key_name = aws_key_pair.PubKey.key_name
  associate_public_ip_address = false
  vpc_security_group_ids = [aws_security_group.allow_port3000.id]

  tags = {
    Name = "tf-example"
  }
}