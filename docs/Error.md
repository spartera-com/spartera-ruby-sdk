# OpenapiClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Error code |  |
| **message** | **String** | Error message |  |
| **details** | **String** | Additional error details | [optional] |
| **timestamp** | **Time** | When the error occurred | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Error.new(
  code: null,
  message: null,
  details: null,
  timestamp: null
)
```

