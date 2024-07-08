output "security_group_id" {
 value = aws_security_group.web-sg.id 
}
output "rds_sg_id" {
 value = aws_security_group.rds_sg.id 
}