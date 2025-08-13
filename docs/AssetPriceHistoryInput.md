# SparteraApiSdk::AssetPriceHistoryInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** |  |  |
| **price_usd** | **Float** |  | [optional] |
| **date_ended** | **Time** | When did the price end (Datetime) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::AssetPriceHistoryInput.new(
  asset_id: null,
  price_usd: null,
  date_ended: null
)
```

