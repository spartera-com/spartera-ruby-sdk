# SparteraApiSdk::UsersUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  | [optional] |
| **function_id** | **Integer** |  | [optional] |
| **status** | **String** | Enum type: StatusCodes | [optional] |
| **email_address** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::UsersUpdate.new(
  company_id: null,
  function_id: null,
  status: null,
  email_address: null,
  timezone: null
)
```

