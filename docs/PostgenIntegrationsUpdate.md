# SparteraApiSdk::PostgenIntegrationsUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Company this integration belongs to | [optional] |
| **user_id** | **String** | User who created this integration | [optional] |
| **platform** | **String** | Platform identifier (beehiiv, wordpress, medium, etc) | [optional] |
| **platform_name** | **String** | Display name of the platform | [optional] |
| **credentials_secret_name** | **String** | GCP Secret Manager secret name containing encrypted credentials | [optional] |
| **is_active** | **Boolean** | Whether this integration is currently active | [optional] |
| **last_used_at** | **Time** | Last time this integration was used for publishing | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::PostgenIntegrationsUpdate.new(
  company_id: company_id_abc123,
  user_id: user_id_abc123,
  platform: example_value,
  platform_name: Example Name,
  credentials_secret_name: Example Name,
  is_active: true,
  last_used_at: 2025-04-01T00:00:00Z
)
```

