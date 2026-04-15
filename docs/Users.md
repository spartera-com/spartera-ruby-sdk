# OpenapiClient::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **user_id** | **String** | Unique identifier. | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. |  |
| **role_id** | **Integer** | User&#39;s role for RBAC - single source of truth |  |
| **function_id** | **Integer** | User&#39;s job function/title | [optional] |
| **status** | **String** | Required. One of: ACTIVE, PENDING, INACTIVE, BANNED. |  |
| **email_address** | **String** | Optional. Must be unique. | [optional] |
| **timezone** | **String** | Optional. | [optional] |
| **marketing_opt_out** | **Boolean** | Whether user has opted out of marketing communications. Default false &#x3D; opted in per ToS. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Users.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  role_id: 1,
  function_id: function_id_abc123,
  status: ACTIVE,
  email_address: user@example.com,
  timezone: example_value,
  marketing_opt_out: true
)
```

