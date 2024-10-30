data "http" "aksc_release" {
  url = "https://raw.githubusercontent.com/Dielvic/IAC-AKS/refs/heads/main/main.json"
  request_headers = {
    Accept     = "application/json"
    User-Agent = "request module"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = var.resourceGroupName
  location = var.location
}

resource "azurerm_resource_group_template_deployment" "aksc_deploy" {
  name                = "AKS-C"
  resource_group_name = azurerm_resource_group.rg.name
  deployment_mode     = "Incremental"
  template_content    = data.http.aksc_release.response_body
  parameters_content = jsonencode({
    resourceName                        = { value = var.resourceName }
    agentCount                          = { value = var.agentCount }
    agentCountMax                       = { value = var.agentCountMax }
    osDiskType                          = { value = var.osDiskType }
    osDiskSizeGB                        = { value = var.osDiskSizeGB }
    networkPlugin                       = { value = var.networkPlugin }
    automationAccountScheduledStartStop = { value = var.automationAccountScheduledStartStop }
  })
}