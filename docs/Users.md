# SparteraApiSdk::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **function_id** | **Integer** |  | [optional] |
| **status** | **String** | Enum type: StatusCodes |  |
| **email_address** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Users.new(
  date_created: null,
  last_updated: null,
  user_id: null,
  company_id: null,
  function_id: null,
  status: null,
  email_address: null,
  timezone: null
)
```

