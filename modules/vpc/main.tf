resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
   tags = {
    Name = var.vpc_name
  }

}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr

  tags = {
    Name = "public-subnet"
  } 
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-internet-gateway"
  } 
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
   tags = {
    Name = "jenkins-route-table"
  } 
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}




