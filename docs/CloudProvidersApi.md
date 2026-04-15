# OpenapiClient::CloudProvidersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_cloud_providers_by_id**](CloudProvidersApi.md#get_cloud_providers_by_id) | **GET** /cloud-providers/{provider_id} | Get single cloud provider by ID |
| [**list_cloud_providers**](CloudProvidersApi.md#list_cloud_providers) | **GET** /cloud-providers | Get a list of all cloud providers |


## get_cloud_providers_by_id

> <GetCloudProvidersById200Response> get_cloud_providers_by_id(provider_id)

Get single cloud provider by ID

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

api_instance = OpenapiClient::CloudProvidersApi.new
provider_id = 'provider_id_example' # String | Unique identifier for the Provider

begin
  # Get single cloud provider by ID
  result = api_instance.get_cloud_providers_by_id(provider_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CloudProvidersApi->get_cloud_providers_by_id: #{e}"
end
```

#### Using the get_cloud_providers_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCloudProvidersById200Response>, Integer, Hash)> get_cloud_providers_by_id_with_http_info(provider_id)

```ruby
begin
  # Get single cloud provider by ID
  data, status_code, headers = api_instance.get_cloud_providers_by_id_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCloudProvidersById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CloudProvidersApi->get_cloud_providers_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique identifier for the Provider |  |

### Return type

[**GetCloudProvidersById200Response**](GetCloudProvidersById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cloud_providers

> <ListCloudProviders200Response> list_cloud_providers(opts)

Get a list of all cloud providers

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

api_instance = OpenapiClient::CloudProvidersApi.new
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all cloud providers
  result = api_instance.list_cloud_providers(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CloudProvidersApi->list_cloud_providers: #{e}"
end
```

#### Using the list_cloud_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCloudProviders200Response>, Integer, Hash)> list_cloud_providers_with_http_info(opts)

```ruby
begin
  # Get a list of all cloud providers
  data, status_code, headers = api_instance.list_cloud_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCloudProviders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CloudProvidersApi->list_cloud_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**ListCloudProviders200Response**](ListCloudProviders200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

