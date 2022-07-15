resource "aws_instance" "bastion" {
  ami                    = "ami-052efd3df9dad4825"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.TF_KEY.key_name
  subnet_id              = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags                   = { Name = "bastion server" }
}



resource "aws_instance" "application" {
  ami                    = "ami-052efd3df9dad4825"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.TF_KEY.key_name
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.ssh_port_3000.id]
  tags                   = { Name = "application" }
}