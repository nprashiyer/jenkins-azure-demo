targetScope = 'subscription'
param tagNameList array = [
  'environment'
]
resource requireTag 'Microsoft.Authorization/policyDefinitions@2021-06-01' = [for tagName in tagNameList: {
  name: 'requireTag${tagName}'
  properties: {
    displayName: 'Require Tag - ${tagName}'
    policyType: 'Custom'
    mode: 'Incremental'
    parameters: {}
    policyRule: {
      if: {
        field: 'tags[${tagName}]'
        exists: false
      }
      then: {
        effect: 'deny'
      }
    }
  }

}]
