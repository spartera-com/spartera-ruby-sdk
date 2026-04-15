# OpenapiClient::APIKeysApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_keys**](APIKeysApi.md#create_api_keys) | **POST** /companies/{company_id}/api-keys | Create single API key.     Returns the actual sk_ key (only time it&#39;s exposed) and api_key_id for future operations. |
| [**create_api_keys_api_keys_revoke**](APIKeysApi.md#create_api_keys_api_keys_revoke) | **POST** /companies/{company_id}/api-keys/{api_key_id}/revoke | Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata. |
| [**delete_api_keys**](APIKeysApi.md#delete_api_keys) | **DELETE** /companies/{company_id}/api-keys/{api_key_id} | Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup. |
| [**get_api_keys_by_id**](APIKeysApi.md#get_api_keys_by_id) | **GET** /companies/{company_id}/api-keys/{api_key_id} | Get single API key by ID.     Returns masked API key for security (sk_****1234). |
| [**get_api_keys_by_id_api_keys_stats**](APIKeysApi.md#get_api_keys_by_id_api_keys_stats) | **GET** /companies/{company_id}/api-keys/{api_key_id}/stats | Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc. |
| [**list_api_keys**](APIKeysApi.md#list_api_keys) | **GET** /companies/{company_id}/api-keys | Get all API keys for a company.     Returns masked API keys for security (sk_****1234). |
| [**update_api_keys**](APIKeysApi.md#update_api_keys) | **PATCH** /companies/{company_id}/api-keys/{api_key_id} | Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security). |


## create_api_keys

> <CreateApiKeys200Response> create_api_keys(company_id, api_keys_input, opts)

Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_keys_input = OpenapiClient::ApiKeysInput.new({company_id: 'company_id_abc123', role_id: 1}) # ApiKeysInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.
  result = api_instance.create_api_keys(company_id, api_keys_input, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_keys: #{e}"
end
```

#### Using the create_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApiKeys200Response>, Integer, Hash)> create_api_keys_with_http_info(company_id, api_keys_input, opts)

```ruby
begin
  # Create single API key.     Returns the actual sk_ key (only time it's exposed) and api_key_id for future operations.
  data, status_code, headers = api_instance.create_api_keys_with_http_info(company_id, api_keys_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApiKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_keys_input** | [**ApiKeysInput**](ApiKeysInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateApiKeys200Response**](CreateApiKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_api_keys_api_keys_revoke

> <CreateApiKeys200Response> create_api_keys_api_keys_revoke(company_id, api_key_id, api_keys_input)

Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key
api_keys_input = OpenapiClient::ApiKeysInput.new({company_id: 'company_id_abc123', role_id: 1}) # ApiKeysInput | 

begin
  # Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.
  result = api_instance.create_api_keys_api_keys_revoke(company_id, api_key_id, api_keys_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_keys_api_keys_revoke: #{e}"
end
```

#### Using the create_api_keys_api_keys_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApiKeys200Response>, Integer, Hash)> create_api_keys_api_keys_revoke_with_http_info(company_id, api_key_id, api_keys_input)

```ruby
begin
  # Explicitly revoke an API key with reason tracking.     This is different from delete as it includes revocation metadata.
  data, status_code, headers = api_instance.create_api_keys_api_keys_revoke_with_http_info(company_id, api_key_id, api_keys_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApiKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_keys_api_keys_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |
| **api_keys_input** | [**ApiKeysInput**](ApiKeysInput.md) |  |  |

### Return type

[**CreateApiKeys200Response**](CreateApiKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_keys

> <DeleteApiKeys200Response> delete_api_keys(company_id, api_key_id)

Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key

begin
  # Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.
  result = api_instance.delete_api_keys(company_id, api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_keys: #{e}"
end
```

#### Using the delete_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteApiKeys200Response>, Integer, Hash)> delete_api_keys_with_http_info(company_id, api_key_id)

```ruby
begin
  # Delete (deactivate) single API key by api_key_id.     Uses the api_key_id returned during creation for clean identification.     Fixed to use correct primary key lookup.
  data, status_code, headers = api_instance.delete_api_keys_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteApiKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |

### Return type

[**DeleteApiKeys200Response**](DeleteApiKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_keys_by_id

> <GetApiKeysById200Response> get_api_keys_by_id(company_id, api_key_id)

Get single API key by ID.     Returns masked API key for security (sk_****1234).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key

begin
  # Get single API key by ID.     Returns masked API key for security (sk_****1234).
  result = api_instance.get_api_keys_by_id(company_id, api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_by_id: #{e}"
end
```

#### Using the get_api_keys_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApiKeysById200Response>, Integer, Hash)> get_api_keys_by_id_with_http_info(company_id, api_key_id)

```ruby
begin
  # Get single API key by ID.     Returns masked API key for security (sk_****1234).
  data, status_code, headers = api_instance.get_api_keys_by_id_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApiKeysById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |

### Return type

[**GetApiKeysById200Response**](GetApiKeysById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_keys_by_id_api_keys_stats

> <GetApiKeysById200Response> get_api_keys_by_id_api_keys_stats(company_id, api_key_id)

Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key

begin
  # Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.
  result = api_instance.get_api_keys_by_id_api_keys_stats(company_id, api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_by_id_api_keys_stats: #{e}"
end
```

#### Using the get_api_keys_by_id_api_keys_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApiKeysById200Response>, Integer, Hash)> get_api_keys_by_id_api_keys_stats_with_http_info(company_id, api_key_id)

```ruby
begin
  # Get usage statistics for a specific API key.     Returns usage count, last used date, failed attempts, etc.
  data, status_code, headers = api_instance.get_api_keys_by_id_api_keys_stats_with_http_info(company_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApiKeysById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_by_id_api_keys_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |

### Return type

[**GetApiKeysById200Response**](GetApiKeysById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <ListApiKeys200Response> list_api_keys(company_id, opts)

Get all API keys for a company.     Returns masked API keys for security (sk_****1234).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get all API keys for a company.     Returns masked API keys for security (sk_****1234).
  result = api_instance.list_api_keys(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListApiKeys200Response>, Integer, Hash)> list_api_keys_with_http_info(company_id, opts)

```ruby
begin
  # Get all API keys for a company.     Returns masked API keys for security (sk_****1234).
  data, status_code, headers = api_instance.list_api_keys_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListApiKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**ListApiKeys200Response**](ListApiKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_keys

> <UpdateApiKeys200Response> update_api_keys(company_id, api_key_id, api_keys_update)

Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::APIKeysApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key
api_keys_update = OpenapiClient::ApiKeysUpdate.new # ApiKeysUpdate | 

begin
  # Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).
  result = api_instance.update_api_keys(company_id, api_key_id, api_keys_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->update_api_keys: #{e}"
end
```

#### Using the update_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateApiKeys200Response>, Integer, Hash)> update_api_keys_with_http_info(company_id, api_key_id, api_keys_update)

```ruby
begin
  # Update an existing API key by ID.     Can update metadata like name, expiration, rate limits, etc.     Cannot update the actual key value (for security).
  data, status_code, headers = api_instance.update_api_keys_with_http_info(company_id, api_key_id, api_keys_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateApiKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->update_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |
| **api_keys_update** | [**ApiKeysUpdate**](ApiKeysUpdate.md) |  |  |

### Return type

[**UpdateApiKeys200Response**](UpdateApiKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

