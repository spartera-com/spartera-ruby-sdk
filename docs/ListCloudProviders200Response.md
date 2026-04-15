# SparteraApiSdk::ListCloudProviders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Response status message |  |
| **data** | [**Array&lt;CloudProviders&gt;**](CloudProviders.md) |  |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::ListCloudProviders200Response.new(
  message: success,
  data: null
)
```

