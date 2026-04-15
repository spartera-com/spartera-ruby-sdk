# SparteraApiSdk::ApiKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **api_key_id** | **Integer** | Unique identifier. |  |
| **user_id** | **String** | User who owns this API key | [optional] |
| **company_id** | **String** | Company this API key belongs to |  |
| **role_id** | **Integer** | Role/permission level for this API key |  |
| **key_type** | **String** | Type of API key (analytics, mcp, or endpoint) |  |
| **is_system_generated** | **Boolean** | True if key was auto-generated for MCP deployment |  |
| **mcp_deployment_id** | **String** | MCP deployment this key is tied to (NULL for analytics/endpoint keys) | [optional] |
| **endpoint_id** | **String** | Endpoint this key is tied to (NULL for analytics/mcp keys) | [optional] |
| **name** | **String** | Human-readable name for this API key | [optional] |
| **expiration_date_utc** | **Time** | When this API key expires (NULL &#x3D; never expires) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::ApiKeys.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  api_key_id: key_abc123,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  role_id: 1,
  key_type: key_abc123,
  is_system_generated: 0.15,
  mcp_deployment_id: mcp_deployment_id_abc123,
  endpoint_id: endpoint_id_abc123,
  name: Example Name,
  expiration_date_utc: 2025-04-01T00:00:00Z
)
```

