variable "vnet_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "vnet_cidrs" {
    type = list(string)
    default = [ 
        "192.169.0.0/22" 
    ]
}
variable "subnets" {
  description = "A map of subnets with their corresponding names and CIDR blocks"
  type = map(object({
    name = string
    cidr = string
  }))
}

variable "tags" {}