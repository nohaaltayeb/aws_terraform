#It would be helpful in automation script 

output "ec2_bastion_ip" {
  value = aws_instance.bastion.public_ip
}