resource "aws_vpc" "project-vpc" {
  cidr_block = "10.0.0.0/16"

    tags = {
        Name = "project-vpc"
    }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id= aws_vpc.project-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_1"
  }
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id= aws_vpc.project-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_2"
  }
}
resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.project-vpc.id  
    cidr_block = "10.0.2.0/24"
    availability_zone = var.availability_zone
    map_public_ip_on_launch = false
    tags = {
        Name = "private_subnet_1"
    }
}
resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.project-vpc.id  
    cidr_block = "10.0.2.0/24"
    availability_zone = var.availability_zone
    map_public_ip_on_launch = false
    tags = {
        Name = "private_subnet_2"
    }
}

resource "aws_internet_gateway" "project-igw" {
  vpc_id = aws_vpc.project-vpc.id

  tags = {
    Name = "project-igw"
  }
}
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.project-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project-igw.id
  }
  tags = {
    Name = "public-route-table"
  }
}
resource "aws_route_table_association" "public-route-table-1-association" {
  subnet_id = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "public-route-table-2-association" {
  subnet_id = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public-route-table.id
}

