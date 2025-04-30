resource "aws_subnet" "PublicSubnet1" {
  vpc_id     = aws_vpc.MyVpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch=true
  availability_zone="us-east-1a"
  tags = {
    Name = "PublicSubnet1"
  }
}
resource "aws_subnet" "PublicSubnet2" {
  vpc_id     = aws_vpc.MyVpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch=true
  availability_zone="us-east-1b"
  tags = {
    Name = "PublicSubnet2"
  }
}
resource "aws_subnet" "PrivateSubnet1" {
  vpc_id     = aws_vpc.MyVpc.id
  cidr_block = "10.0.3.0/24"
  map_public_ip_on_launch=false
  availability_zone="us-east-1a"
  tags = {
    Name = "PrivateSubnet1"
  }
}
resource "aws_subnet" "PrivateSubnet2" {
  vpc_id     = aws_vpc.MyVpc.id
  cidr_block = "10.0.4.0/24"
  map_public_ip_on_launch=false
  availability_zone="us-east-1b"
  tags = {
    Name = "PrivateSubnet2"
  }
}