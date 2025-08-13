# SparteraApiSdk::JobFunctionsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**job_functions_function_id_get**](JobFunctionsApi.md#job_functions_function_id_get) | **GET** /job-functions/{function_id} | Get single job function by ID |
| [**job_functions_get**](JobFunctionsApi.md#job_functions_get) | **GET** /job-functions | Get a list of all job functions |


## job_functions_function_id_get

> <JobFunctionsFunctionIdGet200Response> job_functions_function_id_get(function_id)

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
function_id = 'function_id_example' # String | 

begin
  # Get single job function by ID
  result = api_instance.job_functions_function_id_get(function_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->job_functions_function_id_get: #{e}"
end
```

#### Using the job_functions_function_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobFunctionsFunctionIdGet200Response>, Integer, Hash)> job_functions_function_id_get_with_http_info(function_id)

```ruby
begin
  # Get single job function by ID
  data, status_code, headers = api_instance.job_functions_function_id_get_with_http_info(function_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobFunctionsFunctionIdGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->job_functions_function_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **function_id** | **String** |  |  |

### Return type

[**JobFunctionsFunctionIdGet200Response**](JobFunctionsFunctionIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_functions_get

> <JobFunctionsGet200Response> job_functions_get

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

begin
  # Get a list of all job functions
  result = api_instance.job_functions_get
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->job_functions_get: #{e}"
end
```

#### Using the job_functions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobFunctionsGet200Response>, Integer, Hash)> job_functions_get_with_http_info

```ruby
begin
  # Get a list of all job functions
  data, status_code, headers = api_instance.job_functions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobFunctionsGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling JobFunctionsApi->job_functions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JobFunctionsGet200Response**](JobFunctionsGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

