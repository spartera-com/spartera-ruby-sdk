# OpenapiClient::InlineObject6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **retry_after** | **Integer** | Seconds to wait before retrying | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InlineObject6.new(
  code: 429,
  message: Rate limit exceeded,
  retry_after: 60
)
```

