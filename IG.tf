resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.MyVpc.id
  tags = {
    Name = "gw"
  }
}