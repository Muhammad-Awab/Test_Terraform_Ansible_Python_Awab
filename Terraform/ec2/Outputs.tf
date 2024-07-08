output "ec2_public_ip" {
    value = aws_instance.Webserver.public_ip
}

  