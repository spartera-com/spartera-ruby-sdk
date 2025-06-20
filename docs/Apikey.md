# SparteraApiSdk::Apikey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** |  | [readonly] |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  |  |
| **role_id** | **String** |  |  |
| **token** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **expiration_date_utc** | **String** |  | [optional] |
| **date_created** | **String** |  | [optional] |
| **last_updated** | **String** |  | [optional] |
| **active** | **String** |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Apikey.new(
  api_key_id: null,
  user_id: null,
  company_id: null,
  role_id: null,
  token: null,
  name: null,
  expiration_date_utc: null,
  date_created: null,
  last_updated: null,
  active: null
)
```

