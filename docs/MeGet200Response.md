# SparteraApiSdk::MeGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Firebase user ID |  |
| **email** | **String** | User email address | [optional] |
| **auth_method** | **String** | Authentication method used |  |
| **platform** | **String** | Platform origin | [optional] |
| **origin_domain** | **String** | Request origin domain | [optional] |
| **profile** | [**MeGet200ResponseProfile**](MeGet200ResponseProfile.md) |  |  |
| **company_id** | **String** | Company ID from authentication claims |  |
| **role_id** | **Integer** | Role ID from authentication claims |  |
| **token_metadata** | [**MeGet200ResponseTokenMetadata**](MeGet200ResponseTokenMetadata.md) |  | [optional] |
| **api_key_info** | [**MeGet200ResponseApiKeyInfo**](MeGet200ResponseApiKeyInfo.md) |  | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::MeGet200Response.new(
  user_id: null,
  email: null,
  auth_method: null,
  platform: null,
  origin_domain: null,
  profile: null,
  company_id: null,
  role_id: null,
  token_metadata: null,
  api_key_info: null
)
```

