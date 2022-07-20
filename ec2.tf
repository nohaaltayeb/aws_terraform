resource "aws_instance" "bastion" {
  #ami                    = "ami-052efd3df9dad4825"
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.TF_KEY1.key_name
  subnet_id              = module.network.public1_subnet
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags                   = { Name = "bastion server" }
}



resource "aws_instance" "application" {
  ami = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.TF_KEY1.key_name
  subnet_id              = module.network.private1_subnet
  vpc_security_group_ids = [aws_security_group.ssh_port_3000.id]
  tags                   = { Name = "application" }
}