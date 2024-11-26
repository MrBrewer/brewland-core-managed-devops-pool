using 'main.bicep'
param poolName = 'brewland-managed-pool'
param adoOrg = 'https://dev.azure.com/your-organization'
param devCenterResourceId = '/subscriptions/subscription_id/resourceGroups/your-resource-group/providers/Microsoft.DevCenter/projects/your-dev-center-project'
param imageName = 'windows-2022'
param poolSize = 1
param location = 'northeurope'
param subnetId = ''
param vnetId = ''
