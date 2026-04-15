# SparteraApiSdk::Alerts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **alert_id** | **Integer** | Auto-generated unique identifier. | [optional] |
| **asset_id** | **String** | References assets.asset_id — A published analytics asset — a calculation or visualization built on a data connection. See GET /assets for valid values. Required. |  |
| **user_id** | **String** | References users.user_id — An individual user account within a company. See GET /users for valid values. Optional. | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. |  |
| **is_active** | **Boolean** | Whether this alert is currently active |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Alerts.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  alert_id: 1,
  asset_id: asset_id_abc123,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  is_active: true
)
```

