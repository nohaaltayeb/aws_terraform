
output "cidr" {
  value =aws_vpc.myvpc.id
  }


output "public1_subnet" {
  value =aws_subnet.public1.id
  }

output "public2_subnet" {
  value =aws_subnet.public2.id
  }


output "private1_subnet" {
  value =aws_subnet.private1.id
  }

output "private2_subnet" {
  value =aws_subnet.private2.id
  }