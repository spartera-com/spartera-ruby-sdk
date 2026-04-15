# SparteraApiSdk::StorageEngines

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **engine_id** | **Integer** | Unique identifier. | [optional] |
| **provider_id** | **Integer** | References cloud_providers.provider_id — Supported cloud platforms and database engines available for connections. See GET /cloud_providers for valid values. Required. |  |
| **service_name** | **String** | Required. |  |
| **engine_type** | **String** | Required. One of: EDW, LLM, RDBMS, OBJ, API_MODEL, … (6 total). |  |
| **integration_complete** | **Boolean** | Optional. | [optional] |
| **test_func_complete** | **Boolean** | Optional. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::StorageEngines.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  engine_id: 1,
  provider_id: 1,
  service_name: Example Name,
  engine_type: EDW,
  integration_complete: true,
  test_func_complete: true
)
```

