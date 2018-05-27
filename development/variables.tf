variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
  default     = "rg-demo01-dev"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default = "west europe"
}

variable "environment" {
  description = "The name of our environment, i.e. development."
  default = "development"
}

variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = "vnet-demo01-dev"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.200.0.0/20"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = ["10.200.1.11", "10.200.1.12"]
}

variable "subnet_prefixes"  {
  description = "The address prefix to use for the subnet."
  default     = ["10.200.0.0/25", "10.200.1.0/25", "10.200.2.0/23", "10.200.4.0/23", "10.200.6.0/24"]
}

variable "subnet_names"  {
  description = "A list of public subnets inside the vNet."
  default     = ["sn-dev-mgmt", "sn-dev-auth", "sn-dev-dmz", "sn-dev-be", "sn-dev-db"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    environment = "dev"
    costcenter = "it"
  }
}

variable "sg_name" {
  description = "Give a name to security group"
  default     = "sg-demo01"
}

variable "allow_rdp_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing RDP traffic to flow through to the newly created network. The default value is false."
  default     = false
}

variable "allow_ssh_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing SSH traffic to flow through to the newly created network. The default value is false."
  default     = false
}

