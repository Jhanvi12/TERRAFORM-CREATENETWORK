#Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-terraform-first-vpc"
  }

}

#Create a public subnet
resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}

#Create a private subnet
resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
}

#Create a internet gateway
resource "aws_internet_gateway" "InternetGateway" {
  vpc_id = aws_vpc.myvpc.id

}

#Create a route table for public subnet
resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.InternetGateway.id
  }
}


#Create a Route table association with Public subnet
resource "aws_route_table_association" "PublicRTAssociation" {
  subnet_id      = aws_subnet.PublicSubnet.id
  route_table_id = aws_route_table.PublicRT.id

}