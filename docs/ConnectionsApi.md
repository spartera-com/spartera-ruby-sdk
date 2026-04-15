# OpenapiClient::ConnectionsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_connections**](ConnectionsApi.md#create_connections) | **POST** /companies/{company_id}/connections | Create a new connection by ID |
| [**delete_connections**](ConnectionsApi.md#delete_connections) | **DELETE** /companies/{company_id}/connections/{connection_id} | Delete single connection by ID |
| [**get_connections_by_id**](ConnectionsApi.md#get_connections_by_id) | **GET** /companies/{company_id}/connections/{connection_id} | Get single connection by ID |
| [**get_connections_by_id2**](ConnectionsApi.md#get_connections_by_id2) | **GET** /companies/{company_id}/connections/{connection_id}/test | Test the specified connection |
| [**get_connections_by_id_infoschema**](ConnectionsApi.md#get_connections_by_id_infoschema) | **GET** /companies/{company_id}/connections/{connection_id}/infoschema | Retrieve the information schema for the specified connection |
| [**list_connections**](ConnectionsApi.md#list_connections) | **GET** /companies/{company_id}/connections | Get all connections for a specific company |
| [**update_connections**](ConnectionsApi.md#update_connections) | **PATCH** /companies/{company_id}/connections/{connection_id} | Update an existing connection by ID |


## create_connections

> <CreateConnections200Response> create_connections(company_id, connections_input, opts)

Create a new connection by ID

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connections_input = OpenapiClient::ConnectionsInput.new({engine_id: 1, company_id: 'company_id_abc123'}) # ConnectionsInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Create a new connection by ID
  result = api_instance.create_connections(company_id, connections_input, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->create_connections: #{e}"
end
```

#### Using the create_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConnections200Response>, Integer, Hash)> create_connections_with_http_info(company_id, connections_input, opts)

```ruby
begin
  # Create a new connection by ID
  data, status_code, headers = api_instance.create_connections_with_http_info(company_id, connections_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConnections200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->create_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connections_input** | [**ConnectionsInput**](ConnectionsInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateConnections200Response**](CreateConnections200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_connections

> <DeleteConnections200Response> delete_connections(company_id, connection_id)

Delete single connection by ID

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection

begin
  # Delete single connection by ID
  result = api_instance.delete_connections(company_id, connection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->delete_connections: #{e}"
end
```

#### Using the delete_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteConnections200Response>, Integer, Hash)> delete_connections_with_http_info(company_id, connection_id)

```ruby
begin
  # Delete single connection by ID
  data, status_code, headers = api_instance.delete_connections_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteConnections200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->delete_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |

### Return type

[**DeleteConnections200Response**](DeleteConnections200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connections_by_id

> <GetConnectionsById200Response> get_connections_by_id(company_id, connection_id)

Get single connection by ID

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection

begin
  # Get single connection by ID
  result = api_instance.get_connections_by_id(company_id, connection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id: #{e}"
end
```

#### Using the get_connections_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionsById200Response>, Integer, Hash)> get_connections_by_id_with_http_info(company_id, connection_id)

```ruby
begin
  # Get single connection by ID
  data, status_code, headers = api_instance.get_connections_by_id_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |

### Return type

[**GetConnectionsById200Response**](GetConnectionsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connections_by_id2

> <GetConnectionsById200Response> get_connections_by_id2(company_id, connection_id)

Test the specified connection

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection

begin
  # Test the specified connection
  result = api_instance.get_connections_by_id2(company_id, connection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id2: #{e}"
end
```

#### Using the get_connections_by_id2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionsById200Response>, Integer, Hash)> get_connections_by_id2_with_http_info(company_id, connection_id)

```ruby
begin
  # Test the specified connection
  data, status_code, headers = api_instance.get_connections_by_id2_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |

### Return type

[**GetConnectionsById200Response**](GetConnectionsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connections_by_id_infoschema

> <GetConnectionsById200Response> get_connections_by_id_infoschema(company_id, connection_id)

Retrieve the information schema for the specified connection

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection

begin
  # Retrieve the information schema for the specified connection
  result = api_instance.get_connections_by_id_infoschema(company_id, connection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id_infoschema: #{e}"
end
```

#### Using the get_connections_by_id_infoschema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectionsById200Response>, Integer, Hash)> get_connections_by_id_infoschema_with_http_info(company_id, connection_id)

```ruby
begin
  # Retrieve the information schema for the specified connection
  data, status_code, headers = api_instance.get_connections_by_id_infoschema_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_connections_by_id_infoschema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |

### Return type

[**GetConnectionsById200Response**](GetConnectionsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connections

> <ListConnections200Response> list_connections(company_id, opts)

Get all connections for a specific company

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get all connections for a specific company
  result = api_instance.list_connections(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnections200Response>, Integer, Hash)> list_connections_with_http_info(company_id, opts)

```ruby
begin
  # Get all connections for a specific company
  data, status_code, headers = api_instance.list_connections_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnections200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->list_connections_with_http_info: #{e}"
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

[**ListConnections200Response**](ListConnections200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_connections

> <UpdateConnections200Response> update_connections(company_id, connection_id, connections_update)

Update an existing connection by ID

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
connection_id = 'connection_id_example' # String | Unique identifier for the Connection
connections_update = OpenapiClient::ConnectionsUpdate.new # ConnectionsUpdate | 

begin
  # Update an existing connection by ID
  result = api_instance.update_connections(company_id, connection_id, connections_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connections: #{e}"
end
```

#### Using the update_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConnections200Response>, Integer, Hash)> update_connections_with_http_info(company_id, connection_id, connections_update)

```ruby
begin
  # Update an existing connection by ID
  data, status_code, headers = api_instance.update_connections_with_http_info(company_id, connection_id, connections_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConnections200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **connection_id** | **String** | Unique identifier for the Connection |  |
| **connections_update** | [**ConnectionsUpdate**](ConnectionsUpdate.md) |  |  |

### Return type

[**UpdateConnections200Response**](UpdateConnections200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

