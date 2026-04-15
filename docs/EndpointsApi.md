# OpenapiClient::EndpointsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_endpoints**](EndpointsApi.md#create_endpoints) | **POST** /companies/{company_id}/endpoints | Create a new endpoint |
| [**create_endpoints_keys**](EndpointsApi.md#create_endpoints_keys) | **POST** /companies/{company_id}/endpoints/{endpoint_id}/keys | POST /companies/{company_id}/endpoints/{endpoint_id}/keys |
| [**delete_endpoints**](EndpointsApi.md#delete_endpoints) | **DELETE** /companies/{company_id}/endpoints/{endpoint_id} | Delete single endpoint by ID |
| [**delete_endpoints_keys**](EndpointsApi.md#delete_endpoints_keys) | **DELETE** /companies/{company_id}/endpoints/{endpoint_id}/keys/{api_key_id} | DELETE /companies/{company_id}/endpoints/{endpoint_id}/keys/{api_key_id} |
| [**get_endpoints_by_id**](EndpointsApi.md#get_endpoints_by_id) | **GET** /companies/{company_id}/endpoints/{endpoint_id} | Get single endpoint by ID |
| [**get_endpoints_by_id_available_endpoints**](EndpointsApi.md#get_endpoints_by_id_available_endpoints) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/available-endpoints | GET /companies/{company_id}/endpoints/{endpoint_id}/available-endpoints |
| [**get_endpoints_by_id_connections_describe**](EndpointsApi.md#get_endpoints_by_id_connections_describe) | **GET** /companies/{company_id}/endpoints/../connections/{connection_id}/describe | Get schema information for a connection      Query parameters:         include_fields: Whether to include field information (default: true)         schemas: Optional comma-separated schemas to include         tables: Optional comma-separated tables to include |
| [**get_endpoints_by_id_execute**](EndpointsApi.md#get_endpoints_by_id_execute) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/execute | Execute an endpoint with pagination support.      Customer-facing route that returns paginated data.     Query params: ?start&#x3D;0&amp;limit&#x3D;100 |
| [**get_endpoints_by_id_keys**](EndpointsApi.md#get_endpoints_by_id_keys) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/keys | GET /companies/{company_id}/endpoints/{endpoint_id}/keys |
| [**get_endpoints_by_id_stats**](EndpointsApi.md#get_endpoints_by_id_stats) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/stats | Get usage statistics for an endpoint      Query parameters:         days: Number of days to analyze (default: 30) |
| [**get_endpoints_by_id_test**](EndpointsApi.md#get_endpoints_by_id_test) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/test | Test an endpoint with sample data      Request body (optional):         limit: Number of sample rows to return (default: 10) |
| [**get_endpoints_by_id_url**](EndpointsApi.md#get_endpoints_by_id_url) | **GET** /companies/{company_id}/endpoints/{endpoint_id}/url | GET /companies/{company_id}/endpoints/{endpoint_id}/url |
| [**list_endpoints**](EndpointsApi.md#list_endpoints) | **GET** /companies/{company_id}/endpoints | Get all endpoints for a specific company with pagination, filtering, and sorting |
| [**update_endpoints**](EndpointsApi.md#update_endpoints) | **PATCH** /companies/{company_id}/endpoints/{endpoint_id} | Update an existing endpoint by ID |


## create_endpoints

> <CreateEndpoints200Response> create_endpoints(company_id, endpoints_input, opts)

Create a new endpoint

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoints_input = OpenapiClient::EndpointsInput.new({company_id: 'company_id_abc123', connection_id: 'connection_id_abc123', name: 'Example Name'}) # EndpointsInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Create a new endpoint
  result = api_instance.create_endpoints(company_id, endpoints_input, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->create_endpoints: #{e}"
end
```

#### Using the create_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEndpoints200Response>, Integer, Hash)> create_endpoints_with_http_info(company_id, endpoints_input, opts)

```ruby
begin
  # Create a new endpoint
  data, status_code, headers = api_instance.create_endpoints_with_http_info(company_id, endpoints_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->create_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoints_input** | [**EndpointsInput**](EndpointsInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateEndpoints200Response**](CreateEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_endpoints_keys

> <CreateEndpoints200Response> create_endpoints_keys(company_id, endpoint_id, endpoints_input)

POST /companies/{company_id}/endpoints/{endpoint_id}/keys

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint
endpoints_input = OpenapiClient::EndpointsInput.new({company_id: 'company_id_abc123', connection_id: 'connection_id_abc123', name: 'Example Name'}) # EndpointsInput | 

begin
  # POST /companies/{company_id}/endpoints/{endpoint_id}/keys
  result = api_instance.create_endpoints_keys(company_id, endpoint_id, endpoints_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->create_endpoints_keys: #{e}"
end
```

#### Using the create_endpoints_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEndpoints200Response>, Integer, Hash)> create_endpoints_keys_with_http_info(company_id, endpoint_id, endpoints_input)

```ruby
begin
  # POST /companies/{company_id}/endpoints/{endpoint_id}/keys
  data, status_code, headers = api_instance.create_endpoints_keys_with_http_info(company_id, endpoint_id, endpoints_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->create_endpoints_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |
| **endpoints_input** | [**EndpointsInput**](EndpointsInput.md) |  |  |

### Return type

[**CreateEndpoints200Response**](CreateEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_endpoints

> <DeleteEndpoints200Response> delete_endpoints(company_id, endpoint_id)

Delete single endpoint by ID

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # Delete single endpoint by ID
  result = api_instance.delete_endpoints(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->delete_endpoints: #{e}"
end
```

#### Using the delete_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEndpoints200Response>, Integer, Hash)> delete_endpoints_with_http_info(company_id, endpoint_id)

```ruby
begin
  # Delete single endpoint by ID
  data, status_code, headers = api_instance.delete_endpoints_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->delete_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**DeleteEndpoints200Response**](DeleteEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_endpoints_keys

> <DeleteEndpoints200Response> delete_endpoints_keys(company_id, endpoint_id, api_key_id)

DELETE /companies/{company_id}/endpoints/{endpoint_id}/keys/{api_key_id}

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint
api_key_id = 'api_key_id_example' # String | Unique identifier for the Api Key

begin
  # DELETE /companies/{company_id}/endpoints/{endpoint_id}/keys/{api_key_id}
  result = api_instance.delete_endpoints_keys(company_id, endpoint_id, api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->delete_endpoints_keys: #{e}"
end
```

#### Using the delete_endpoints_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEndpoints200Response>, Integer, Hash)> delete_endpoints_keys_with_http_info(company_id, endpoint_id, api_key_id)

```ruby
begin
  # DELETE /companies/{company_id}/endpoints/{endpoint_id}/keys/{api_key_id}
  data, status_code, headers = api_instance.delete_endpoints_keys_with_http_info(company_id, endpoint_id, api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->delete_endpoints_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |
| **api_key_id** | **String** | Unique identifier for the Api Key |  |

### Return type

[**DeleteEndpoints200Response**](DeleteEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id(company_id, endpoint_id)

Get single endpoint by ID

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # Get single endpoint by ID
  result = api_instance.get_endpoints_by_id(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id: #{e}"
end
```

#### Using the get_endpoints_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_with_http_info(company_id, endpoint_id)

```ruby
begin
  # Get single endpoint by ID
  data, status_code, headers = api_instance.get_endpoints_by_id_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_available_endpoints

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_available_endpoints(company_id, endpoint_id)

GET /companies/{company_id}/endpoints/{endpoint_id}/available-endpoints

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/available-endpoints
  result = api_instance.get_endpoints_by_id_available_endpoints(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_available_endpoints: #{e}"
end
```

#### Using the get_endpoints_by_id_available_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_available_endpoints_with_http_info(company_id, endpoint_id)

```ruby
begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/available-endpoints
  data, status_code, headers = api_instance.get_endpoints_by_id_available_endpoints_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_available_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_connections_describe

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_connections_describe(company_id, connection_id)

Get schema information for a connection      Query parameters:         include_fields: Whether to include field information (default: true)         schemas: Optional comma-separated schemas to include         tables: Optional comma-separated tables to include

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection

begin
  # Get schema information for a connection      Query parameters:         include_fields: Whether to include field information (default: true)         schemas: Optional comma-separated schemas to include         tables: Optional comma-separated tables to include
  result = api_instance.get_endpoints_by_id_connections_describe(company_id, connection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_connections_describe: #{e}"
end
```

#### Using the get_endpoints_by_id_connections_describe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_connections_describe_with_http_info(company_id, connection_id)

```ruby
begin
  # Get schema information for a connection      Query parameters:         include_fields: Whether to include field information (default: true)         schemas: Optional comma-separated schemas to include         tables: Optional comma-separated tables to include
  data, status_code, headers = api_instance.get_endpoints_by_id_connections_describe_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_connections_describe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_execute

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_execute(company_id, endpoint_id)

Execute an endpoint with pagination support.      Customer-facing route that returns paginated data.     Query params: ?start=0&limit=100

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # Execute an endpoint with pagination support.      Customer-facing route that returns paginated data.     Query params: ?start=0&limit=100
  result = api_instance.get_endpoints_by_id_execute(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_execute: #{e}"
end
```

#### Using the get_endpoints_by_id_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_execute_with_http_info(company_id, endpoint_id)

```ruby
begin
  # Execute an endpoint with pagination support.      Customer-facing route that returns paginated data.     Query params: ?start=0&limit=100
  data, status_code, headers = api_instance.get_endpoints_by_id_execute_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_keys

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_keys(company_id, endpoint_id)

GET /companies/{company_id}/endpoints/{endpoint_id}/keys

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/keys
  result = api_instance.get_endpoints_by_id_keys(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_keys: #{e}"
end
```

#### Using the get_endpoints_by_id_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_keys_with_http_info(company_id, endpoint_id)

```ruby
begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/keys
  data, status_code, headers = api_instance.get_endpoints_by_id_keys_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_stats

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_stats(company_id, endpoint_id)

Get usage statistics for an endpoint      Query parameters:         days: Number of days to analyze (default: 30)

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # Get usage statistics for an endpoint      Query parameters:         days: Number of days to analyze (default: 30)
  result = api_instance.get_endpoints_by_id_stats(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_stats: #{e}"
end
```

#### Using the get_endpoints_by_id_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_stats_with_http_info(company_id, endpoint_id)

```ruby
begin
  # Get usage statistics for an endpoint      Query parameters:         days: Number of days to analyze (default: 30)
  data, status_code, headers = api_instance.get_endpoints_by_id_stats_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_test

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_test(company_id, endpoint_id)

Test an endpoint with sample data      Request body (optional):         limit: Number of sample rows to return (default: 10)

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # Test an endpoint with sample data      Request body (optional):         limit: Number of sample rows to return (default: 10)
  result = api_instance.get_endpoints_by_id_test(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_test: #{e}"
end
```

#### Using the get_endpoints_by_id_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_test_with_http_info(company_id, endpoint_id)

```ruby
begin
  # Test an endpoint with sample data      Request body (optional):         limit: Number of sample rows to return (default: 10)
  data, status_code, headers = api_instance.get_endpoints_by_id_test_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoints_by_id_url

> <GetEndpointsByIdConnectionsDescribe200Response> get_endpoints_by_id_url(company_id, endpoint_id)

GET /companies/{company_id}/endpoints/{endpoint_id}/url

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint

begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/url
  result = api_instance.get_endpoints_by_id_url(company_id, endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_url: #{e}"
end
```

#### Using the get_endpoints_by_id_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEndpointsByIdConnectionsDescribe200Response>, Integer, Hash)> get_endpoints_by_id_url_with_http_info(company_id, endpoint_id)

```ruby
begin
  # GET /companies/{company_id}/endpoints/{endpoint_id}/url
  data, status_code, headers = api_instance.get_endpoints_by_id_url_with_http_info(company_id, endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEndpointsByIdConnectionsDescribe200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->get_endpoints_by_id_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |

### Return type

[**GetEndpointsByIdConnectionsDescribe200Response**](GetEndpointsByIdConnectionsDescribe200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_endpoints

> <ListEndpoints200Response> list_endpoints(company_id, opts)

Get all endpoints for a specific company with pagination, filtering, and sorting

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get all endpoints for a specific company with pagination, filtering, and sorting
  result = api_instance.list_endpoints(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->list_endpoints: #{e}"
end
```

#### Using the list_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEndpoints200Response>, Integer, Hash)> list_endpoints_with_http_info(company_id, opts)

```ruby
begin
  # Get all endpoints for a specific company with pagination, filtering, and sorting
  data, status_code, headers = api_instance.list_endpoints_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->list_endpoints_with_http_info: #{e}"
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

[**ListEndpoints200Response**](ListEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_endpoints

> <UpdateEndpoints200Response> update_endpoints(company_id, endpoint_id, endpoints_update)

Update an existing endpoint by ID

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

api_instance = OpenapiClient::EndpointsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
endpoint_id = 'endpoint_id_example' # String | Unique identifier for the Endpoint
endpoints_update = OpenapiClient::EndpointsUpdate.new # EndpointsUpdate | 

begin
  # Update an existing endpoint by ID
  result = api_instance.update_endpoints(company_id, endpoint_id, endpoints_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->update_endpoints: #{e}"
end
```

#### Using the update_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateEndpoints200Response>, Integer, Hash)> update_endpoints_with_http_info(company_id, endpoint_id, endpoints_update)

```ruby
begin
  # Update an existing endpoint by ID
  data, status_code, headers = api_instance.update_endpoints_with_http_info(company_id, endpoint_id, endpoints_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->update_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **endpoint_id** | **String** | Unique identifier for the Endpoint |  |
| **endpoints_update** | [**EndpointsUpdate**](EndpointsUpdate.md) |  |  |

### Return type

[**UpdateEndpoints200Response**](UpdateEndpoints200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

