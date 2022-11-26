# azure_start
Start creating azure environment from start


az login
az account set --subscription <subscription id>
az deployment sub create --location 'westeurope'  --template-file 1_resourcegroup.bicep
az deployment group create --resource-group azure-start-1 --template-file main.bicep   

az deployment group create --resource-group azure-start-1 --template-file 2_sqlserver.bicep --parameters administratorLogin='sqladmin'