<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.lightsail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_instance_public_ports.Public_ports](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports) | resource |
| [aws_lightsail_key_pair.lightsail_key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_az"></a> [az](#input\_az) | The availability zone in which to create the instance. | `string` | n/a | yes |
| <a name="input_blueprint_id"></a> [blueprint\_id](#input\_blueprint\_id) | The ID of the blueprint to use for the instance. | `string` | n/a | yes |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The ID of the bundle to use for the instance. | `string` | n/a | yes |
| <a name="input_create_key_pair"></a> [create\_key\_pair](#input\_create\_key\_pair) | n/a | `bool` | `false` | no |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | The name of the key pair to use for the instance. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Lightsail instance. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | <pre>map(object({<br>    protocol  = string<br>    from_port = number<br>    to_port   = number<br>  }))</pre> | <pre>{<br>  "port1": {<br>    "from_port": 80,<br>    "protocol": "tcp",<br>    "to_port": 80<br>  }<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the instance. | `map(string)` | n/a | yes |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | The user data to apply to the instance, if any. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_arn"></a> [instance\_arn](#output\_instance\_arn) | n/a |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | n/a |
| <a name="output_instance_private_ip"></a> [instance\_private\_ip](#output\_instance\_private\_ip) | n/a |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | n/a |
| <a name="output_instance_public_ports"></a> [instance\_public\_ports](#output\_instance\_public\_ports) | n/a |
<!-- END_TF_DOCS -->