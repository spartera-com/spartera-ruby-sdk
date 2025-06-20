# SparteraApiSdk::Assetpricehistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aph_id** | **String** |  | [optional] |
| **asset_id** | **String** |  |  |
| **price_usd** | **Float** |  | [optional] |
| **price_credits** | **String** |  | [optional] |
| **discount_percentage** | **Float** |  | [optional] |
| **sale_start_date** | **String** |  | [optional] |
| **sale_end_date** | **String** |  | [optional] |
| **date_ended** | **String** |  | [optional] |
| **date_created** | **String** |  | [optional][readonly] |
| **last_updated** | **String** |  | [optional][readonly] |
| **active** | **String** |  |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Assetpricehistory.new(
  aph_id: null,
  asset_id: null,
  price_usd: null,
  price_credits: null,
  discount_percentage: null,
  sale_start_date: null,
  sale_end_date: null,
  date_ended: null,
  date_created: null,
  last_updated: null,
  active: null
)
```

