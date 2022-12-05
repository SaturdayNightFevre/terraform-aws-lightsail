output "instance_name" {
  description = "The name of the Lightsail instance."
  value = aws_lightsail_instance.lightsail.name
}

output "instance_arn" {
  description = "The Amazon Resource Name (ARN) of the Lightsail instance."
  value = aws_lightsail_instance.lightsail.arn
}

output "instance_public_ip" {
  description = "The public IP address of the Lightsail instance."
  value = aws_lightsail_instance.lightsail.public_ip_address
}

output "instance_private_ip" {
  description = "The private IP address of the Lightsail instance."
  value = aws_lightsail_instance.lightsail.private_ip_address
}

output "instance_public_ports" {
  description = "The public ports that are open on the Lightsail instance."
  value = {
    for port in aws_lightsail_instance_public_ports.Public_ports :
    port.key => {
      protocol  = port.value.protocol
      from_port = port.value.from_port
      to_port   = port.value.to_port
    }
  }
}