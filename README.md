<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.48 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.48 |
| <a name="provider_http"></a> [http](#provider\_http) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group_template_deployment.aksc_deploy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_template_deployment) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [http_http.aksc_release](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agentCount"></a> [agentCount](#input\_agentCount) | n/a | `number` | `1` | no |
| <a name="input_agentCountMax"></a> [agentCountMax](#input\_agentCountMax) | n/a | `number` | `3` | no |
| <a name="input_agentVMSize"></a> [agentVMSize](#input\_agentVMSize) | n/a | `string` | `"Standard_B2ls_v2"` | no |
| <a name="input_automationAccountScheduledStartStop"></a> [automationAccountScheduledStartStop](#input\_automationAccountScheduledStartStop) | n/a | `string` | `"Weekday"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"westeurope"` | no |
| <a name="input_networkPlugin"></a> [networkPlugin](#input\_networkPlugin) | n/a | `string` | `"kubenet"` | no |
| <a name="input_osDiskSizeGB"></a> [osDiskSizeGB](#input\_osDiskSizeGB) | n/a | `number` | `32` | no |
| <a name="input_osDiskType"></a> [osDiskType](#input\_osDiskType) | n/a | `string` | `"Managed"` | no |
| <a name="input_resourceGroupName"></a> [resourceGroupName](#input\_resourceGroupName) | variables.tf Si on crée un .tfvars, les valeurs default y seront inscrites | `string` | `"az-k8s-dvc-rg"` | no |
| <a name="input_resourceName"></a> [resourceName](#input\_resourceName) | n/a | `string` | `"az-k8s-dvc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aksClusterName"></a> [aksClusterName](#output\_aksClusterName) | The name of the AKS cluster. |
| <a name="output_userClientId"></a> [userClientId](#output\_userClientId) | Current User ClientId |
| <a name="output_userObjectId"></a> [userObjectId](#output\_userObjectId) | Current User ObjectId |
<!-- END_TF_DOCS -->