# SparteraApiSdk::ListStorageEngines200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Response status message |  |
| **data** | [**Array&lt;StorageEngines&gt;**](StorageEngines.md) |  |  |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::ListStorageEngines200Response.new(
  message: success,
  data: null
)
```

