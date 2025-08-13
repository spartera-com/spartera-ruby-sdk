# SparteraApiSdk::Favorites

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **favorite_id** | **Integer** |  | [optional] |
| **asset_id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **notes** | **String** | Optional user notes about this favorite | [optional] |
| **category** | **String** | Optional category for organizing favorites (e.g., &#39;Work&#39;, &#39;Research&#39;) | [optional] |
| **priority** | **Integer** | User-defined priority for sorting (higher &#x3D; more important) |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Favorites.new(
  date_created: null,
  last_updated: null,
  favorite_id: null,
  asset_id: null,
  user_id: null,
  company_id: null,
  notes: null,
  category: null,
  priority: null
)
```

