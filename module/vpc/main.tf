resource "aws_vpc" "custom_vpc" {
  cidr_block = var.vpc_cird_block
  tags = var.vpc_name
}
resource "aws_subnet" "pub-sb" {
  vpc_id                  = aws_vpc.custom_vpc.id
  cidr_block              = var.subnet_cird_block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "pub-sb"
  }
}

resource "aws_subnet" "pri-sb" {
  vpc_id                  = aws_vpc.custom_vpc.id
  cidr_block              = var.pri_subnet_cird_block
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "pri-sb"
  }

}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.custom_vpc.id
  tags = {
    Name = "custom-igw"
  }
}

resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.custom_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "pub-rt"
  }
}

resource "aws_route_table" "pri-rt" {
  vpc_id = aws_vpc.custom_vpc.id

  tags = {
    Name = "pri-rt"
  }
}

resource "aws_route_table_association" "pub-sb-ass" {
  subnet_id      = aws_subnet.pub-sb.id
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "pri-sb-ass" {
  subnet_id      = aws_subnet.pri-sb.id
  route_table_id = aws_route_table.pri-rt.id
}

