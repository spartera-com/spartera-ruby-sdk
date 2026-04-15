# SparteraApiSdk::AssetUsecases

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **auc_id** | **Integer** | Unique identifier. | [optional] |
| **auc_name** | **String** | Required. Must be unique. |  |
| **slug** | **String** | URL-friendly slug derived from auc_name (e.g. &#39;competitive-benchmarking&#39;) | [optional] |
| **auc_description** | **String** | Optional. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::AssetUsecases.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  auc_id: 1,
  auc_name: Example Name,
  slug: example-slug,
  auc_description: Example description.
)
```

