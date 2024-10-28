#variables.tf

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
  default = 2
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
variable "automationAccountScheduledStartStop" {
  type    = string
  default = "Weekday"
}