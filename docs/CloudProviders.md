# OpenapiClient::CloudProviders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **provider_id** | **Integer** | Auto-generated unique identifier. | [optional] |
| **name** | **String** | Required. |  |
| **parent_company** | **String** | Optional. | [optional] |
| **marketing_homepage_url** | **String** | Optional. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CloudProviders.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  provider_id: 1,
  name: Example Name,
  parent_company: example_value,
  marketing_homepage_url: https://example.com
)
```

