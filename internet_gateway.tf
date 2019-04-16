resource "aws_internet_gateway" "user18ig" {
  vpc_id = "${aws_vpc.user18vpc.id}"

  tags {
    Name = "user18ig"
  }
}
