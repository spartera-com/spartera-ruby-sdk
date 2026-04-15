# SparteraApiSdk::CloudProvidersUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Required. | [optional] |
| **parent_company** | **String** | Optional. | [optional] |
| **marketing_homepage_url** | **String** | Optional. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::CloudProvidersUpdate.new(
  name: Example Name,
  parent_company: example_value,
  marketing_homepage_url: https://example.com
)
```

