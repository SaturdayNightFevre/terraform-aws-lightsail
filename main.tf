######################### Instance ########################################

resource "aws_lightsail_instance" "lightsail" {
  name              = var.name
  availability_zone = var.az
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair
  tags              = var.tags
  user_data         = var.user_data
}

resource "aws_lightsail_key_pair" "lightsail_key_pair" {
  count = var.create_key_pair ? 1 : 0
  name  = var.key_pair
}

###################################Networking#################################

resource "aws_lightsail_instance_public_ports" "Public_ports" {
  instance_name = aws_lightsail_instance.lightsail.name
  for_each      = var.port
  port_info {
    protocol  = each.value.protocol
    from_port = each.value.from_port
    to_port   = each.value.to_port
  }
}

