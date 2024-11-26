param devCenterName string
param devCenterProjectName string
param poolName string
param adoOrg string
param devCenterResourceId string
param imageName string = 'windows-2022'
param poolSize int = 1
param location string = 'northeurope'
// param vnetId string
param subnetId string

resource devCenter 'Microsoft.DevCenter/devcenters@2023-01-01' = {
  name: devCenterName
  location: location
  properties: {}
}

resource devCenterProject 'Microsoft.DevCenter/projects@2023-01-01' = {
  name: devCenterProjectName
  location: location
  properties: {
    devCenterId: devCenter.id
  }
}

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
    devCenterProjectResourceId: devCenterProject.id
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
