variable "name" {
  type        = string
  description = "The name of the Lightsail instance."
}

variable "az" {
  type        = string
  description = "The availability zone in which to create the instance."
}

variable "blueprint_id" {
  type        = string
  description = "The ID of the blueprint to use for the instance."
}

variable "bundle_id" {
  type        = string
  description = "The ID of the bundle to use for the instance."
}

variable "key_pair" {
  type        = string
  description = "The name of the key pair to use for the instance."
}

variable "create_key_pair" {
  type    = bool
  default = false
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the instance."
}

variable "user_data" {
  type        = string
  description = "The user data to apply to the instance, if any."
}


variable "port" {
  type = map(object({
    protocol  = string
    from_port = number
    to_port   = number
  }))
  default = {
    port1 = {
      protocol  = "tcp"
      from_port = 80
      to_port   = 80
    }
  }
}