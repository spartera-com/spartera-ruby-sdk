# SparteraApiSdk::Connections

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **connection_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **engine_id** | **Integer** |  |  |
| **company_id** | **String** |  |  |
| **credential_type** | **String** | Enum type: CredentialType | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **provider_domain** | **String** |  | [optional] |
| **verified_usage_ability** | **Boolean** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Connections.new(
  date_created: null,
  last_updated: null,
  connection_id: null,
  user_id: null,
  engine_id: null,
  company_id: null,
  credential_type: null,
  name: null,
  description: null,
  provider_domain: null,
  verified_usage_ability: null
)
```

