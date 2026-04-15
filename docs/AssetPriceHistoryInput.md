# OpenapiClient::AssetPriceHistoryInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | FK to assets. NULL when this record belongs to an endpoint. | [optional] |
| **endpoint_id** | **String** | FK to endpoints. NULL when this record belongs to an asset. | [optional] |
| **price_usd** | **Float** | Optional. | [optional] |
| **date_ended** | **Time** | SCD Type 2 — when this price record was superseded | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AssetPriceHistoryInput.new(
  asset_id: asset_id_abc123,
  endpoint_id: endpoint_id_abc123,
  price_usd: 5.0,
  date_ended: 2025-04-01T00:00:00Z
)
```

