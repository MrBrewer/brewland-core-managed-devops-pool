param poolName string
param adoOrg string
param devCenterResourceId string
param imageName string = 'windows-2022'
param poolSize int = 1
param location string = 'eastus'
param vnetId string
param subnetId string

resource managedDevOpsPool 'Microsoft.DevOpsInfrastructure/pools@2024-10-19' = {
  name: poolName
  location: location
  properties: {
    organizationProfile: {
      organizations: [
        {
          url: adoOrg
          parallelism: 1
        }
      ]
      permissionProfile: {
        kind: 'CreatorOnly'
      }
      kind: 'AzureDevOps'
    }
    devCenterProjectResourceId: devCenterResourceId
    maximumConcurrency: poolSize
    agentProfile: {
      kind: 'Stateless'
    }
    fabricProfile: {
      sku: {
        name: 'Standard_D2ads_v5'
      }
      images: [
        {
          wellKnownImageName: imageName
          buffer: '*'
        }
      ]
      kind: 'Vmss'
      networkProfile: {
        subnetId: subnetId
      }
    }
  }
}
