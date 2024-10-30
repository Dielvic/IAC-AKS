#variables.tf
# Si on crée un .tfvars, les valeurs default y seront inscrites
variable "resourceGroupName" {
  type    = string
  default = "az-k8s-dvc-rg"
}
variable "location" {
  type    = string
  default = "westeurope"
}
variable "resourceName" {
  type    = string
  default = "az-k8s-dvc"
}
variable "agentCount" {
  type    = number
  default = 1
}

variable "agentCountMax" {
  type    = number
  default = 3
}

variable "agentVMSize" {
  type    = string
  default = "Standard_B2ls_v2"
}
variable "osDiskType" {
  type    = string
  default = "Managed"
}
variable "osDiskSizeGB" {
  type    = number
  default = 32
}
variable "networkPlugin" {
  type    = string
  default = "kubenet"
}

variable "automationAccountScheduledStartStop" {
  type    = string
  default = "Weekday"
}