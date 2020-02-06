output "publicIP" {
  value = aws_lightsail_instance.wp_test.public_ip_address
}

output "Username" {
  value = aws_lightsail_instance.wp_test.username
}
