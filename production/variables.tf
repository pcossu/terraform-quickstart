variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
  default     = "rg-demo09-prd"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default = "west europe"
}

variable "environment" {
  description = "The name of our environment, i.e. development."
  default = "production"
}

variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = "vnet-demo09-prd"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.240.0.0/20"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = ["10.240.1.11", "10.240.1.12"]
}

variable "subnet_prefixes"  {
  description = "The address prefix to use for the subnet."
  default     = ["10.240.0.0/25", "10.240.1.0/25", "10.240.2.0/23", "10.240.4.0/23", "10.240.6.0/23"]
}

variable "subnet_names"  {
  description = "A list of public subnets inside the vNet."
  default     = ["sn-prd-mgmt", "sn-prd-auth", "sn-prd-dmz", "sn-prd-be", "sn-prd-db"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    environment = "prd"
    costcenter = "it"
  }
}


variable "allow_rdp_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing RDP traffic to flow through to the newly created network. The default value is false."
  default     = false
}

variable "allow_ssh_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing SSH traffic to flow through to the newly created network. The default value is false."
  default     = false
}

variable "sg_name" {
  description = "Give a name to security group"
  default     = "sg-demo09"
}