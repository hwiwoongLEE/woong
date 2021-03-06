#resource "aws_security_group" "user18_bastion" {
#  name        = "bastion"
#  description = "open ssh port for bastion"
#  vpc_id = "${aws_vpc.user18vpc.id}"
#
#  ingress {
#    from_port   = 22
#    to_port     = 22
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  tags {
#    Name = "user18_bastion"
#  }
#}

#resource "aws_eip" "user18_bastion_1a" {
#  instance = "${aws_instance.user18_bastion_1a.id}"
#  vpc      = true
#}

resource "aws_instance" "user18_bastion_1c" {
  ami = "${var.amazon_linux}"
  availability_zone = "ap-northeast-1c"
  instance_type     = "t2.nano"
  key_name          = "${var.user18_keyname}"

  vpc_security_group_ids = [
    "${aws_security_group.user18_bastion.id}",
    "${aws_default_security_group.user18_default.id}"
  ]

  subnet_id = "${aws_subnet.private_1c.id}"
#  associate_public_ip_address = true

  tags {
    Name = "user18_bastion-1c"
  }
}
