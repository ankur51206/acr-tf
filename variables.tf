### Azure container registry

variable "acr_name" {
  description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  type        = string
  default     = "decimalacr0181"
}

variable "acr_resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
  default     = "larakuberg"
}

variable "acr_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  default     = "eastus2"
}

variable "acr_sku" {
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium"
  type        = string
  default     = "Premium"
}

variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled. Defaults to false"
  type        = bool
  default     = true
}

 variable "acr_georeplications" {
  description = "Specifies georeplications"
  type        =  list(string)
  default     =  ["East US", "West Europe"]
}

variable "acr_zone_redundancy_enabled" {
  description = "Specifies georeplications zone for replication"
  type        =  bool
  default     =  true
}

variable "acr_images_retention_enabled" {
  description = "Specifies ACR Image retention enables"
  type        =  bool
  default     =  true
}

variable "acr_images_retention_days" {
  description = "Specifies ACR Image retention days"
  type        =  number
  default     =  30
}

variable "acr_quarantine_policy_enabled" {
  description = "Specifies ACR Image retention days"
  type        =  bool
  default     =  false
}