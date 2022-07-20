resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public1_subnet
  map_public_ip_on_launch = "true"
  availability_zone = "${var.region}a"

}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public2_subnet
  map_public_ip_on_launch = "true"
    availability_zone = "${var.region}b"


}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private1_subnet
  availability_zone = "${var.region}a"



}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private2_subnet
  availability_zone = "${var.region}b"


}