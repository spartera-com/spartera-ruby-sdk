# SparteraApiSdk::APIKeysApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_api_keys_api_key_id_get**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_get) | **GET** /companies/{company_id}/api-keys/{api_key_id} | Get single API key by ID |
| [**companies_company_id_api_keys_api_key_id_patch**](APIKeysApi.md#companies_company_id_api_keys_api_key_id_patch) | **PATCH** /companies/{company_id}/api-keys/{api_key_id} | Update an existing API key by ID |
| [**companies_company_id_api_keys_get**](APIKeysApi.md#companies_company_id_api_keys_get) | **GET** /companies/{company_id}/api-keys | Get all API keys |
| [**companies_company_id_api_keys_post**](APIKeysApi.md#companies_company_id_api_keys_post) | **POST** /companies/{company_id}/api-keys | Create single API key |
| [**companies_company_id_api_keys_token_delete**](APIKeysApi.md#companies_company_id_api_keys_token_delete) | **DELETE** /companies/{company_id}/api-keys/{token} | Delete single API key by token |


## companies_company_id_api_keys_api_key_id_get

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_api_key_id_get(company_id, api_key_id)

Get single API key by ID

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
  # Get single API key by ID
  result = api_instance.companies_company_id_api_keys_api_key_id_get(company_id, api_key_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_get: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_get_with_http_info(company_id, api_key_id)

```ruby
begin
  # Get single API key by ID
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_get_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
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

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_api_keys_api_key_id_patch

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_api_key_id_patch(company_id, api_key_id)

Update an existing API key by ID

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
  # Update an existing API key by ID
  result = api_instance.companies_company_id_api_keys_api_key_id_patch(company_id, api_key_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_patch: #{e}"
end
```

#### Using the companies_company_id_api_keys_api_key_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_api_key_id_patch_with_http_info(company_id, api_key_id)

```ruby
begin
  # Update an existing API key by ID
  data, status_code, headers = api_instance.companies_company_id_api_keys_api_key_id_patch_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_api_key_id_patch_with_http_info: #{e}"
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

Get all API keys

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
  # Get all API keys
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
  # Get all API keys
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

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_post(company_id)

Create single API key

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
  # Create single API key
  result = api_instance.companies_company_id_api_keys_post(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_post: #{e}"
end
```

#### Using the companies_company_id_api_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_post_with_http_info(company_id)

```ruby
begin
  # Create single API key
  data, status_code, headers = api_instance.companies_company_id_api_keys_post_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_post_with_http_info: #{e}"
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


## companies_company_id_api_keys_token_delete

> <CompaniesCompanyIdApiKeysGet200Response> companies_company_id_api_keys_token_delete(company_id, token)

Delete single API key by token

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
token = 'token_example' # String | 

begin
  # Delete single API key by token
  result = api_instance.companies_company_id_api_keys_token_delete(company_id, token)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_token_delete: #{e}"
end
```

#### Using the companies_company_id_api_keys_token_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> companies_company_id_api_keys_token_delete_with_http_info(company_id, token)

```ruby
begin
  # Delete single API key by token
  data, status_code, headers = api_instance.companies_company_id_api_keys_token_delete_with_http_info(company_id, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling APIKeysApi->companies_company_id_api_keys_token_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **token** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

