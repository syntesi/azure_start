param serverName string = uniqueString('sql', resourceGroup().id)
param sqlDBName string = 'SampleDB'
param location string = resourceGroup().location
param administratorLogin string = 'sqladmin'
@secure()
param administratorLoginPassword string


module SQLDatabase1 'modules/2_sqlserver.bicep' ={
  name : 'SQLDatabase'
  params: {
    location: location
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    serverName: serverName
    sqlDBName: sqlDBName
  }

}
