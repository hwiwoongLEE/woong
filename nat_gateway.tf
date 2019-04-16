resource "aws_nat_gateway" "user18_1a" {
  allocation_id = "${aws_eip.user18_nat_1a.id}"
  subnet_id     = "${aws_subnet.public_1a.id}"
}

resource "aws_nat_gateway" "user18_1c" {
  allocation_id = "${aws_eip.user18_nat_1c.id}"
  subnet_id     = "${aws_subnet.public_1c.id}"

}
