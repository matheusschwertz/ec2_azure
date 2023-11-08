variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "admin_username" {
  description = "Username for VM access"
  type        = string
}

variable "admin_password" {
  description = "Password for VM access"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}
