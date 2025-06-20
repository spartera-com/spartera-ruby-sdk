# SparteraApiSdk::Alert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** |  | [optional][readonly] |
| **asset_id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **alert_type** | **String** |  |  |
| **is_active** | **String** |  | [optional] |
| **last_triggered** | **String** |  | [optional] |
| **date_created** | **String** |  | [optional][readonly] |
| **last_updated** | **String** |  | [optional][readonly] |
| **active** | **String** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Alert.new(
  alert_id: null,
  asset_id: null,
  user_id: null,
  company_id: null,
  alert_type: null,
  is_active: null,
  last_triggered: null,
  date_created: null,
  last_updated: null,
  active: null
)
```

