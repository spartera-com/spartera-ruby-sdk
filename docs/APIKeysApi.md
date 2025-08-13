# SparteraApiSdk::APIKeysApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_api_keys_api_key_id_delete**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_delete) | **DELETE** /companies/{company_id}/api-keys/{api_key_id} | Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup. |
| [**companies_company_id_api_keys_api_key_id_get**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_get) | **GET** /companies/{company_id}/api-keys/{api_key_id} | Get single API key by ID.     Returns masked API key for security (sk_****1234). |
| [**companies_company_id_api_keys_api_key_id_patch**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_patch) | **PATCH** /companies/{company_id}/api-keys/{api_key_id} | Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security). |
| [**companies_company_id_api_keys_api_key_id_revoke_post**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_revoke_post) | **POST** /companies/{company_id}/api-keys/{api_key_id}/revoke | Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata. |
| [**companies_company_id_api_keys_api_key_id_stats_get**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_stats_get) | **GET** /companies/{company_id}/api-keys/{api_key_id}/stats | Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc. |
| [**companies_company_id_api_keys_get**](APIKeysApi.md#companies_company_id_api_keys_get) | **GET** /companies/{company_id}/api-keys | Get all API keys for a company.     Returns masked API keys for security (sk_****1234). |
| [**companies_company_id_api_keys_post**](APIKeysApi.md#companies_company_id_api_keys_post) | **POST** /companies/{company_id}/api-keys | Create single API key.     Returns the actual sk_ key (only time it&#39;s exposed) and api_key_id for future operations. |


## companies_company_id_api_keys_api_key_id_delete

> <CompaniesCompanyIdApiKeysApiKeyIdDelete200Response> companies_company_id_api_keys_api_key_id_delete(company_id, api_key_id)

Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_key_id = 'api_key_id_example' # String | 

begin
  # Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.
  result = api_instance.companies_company_id_api_keys_api_key_id_delete(company_id, api_key_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_delete: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysApiKeyIdDelete200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_delete_with_http_info(company_id, api_key_id)

```ruby
begin
  # Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_delete_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysApiKeyIdDelete200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_key_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysApiKeyIdDelete200Response**](CompaniesCompanyIdApiKeysApiKeyIdDelete200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_api_keys_api_key_id_get

> <CompaniesCompanyIdApiKeysApiKeyIdGet200Response> companies_company_id_api_keys_api_key_id_get(company_id, api_key_id)

Get single API key by ID.     Returns masked API key for security (sk_****1234).

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_key_id = 'api_key_id_example' # String | 

begin
  # Get single API key by ID.     Returns masked API key for security (sk_****1234).
  result = api_instance.companies_company_id_api_keys_api_key_id_get(company_id, api_key_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_get: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysApiKeyIdGet200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_get_with_http_info(company_id, api_key_id)

```ruby
begin
  # Get single API key by ID.     Returns masked API key for security (sk_****1234).
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_get_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysApiKeyIdGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_key_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysApiKeyIdGet200Response**](CompaniesCompanyIdApiKeysApiKeyIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_api_keys_api_key_id_patch

> <CompaniesCompanyIdApiKeysApiKeyIdPatch200Response> companies_company_id_api_keys_api_key_id_patch(company_id, api_key_id, api_keys_update)

Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_key_id = 'api_key_id_example' # String | 
api_keys_update = SparteraApiSdk::ApiKeysUpdate.new # ApiKeysUpdate | 

begin
  # Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).
  result = api_instance.companies_company_id_api_keys_api_key_id_patch(company_id, api_key_id, api_keys_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_patch: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysApiKeyIdPatch200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_patch_with_http_info(company_id, api_key_id, api_keys_update)

```ruby
begin
  # Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_patch_with_http_info(company_id, api_key_id, api_keys_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysApiKeyIdPatch200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_key_id** | **String** |  |  |
| **api_keys_update** | [**ApiKeysUpdate**](ApiKeysUpdate.md) |  |  |

### Return type

[**CompaniesCompanyIdApiKeysApiKeyIdPatch200Response**](CompaniesCompanyIdApiKeysApiKeyIdPatch200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_api_keys_api_key_id_revoke_post

> <CompaniesCompanyIdApiKeysPost200Response> companies_company_id_api_keys_api_key_id_revoke_post(company_id, api_key_id, api_keys_input)

Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_key_id = 'api_key_id_example' # String | 
api_keys_input = SparteraApiSdk::ApiKeysInput.new({company_id: 'company_id_example', role_id: 3.56}) # ApiKeysInput | 

begin
  # Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.
  result = api_instance.companies_company_id_api_keys_api_key_id_revoke_post(company_id, api_key_id, api_keys_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_revoke_post: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_revoke_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysPost200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_revoke_post_with_http_info(company_id, api_key_id, api_keys_input)

```ruby
begin
  # Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_revoke_post_with_http_info(company_id, api_key_id, api_keys_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_revoke_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_key_id** | **String** |  |  |
| **api_keys_input** | [**ApiKeysInput**](ApiKeysInput.md) |  |  |

### Return type

[**CompaniesCompanyIdApiKeysPost200Response**](CompaniesCompanyIdApiKeysPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_api_keys_api_key_id_stats_get

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_api_key_id_stats_get(company_id, api_key_id)

Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_key_id = 'api_key_id_example' # String | 

begin
  # Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.
  result = api_instance.companies_company_id_api_keys_api_key_id_stats_get(company_id, api_key_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_stats_get: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_stats_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_stats_get_with_http_info(company_id, api_key_id)

```ruby
begin
  # Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_stats_get_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_stats_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_key_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_api_keys_get

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_get(company_id)

Get all API keys for a company.     Returns masked API keys for security (sk_****1234).

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 

begin
  # Get all API keys for a company.     Returns masked API keys for security (sk_****1234).
  result = api_instance.companies_company_id_api_keys_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_get: #{e}"
end
```

#### Using the companies_company_id_api_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_get_with_http_info(company_id)

```ruby
begin
  # Get all API keys for a company.     Returns masked API keys for security (sk_****1234).
  data, status_code, headers = api_instance.companies_company_id_api_keys_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_api_keys_post

> <CompaniesCompanyIdApiKeysPost200Response> companies_company_id_api_keys_post(company_id, api_keys_input)

Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SparteraApiSdk::APIKeysApi.new
company_id = 'company_id_example' # String | 
api_keys_input = SparteraApiSdk::ApiKeysInput.new({company_id: 'company_id_example', role_id: 3.56}) # ApiKeysInput | 

begin
  # Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.
  result = api_instance.companies_company_id_api_keys_post(company_id, api_keys_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_post: #{e}"
end
```

#### Using the companies_company_id_api_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysPost200Response>, Integer, Hash)> companies_company_id_api_keys_post_with_http_info(company_id, api_keys_input)

```ruby
begin
  # Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.
  data, status_code, headers = api_instance.companies_company_id_api_keys_post_with_http_info(company_id, api_keys_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **api_keys_input** | [**ApiKeysInput**](ApiKeysInput.md) |  |  |

### Return type

[**CompaniesCompanyIdApiKeysPost200Response**](CompaniesCompanyIdApiKeysPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

