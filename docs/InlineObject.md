# SparteraApiSdk::InlineObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::InlineObject.new(
  code: 400,
  message: null,
  errors: null
)
```

