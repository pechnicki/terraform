resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"
}

resource "aws_subnet" "private_subnet" {
  count             = length(data.aws_availability_zones.azs.names)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.${1 + count.index}.0/24"
  availability_zone = data.aws_availability_zones.azs.names[count.index]
}

resource "aws_subnet" "public_subnet" {
  count                   = length(data.aws_availability_zones.azs.names)
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.0.${20 + count.index}.0/24"
  availability_zone       = data.aws_availability_zones.azs.names[count.index]
}
