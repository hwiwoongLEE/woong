# dev_public

resource "aws_route_table" "user18_public" {
  vpc_id = "${aws_vpc.user18vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.user18ig.id}"
  }

  tags {
    Name = "user18-public"
  }
}

resource "aws_route_table_association" "user18public_1a" {
  subnet_id      = "${aws_subnet.public_1a.id}"
  route_table_id = "${aws_route_table.user18_public.id}"
}

resource "aws_route_table_association" "user18_public_1c" {
  subnet_id      = "${aws_subnet.public_1c.id}"
  route_table_id = "${aws_route_table.user18_public.id}"
}


# dev_private_1a

resource "aws_route_table" "user18_private_1a" {
  vpc_id = "${aws_vpc.user18vpc.id}"
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.user18_1a.id}"
  }

  tags {
    Name = "user18-private-1a"
  }
}

resource "aws_route_table_association" "user18_private_1a" {
  subnet_id      = "${aws_subnet.private_1a.id}"
  route_table_id = "${aws_route_table.user18_private_1a.id}"
}

# dev_private_1c

resource "aws_route_table" "user18_private_1c" {
  vpc_id = "${aws_vpc.user18vpc.id}"
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.user18_1c.id}"
  }

  tags {
    Name = "user18-private-1c"
  }
}

resource "aws_route_table_association" "user18_private_1c" {
  subnet_id      = "${aws_subnet.private_1c.id}"
  route_table_id = "${aws_route_table.user18_private_1c.id}"
}



