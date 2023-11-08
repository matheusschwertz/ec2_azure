variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "address_space" {
  description = "Espaço de endereço da rede virtual"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
  description = "Nomes das sub-redes"
  type        = list(string)
  default     = ["subnet1", "subnet2"]
}

variable "subnet_address_prefixes" {
  description = "Prefixos de endereço das sub-redes"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_vm" {
  description = "Nome da rede virtual para a sub-rede pública"
  type        = string
}

variable "private_subnet_vm" {
  description = "Nome da rede virtual para a sub-rede privada"
  type        = string
}