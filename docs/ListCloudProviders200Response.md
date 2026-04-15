# OpenapiClient::ListCloudProviders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Response status message |  |
| **data** | [**Array&lt;CloudProviders&gt;**](CloudProviders.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListCloudProviders200Response.new(
  message: success,
  data: null
)
```

