# SparteraApiSdk::MeGet200ResponseProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User ID (primary key) | [optional] |
| **type** | **String** | Profile type | [optional] |
| **company_id** | **String** | Company ID | [optional] |
| **function_id** | **Integer** | User function/role ID | [optional] |
| **status** | **String** | User status | [optional] |
| **email_address** | **String** | User email address | [optional] |
| **timezone** | **String** | User timezone | [optional] |
| **date_created** | **Time** | Account creation date | [optional] |
| **last_updated** | **Time** | Last profile update | [optional] |
| **active** | **Boolean** | Account active status | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::MeGet200ResponseProfile.new(
  id: null,
  type: null,
  company_id: null,
  function_id: null,
  status: null,
  email_address: null,
  timezone: null,
  date_created: null,
  last_updated: null,
  active: null
)
```

