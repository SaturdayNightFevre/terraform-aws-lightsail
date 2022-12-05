output "instance_name" {
  value = aws_lightsail_instance.lightsail.name
}

output "instance_arn" {
  value = aws_lightsail_instance.lightsail.arn
}

output "instance_public_ip" {
  value = aws_lightsail_instance.lightsail.public_ip_address
}

output "instance_private_ip" {
  value = aws_lightsail_instance.lightsail.private_ip_address
}

output "instance_public_ports" {
  value = {
    for port in aws_lightsail_instance_public_ports.Public_ports :
    port.key => {
      protocol  = port.value.protocol
      from_port = port.value.from_port
      to_port   = port.value.to_port
    }
  }
}