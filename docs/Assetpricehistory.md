# SparteraApiSdk::AssetPriceHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **aph_id** | **String** |  | [optional] |
| **asset_id** | **String** |  |  |
| **price_usd** | **Float** |  | [optional] |
| **date_ended** | **Time** | When did the price end (Datetime) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::AssetPriceHistory.new(
  date_created: null,
  last_updated: null,
  aph_id: null,
  asset_id: null,
  price_usd: null,
  date_ended: null
)
```

