# SparteraApiSdk::AlertsInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **is_active** | **Boolean** | Whether this alert is currently active | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::AlertsInput.new(
  asset_id: null,
  user_id: null,
  company_id: null,
  is_active: null
)
```

