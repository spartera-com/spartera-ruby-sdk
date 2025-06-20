# SparteraApiSdk::CloudProvidersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_providers_get**](CloudProvidersApi.md#cloud_providers_get) | **GET** /cloud-providers | Get a list of all cloud providers |
| [**cloud_providers_provider_id_get**](CloudProvidersApi.md#cloud_providers_provider_id_get) | **GET** /cloud-providers/{provider_id} | Get single cloud provider by ID |


## cloud_providers_get

> Object cloud_providers_get

Get a list of all cloud providers

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

api_instance = SparteraApiSdk::CloudProvidersApi.new

begin
  # Get a list of all cloud providers
  result = api_instance.cloud_providers_get
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_get: #{e}"
end
```

#### Using the cloud_providers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cloud_providers_get_with_http_info

```ruby
begin
  # Get a list of all cloud providers
  data, status_code, headers = api_instance.cloud_providers_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_providers_provider_id_get

> Object cloud_providers_provider_id_get(provider_id)

Get single cloud provider by ID

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

api_instance = SparteraApiSdk::CloudProvidersApi.new
provider_id = 'provider_id_example' # String | 

begin
  # Get single cloud provider by ID
  result = api_instance.cloud_providers_provider_id_get(provider_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_get: #{e}"
end
```

#### Using the cloud_providers_provider_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cloud_providers_provider_id_get_with_http_info(provider_id)

```ruby
begin
  # Get single cloud provider by ID
  data, status_code, headers = api_instance.cloud_providers_provider_id_get_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

