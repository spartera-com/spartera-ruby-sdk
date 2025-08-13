# SparteraApiSdk::ApiKeysInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User who owns this API key | [optional] |
| **company_id** | **String** | Company this API key belongs to |  |
| **role_id** | **Integer** | Role/permission level for this API key |  |
| **name** | **String** | Human-readable name for this API key | [optional] |
| **expiration_date_utc** | **Time** | When this API key expires (NULL &#x3D; never expires) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::ApiKeysInput.new(
  user_id: null,
  company_id: null,
  role_id: null,
  name: null,
  expiration_date_utc: null
)
```

