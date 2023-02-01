resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "route" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "pechnicki_route"
  }
}

resource "aws_route_table_association" "public_route_subnet" {
  depends_on = [
    aws_subnet.public_subnet,
    aws_route_table.route
  ]
  count          = length(data.aws_availability_zones.azs.names)
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.route.id
}
