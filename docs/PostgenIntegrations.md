# OpenapiClient::PostgenIntegrations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **integration_id** | **String** | Unique identifier. | [optional] |
| **company_id** | **String** | Company this integration belongs to |  |
| **user_id** | **String** | User who created this integration |  |
| **platform** | **String** | Platform identifier (beehiiv, wordpress, medium, etc) |  |
| **platform_name** | **String** | Display name of the platform |  |
| **credentials_secret_name** | **String** | GCP Secret Manager secret name containing encrypted credentials |  |
| **is_active** | **Boolean** | Whether this integration is currently active |  |
| **last_used_at** | **Time** | Last time this integration was used for publishing | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostgenIntegrations.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  integration_id: integration_id_abc123,
  company_id: company_id_abc123,
  user_id: user_id_abc123,
  platform: example_value,
  platform_name: Example Name,
  credentials_secret_name: Example Name,
  is_active: true,
  last_used_at: 2025-04-01T00:00:00Z
)
```

