using 'main.bicep'
param poolName = 'brewland-managed-pool'
param adoOrg = 'https://dev.azure.com/your-organization'
param devCenterResourceId = '/subscriptions/subscription_id/resourceGroups/your-resource-group/providers/Microsoft.DevCenter/projects/your-dev-center-project'
param imageName = 'windows-2022'
param poolSize = 1
param location = 'northeurope'
param subnetId = '/subscriptions/fd829ed5-9665-4354-9664-aa3bc7bb7048/resourceGroups/rg-1password-gh-runner-prod/providers/Microsoft.Network/virtualNetworks/vnet-gh-runner-prod/subnets/managed-devops-pool'
// param vnetId = ''
