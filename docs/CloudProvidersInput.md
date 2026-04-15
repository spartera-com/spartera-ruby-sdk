# OpenapiClient::CloudProvidersInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Required. |  |
| **parent_company** | **String** | Optional. | [optional] |
| **marketing_homepage_url** | **String** | Optional. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CloudProvidersInput.new(
  name: Example Name,
  parent_company: example_value,
  marketing_homepage_url: https://example.com
)
```

