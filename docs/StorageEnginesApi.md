# SparteraApiSdk::StorageEnginesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_providers_provider_id_storage_engines_engine_id_get**](StorageEnginesApi.md#cloud_providers_provider_id_storage_engines_engine_id_get) | **GET** /cloud-providers/{provider_id}/storage-engines/{engine_id} | Get single storage engine by ID |
| [**cloud_providers_provider_id_storage_engines_get**](StorageEnginesApi.md#cloud_providers_provider_id_storage_engines_get) | **GET** /cloud-providers/{provider_id}/storage-engines | Get a list of all storage engines |


## cloud_providers_provider_id_storage_engines_engine_id_get

> <CompaniesCompanyIdApiKeysGet200Response> cloud_providers_provider_id_storage_engines_engine_id_get(provider_id, engine_id)

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
provider_id = 'provider_id_example' # String | 
engine_id = 'engine_id_example' # String | 

begin
  # Get single storage engine by ID
  result = api_instance.cloud_providers_provider_id_storage_engines_engine_id_get(provider_id, engine_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->cloud_providers_provider_id_storage_engines_engine_id_get: #{e}"
end
```

#### Using the cloud_providers_provider_id_storage_engines_engine_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> cloud_providers_provider_id_storage_engines_engine_id_get_with_http_info(provider_id, engine_id)

```ruby
begin
  # Get single storage engine by ID
  data, status_code, headers = api_instance.cloud_providers_provider_id_storage_engines_engine_id_get_with_http_info(provider_id, engine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->cloud_providers_provider_id_storage_engines_engine_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  |  |
| **engine_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_providers_provider_id_storage_engines_get

> <CompaniesCompanyIdApiKeysGet200Response> cloud_providers_provider_id_storage_engines_get(provider_id)

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
provider_id = 'provider_id_example' # String | 

begin
  # Get a list of all storage engines
  result = api_instance.cloud_providers_provider_id_storage_engines_get(provider_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->cloud_providers_provider_id_storage_engines_get: #{e}"
end
```

#### Using the cloud_providers_provider_id_storage_engines_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdApiKeysGet200Response>, Integer, Hash)> cloud_providers_provider_id_storage_engines_get_with_http_info(provider_id)

```ruby
begin
  # Get a list of all storage engines
  data, status_code, headers = api_instance.cloud_providers_provider_id_storage_engines_get_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdApiKeysGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling StorageEnginesApi->cloud_providers_provider_id_storage_engines_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdApiKeysGet200Response**](CompaniesCompanyIdApiKeysGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

