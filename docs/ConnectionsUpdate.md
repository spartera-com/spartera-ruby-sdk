# SparteraApiSdk::ConnectionsUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | References users.user_id — An individual user account within a company. See GET /users for valid values. Optional. | [optional] |
| **engine_id** | **Integer** | References storage_engines.engine_id — Fact table of all the different storage engines we support. See GET /storage_engines for valid values. Required. | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. | [optional] |
| **credential_type** | **String** | Optional. One of: SERVICE_ACCOUNT, USERNAME_PASSWORD, API_KEY, SERVICE_IDENTITY, ACCESS_KEY, … (8 total). | [optional] |
| **name** | **String** | Optional. | [optional] |
| **description** | **String** | Optional. | [optional] |
| **provider_domain** | **String** | Domain of the external API provider (e.g., &#39;api.weather.com&#39;) | [optional] |
| **verified_usage_ability** | **Boolean** | Optional. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::ConnectionsUpdate.new(
  user_id: user_id_abc123,
  engine_id: 1,
  company_id: company_id_abc123,
  credential_type: SERVICE_ACCOUNT,
  name: Example Name,
  description: Example description.,
  provider_domain: example.com,
  verified_usage_ability: true
)
```

