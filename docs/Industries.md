# SparteraApiSdk::Industries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **industry_id** | **Integer** | Auto-generated unique identifier. | [optional] |
| **industry_name** | **String** | Required. Must be unique. |  |
| **short_name** | **String** | Required. |  |
| **slug** | **String** | Optional. | [optional] |
| **naisc_code** | **Integer** | Optional. | [optional] |
| **description** | **String** | Optional. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Industries.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  industry_id: 1,
  industry_name: Example Name,
  short_name: Example Name,
  slug: example-slug,
  naisc_code: ABC123,
  description: Example description.
)
```

