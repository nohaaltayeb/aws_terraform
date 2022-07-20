resource "aws_db_subnet_group" "subnetgroup" {
  
  subnet_ids = [module.network.private1_subnet,module.network.private2_subnet]
}

resource "aws_db_instance" "mydb1" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = "mydb1"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.subnetgroup.id
}