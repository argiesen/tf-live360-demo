variable "prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "tf-live360-demo"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "tf-live360-demo-rg"
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
  default     = "West US 2"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "tf-live360-demo-vnet"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "tf-live360-demo-subnet"
}

variable "subnet_prefix" {
  description = "Subnet address prefix"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = ".ssh/id_rsa.pub"
}
