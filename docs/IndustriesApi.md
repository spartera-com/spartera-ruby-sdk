# SparteraApiSdk::IndustriesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_industries_by_id**](IndustriesApi.md#get_industries_by_id) | **GET** /industries/{industry_id} | Get single industry by ID |
| [**list_industries**](IndustriesApi.md#list_industries) | **GET** /industries | Get a list of all industries |
| [**list_industries_active**](IndustriesApi.md#list_industries_active) | **GET** /industries/active | Get a list of industries that have active marketplace products |


## get_industries_by_id

> <GetIndustriesById200Response> get_industries_by_id(industry_id)

Get single industry by ID

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

api_instance = SparteraApiSdk::IndustriesApi.new
industry_id = 'industry_id_example' # String | Unique identifier for the Industry

begin
  # Get single industry by ID
  result = api_instance.get_industries_by_id(industry_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->get_industries_by_id: #{e}"
end
```

#### Using the get_industries_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIndustriesById200Response>, Integer, Hash)> get_industries_by_id_with_http_info(industry_id)

```ruby
begin
  # Get single industry by ID
  data, status_code, headers = api_instance.get_industries_by_id_with_http_info(industry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIndustriesById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->get_industries_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **industry_id** | **String** | Unique identifier for the Industry |  |

### Return type

[**GetIndustriesById200Response**](GetIndustriesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_industries

> <ListIndustries200Response> list_industries(opts)

Get a list of all industries

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

api_instance = SparteraApiSdk::IndustriesApi.new
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all industries
  result = api_instance.list_industries(opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->list_industries: #{e}"
end
```

#### Using the list_industries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIndustries200Response>, Integer, Hash)> list_industries_with_http_info(opts)

```ruby
begin
  # Get a list of all industries
  data, status_code, headers = api_instance.list_industries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIndustries200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->list_industries_with_http_info: #{e}"
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

[**ListIndustries200Response**](ListIndustries200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_industries_active

> <ListIndustries200Response> list_industries_active(opts)

Get a list of industries that have active marketplace products

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

api_instance = SparteraApiSdk::IndustriesApi.new
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of industries that have active marketplace products
  result = api_instance.list_industries_active(opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->list_industries_active: #{e}"
end
```

#### Using the list_industries_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIndustries200Response>, Integer, Hash)> list_industries_active_with_http_info(opts)

```ruby
begin
  # Get a list of industries that have active marketplace products
  data, status_code, headers = api_instance.list_industries_active_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIndustries200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling IndustriesApi->list_industries_active_with_http_info: #{e}"
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

[**ListIndustries200Response**](ListIndustries200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

