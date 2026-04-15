# OpenapiClient::AssetUsecasesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_asset_usecases_by_id**](AssetUsecasesApi.md#get_asset_usecases_by_id) | **GET** /asset_usecases/{auc_id} | Get single asset use case by ID |
| [**list_asset_usecases**](AssetUsecasesApi.md#list_asset_usecases) | **GET** /asset_usecases | Get a list of all asset use cases |


## get_asset_usecases_by_id

> <GetAssetUsecasesById200Response> get_asset_usecases_by_id(auc_id)

Get single asset use case by ID

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

api_instance = OpenapiClient::AssetUsecasesApi.new
auc_id = 'auc_id_example' # String | Unique identifier for the Auc

begin
  # Get single asset use case by ID
  result = api_instance.get_asset_usecases_by_id(auc_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetUsecasesApi->get_asset_usecases_by_id: #{e}"
end
```

#### Using the get_asset_usecases_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetUsecasesById200Response>, Integer, Hash)> get_asset_usecases_by_id_with_http_info(auc_id)

```ruby
begin
  # Get single asset use case by ID
  data, status_code, headers = api_instance.get_asset_usecases_by_id_with_http_info(auc_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetUsecasesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetUsecasesApi->get_asset_usecases_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auc_id** | **String** | Unique identifier for the Auc |  |

### Return type

[**GetAssetUsecasesById200Response**](GetAssetUsecasesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_asset_usecases

> <ListAssetUsecases200Response> list_asset_usecases(opts)

Get a list of all asset use cases

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

api_instance = OpenapiClient::AssetUsecasesApi.new
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all asset use cases
  result = api_instance.list_asset_usecases(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetUsecasesApi->list_asset_usecases: #{e}"
end
```

#### Using the list_asset_usecases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssetUsecases200Response>, Integer, Hash)> list_asset_usecases_with_http_info(opts)

```ruby
begin
  # Get a list of all asset use cases
  data, status_code, headers = api_instance.list_asset_usecases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssetUsecases200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetUsecasesApi->list_asset_usecases_with_http_info: #{e}"
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

[**ListAssetUsecases200Response**](ListAssetUsecases200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

