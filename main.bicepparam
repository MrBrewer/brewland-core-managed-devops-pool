{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "poolName": {
      "value": "my-first-managed-pool"
    },
    "adoOrg": {
      "value": "https://dev.azure.com/your-organization"
    },
    "devCenterResourceId": {
      "value": "/subscriptions/subscription_id/resourceGroups/your-resource-group/providers/Microsoft.DevCenter/projects/your-dev-center-project"
    },
    "imageName": {
      "value": "windows-2022"
    },
    "poolSize": {
      "value": 1
    },
    "location": {
      "value": "eastus"
    }
  }
}
