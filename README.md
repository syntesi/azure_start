# azure_start
Start creating azure environment from start


az login
az account set --subscription <subscription id>
az deployment sub create --location 'westeurope'  --template-file 1_resourcegroup.bicep
az deployment group create --resource-group azure-start-1 --template-file main.bicep   

az deployment group create --resource-group azure-start-1 --template-file 2_sqlserver.bicep --parameters administratorLogin='sqladmin'



New-AzResourceGroup -Name exampleRG -Location eastus

New-AzResourceGroupDeployment -ResourceGroupName rs_azure_start_dev01 -TemplateFile ./4_keyvault.bicep -keyVaultName "kv-azure-start" -objectId "<azure portal>"