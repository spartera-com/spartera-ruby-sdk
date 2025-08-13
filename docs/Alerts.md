# SparteraApiSdk::Alerts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **alert_id** | **Integer** |  | [optional] |
| **asset_id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **is_active** | **Boolean** | Whether this alert is currently active |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Alerts.new(
  date_created: null,
  last_updated: null,
  alert_id: null,
  asset_id: null,
  user_id: null,
  company_id: null,
  is_active: null
)
```

