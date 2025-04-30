resource "aws_security_group" "allow_ssh" {
  name        = "allow-ssh-anywhere"
  vpc_id      = aws_vpc.MyVpc.id
  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh-anywhere"
  }
}

resource "aws_security_group" "allow_port3000" {
  name        = "allow_port3000"
  vpc_id      = aws_vpc.MyVpc.id
  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.MyVpc.cidr_block]
  }
    ingress {
    description = "Allow port 3000 form VPC CIDR"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.MyVpc.cidr_block]
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh-anywhere"
  }
}