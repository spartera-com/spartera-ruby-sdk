# SparteraApiSdk::UsersUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. | [optional] |
| **role_id** | **Integer** | User&#39;s role for RBAC - single source of truth | [optional] |
| **function_id** | **Integer** | User&#39;s job function/title | [optional] |
| **status** | **String** | Required. One of: ACTIVE, PENDING, INACTIVE, BANNED. | [optional] |
| **email_address** | **String** | Optional. Must be unique. | [optional] |
| **timezone** | **String** | Optional. | [optional] |
| **marketing_opt_out** | **Boolean** | Whether user has opted out of marketing communications. Default false &#x3D; opted in per ToS. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::UsersUpdate.new(
  company_id: company_id_abc123,
  role_id: 1,
  function_id: function_id_abc123,
  status: ACTIVE,
  email_address: user@example.com,
  timezone: example_value,
  marketing_opt_out: true
)
```

