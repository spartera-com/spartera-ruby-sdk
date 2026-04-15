# SparteraApiSdk::JobFunctions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **function_id** | **Integer** | Auto-generated unique identifier. |  |
| **name** | **String** | Required. Must be unique. |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::JobFunctions.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  function_id: 1,
  name: Example Name
)
```

