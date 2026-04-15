# SparteraApiSdk::JobFunctionsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_job_functions_by_id**](JobFunctionsApi.md#get_job_functions_by_id) | **GET** /job-functions/{function_id} | Get single job function by ID |
| [**list_job_functions**](JobFunctionsApi.md#list_job_functions) | **GET** /job-functions | Get a list of all job functions |


## get_job_functions_by_id

> <GetJobFunctionsById200Response> get_job_functions_by_id(function_id)

Get single job function by ID

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

api_instance = SparteraApiSdk::JobFunctionsApi.new
function_id = 'function_id_example' # String | Unique identifier for the Function

begin
  # Get single job function by ID
  result = api_instance.get_job_functions_by_id(function_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->get_job_functions_by_id: #{e}"
end
```

#### Using the get_job_functions_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJobFunctionsById200Response>, Integer, Hash)> get_job_functions_by_id_with_http_info(function_id)

```ruby
begin
  # Get single job function by ID
  data, status_code, headers = api_instance.get_job_functions_by_id_with_http_info(function_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJobFunctionsById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->get_job_functions_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **function_id** | **String** | Unique identifier for the Function |  |

### Return type

[**GetJobFunctionsById200Response**](GetJobFunctionsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_job_functions

> <ListJobFunctions200Response> list_job_functions(opts)

Get a list of all job functions

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

api_instance = SparteraApiSdk::JobFunctionsApi.new
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all job functions
  result = api_instance.list_job_functions(opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->list_job_functions: #{e}"
end
```

#### Using the list_job_functions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListJobFunctions200Response>, Integer, Hash)> list_job_functions_with_http_info(opts)

```ruby
begin
  # Get a list of all job functions
  data, status_code, headers = api_instance.list_job_functions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListJobFunctions200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->list_job_functions_with_http_info: #{e}"
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

[**ListJobFunctions200Response**](ListJobFunctions200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

