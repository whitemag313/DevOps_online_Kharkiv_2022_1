output "webserver_instance_id" {
  value = aws_instance.my_web_server.id
}

output "webserver_public_ip" {
  value = aws_eip.my_static_ip.public_ip
}
