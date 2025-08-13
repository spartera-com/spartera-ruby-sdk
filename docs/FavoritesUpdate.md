# SparteraApiSdk::FavoritesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  | [optional] |
| **notes** | **String** | Optional user notes about this favorite | [optional] |
| **category** | **String** | Optional category for organizing favorites (e.g., &#39;Work&#39;, &#39;Research&#39;) | [optional] |
| **priority** | **Integer** | User-defined priority for sorting (higher &#x3D; more important) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::FavoritesUpdate.new(
  asset_id: null,
  user_id: null,
  company_id: null,
  notes: null,
  category: null,
  priority: null
)
```

