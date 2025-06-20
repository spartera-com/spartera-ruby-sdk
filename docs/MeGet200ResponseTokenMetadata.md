# SparteraApiSdk::MeGet200ResponseTokenMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** | Token issuer | [optional] |
| **auth_time** | **Integer** | Authentication time | [optional] |
| **issued_at** | **Integer** | Token issued timestamp | [optional] |
| **expires_at** | **Integer** | Token expiration timestamp | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::MeGet200ResponseTokenMetadata.new(
  issuer: null,
  auth_time: null,
  issued_at: null,
  expires_at: null
)
```

