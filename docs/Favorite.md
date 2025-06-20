# SparteraApiSdk::Favorite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **favorite_id** | **String** |  | [optional][readonly] |
| **asset_id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **notes** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **priority** | **String** |  |  |
| **date_created** | **String** |  | [optional][readonly] |
| **last_updated** | **String** |  | [optional][readonly] |
| **active** | **String** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Favorite.new(
  favorite_id: null,
  asset_id: null,
  user_id: null,
  company_id: null,
  notes: null,
  category: null,
  priority: null,
  date_created: null,
  last_updated: null,
  active: null
)
```

