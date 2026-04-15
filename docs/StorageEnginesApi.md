# SparteraApiSdk::StorageEnginesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_storage_engines_by_id**](StorageEnginesApi.md#get_storage_engines_by_id) | **GET** /cloud-providers/{provider_id}/storage-engines/{engine_id} | Get single storage engine by ID |
| [**list_storage_engines**](StorageEnginesApi.md#list_storage_engines) | **GET** /cloud-providers/{provider_id}/storage-engines | Get a list of all storage engines |


## get_storage_engines_by_id

> <GetStorageEnginesById200Response> get_storage_engines_by_id(provider_id, engine_id)

Get single storage engine by ID

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

api_instance = SparteraApiSdk::StorageEnginesApi.new
provider_id = 'provider_id_example' # String | Unique identifier for the Provider
engine_id = 'engine_id_example' # String | Unique identifier for the Engine

begin
  # Get single storage engine by ID
  result = api_instance.get_storage_engines_by_id(provider_id, engine_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->get_storage_engines_by_id: #{e}"
end
```

#### Using the get_storage_engines_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStorageEnginesById200Response>, Integer, Hash)> get_storage_engines_by_id_with_http_info(provider_id, engine_id)

```ruby
begin
  # Get single storage engine by ID
  data, status_code, headers = api_instance.get_storage_engines_by_id_with_http_info(provider_id, engine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStorageEnginesById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->get_storage_engines_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique identifier for the Provider |  |
| **engine_id** | **String** | Unique identifier for the Engine |  |

### Return type

[**GetStorageEnginesById200Response**](GetStorageEnginesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_storage_engines

> <ListStorageEngines200Response> list_storage_engines(provider_id, opts)

Get a list of all storage engines

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

api_instance = SparteraApiSdk::StorageEnginesApi.new
provider_id = 'provider_id_example' # String | Unique identifier for the Provider
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all storage engines
  result = api_instance.list_storage_engines(provider_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->list_storage_engines: #{e}"
end
```

#### Using the list_storage_engines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStorageEngines200Response>, Integer, Hash)> list_storage_engines_with_http_info(provider_id, opts)

```ruby
begin
  # Get a list of all storage engines
  data, status_code, headers = api_instance.list_storage_engines_with_http_info(provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStorageEngines200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->list_storage_engines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique identifier for the Provider |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**ListStorageEngines200Response**](ListStorageEngines200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

