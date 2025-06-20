# SparteraApiSdk::ConnectionsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_connections_connection_id_delete**](ConnectionsApi.md#companies_company_id_connections_connection_id_delete) | **DELETE** /companies/{company_id}/connections/{connection_id} | Delete single connection by ID |
| [**companies_company_id_connections_connection_id_get**](ConnectionsApi.md#companies_company_id_connections_connection_id_get) | **GET** /companies/{company_id}/connections/{connection_id} | Get single connection by ID |
| [**companies_company_id_connections_connection_id_infoschema_get**](ConnectionsApi.md#companies_company_id_connections_connection_id_infoschema_get) | **GET** /companies/{company_id}/connections/{connection_id}/infoschema | Retrieve the information schema for the specified connection |
| [**companies_company_id_connections_connection_id_patch**](ConnectionsApi.md#companies_company_id_connections_connection_id_patch) | **PATCH** /companies/{company_id}/connections/{connection_id} | Update an existing connection by ID |
| [**companies_company_id_connections_connection_id_test_get**](ConnectionsApi.md#companies_company_id_connections_connection_id_test_get) | **GET** /companies/{company_id}/connections/{connection_id}/test | Verify the specified connection to ensure it is functioning correctly |
| [**companies_company_id_connections_get**](ConnectionsApi.md#companies_company_id_connections_get) | **GET** /companies/{company_id}/connections | Get all connections for a specific company |
| [**companies_company_id_connections_post**](ConnectionsApi.md#companies_company_id_connections_post) | **POST** /companies/{company_id}/connections | Create a new connection by ID |


## companies_company_id_connections_connection_id_delete

> Object companies_company_id_connections_connection_id_delete(company_id, connection_id)

Delete single connection by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection_id = 'connection_id_example' # String | 

begin
  # Delete single connection by ID
  result = api_instance.companies_company_id_connections_connection_id_delete(company_id, connection_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_delete: #{e}"
end
```

#### Using the companies_company_id_connections_connection_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_connection_id_delete_with_http_info(company_id, connection_id)

```ruby
begin
  # Delete single connection by ID
  data, status_code, headers = api_instance.companies_company_id_connections_connection_id_delete_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_connections_connection_id_get

> Object companies_company_id_connections_connection_id_get(company_id, connection_id)

Get single connection by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection_id = 'connection_id_example' # String | 

begin
  # Get single connection by ID
  result = api_instance.companies_company_id_connections_connection_id_get(company_id, connection_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_get: #{e}"
end
```

#### Using the companies_company_id_connections_connection_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_connection_id_get_with_http_info(company_id, connection_id)

```ruby
begin
  # Get single connection by ID
  data, status_code, headers = api_instance.companies_company_id_connections_connection_id_get_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_connections_connection_id_infoschema_get

> Object companies_company_id_connections_connection_id_infoschema_get(company_id, connection_id)

Retrieve the information schema for the specified connection

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection_id = 'connection_id_example' # String | 

begin
  # Retrieve the information schema for the specified connection
  result = api_instance.companies_company_id_connections_connection_id_infoschema_get(company_id, connection_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_infoschema_get: #{e}"
end
```

#### Using the companies_company_id_connections_connection_id_infoschema_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_connection_id_infoschema_get_with_http_info(company_id, connection_id)

```ruby
begin
  # Retrieve the information schema for the specified connection
  data, status_code, headers = api_instance.companies_company_id_connections_connection_id_infoschema_get_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_infoschema_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_connections_connection_id_patch

> Object companies_company_id_connections_connection_id_patch(company_id, connection_id, connection)

Update an existing connection by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection_id = 'connection_id_example' # String | 
connection = SparteraApiSdk::Connection.new({engine_id: 'engine_id_example', company_id: 'company_id_example', visibility: 'visibility_example'}) # Connection | 

begin
  # Update an existing connection by ID
  result = api_instance.companies_company_id_connections_connection_id_patch(company_id, connection_id, connection)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_patch: #{e}"
end
```

#### Using the companies_company_id_connections_connection_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_connection_id_patch_with_http_info(company_id, connection_id, connection)

```ruby
begin
  # Update an existing connection by ID
  data, status_code, headers = api_instance.companies_company_id_connections_connection_id_patch_with_http_info(company_id, connection_id, connection)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection_id** | **String** |  |  |
| **connection** | [**Connection**](Connection.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_connections_connection_id_test_get

> Object companies_company_id_connections_connection_id_test_get(company_id, connection_id)

Verify the specified connection to ensure it is functioning correctly

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection_id = 'connection_id_example' # String | 

begin
  # Verify the specified connection to ensure it is functioning correctly
  result = api_instance.companies_company_id_connections_connection_id_test_get(company_id, connection_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_test_get: #{e}"
end
```

#### Using the companies_company_id_connections_connection_id_test_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_connection_id_test_get_with_http_info(company_id, connection_id)

```ruby
begin
  # Verify the specified connection to ensure it is functioning correctly
  data, status_code, headers = api_instance.companies_company_id_connections_connection_id_test_get_with_http_info(company_id, connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_connection_id_test_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_connections_get

> Object companies_company_id_connections_get(company_id)

Get all connections for a specific company

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 

begin
  # Get all connections for a specific company
  result = api_instance.companies_company_id_connections_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_get: #{e}"
end
```

#### Using the companies_company_id_connections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_get_with_http_info(company_id)

```ruby
begin
  # Get all connections for a specific company
  data, status_code, headers = api_instance.companies_company_id_connections_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_connections_post

> Object companies_company_id_connections_post(company_id, connection)

Create a new connection by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::ConnectionsApi.new
company_id = 'company_id_example' # String | 
connection = SparteraApiSdk::Connection.new({engine_id: 'engine_id_example', company_id: 'company_id_example', visibility: 'visibility_example'}) # Connection | 

begin
  # Create a new connection by ID
  result = api_instance.companies_company_id_connections_post(company_id, connection)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_post: #{e}"
end
```

#### Using the companies_company_id_connections_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_connections_post_with_http_info(company_id, connection)

```ruby
begin
  # Create a new connection by ID
  data, status_code, headers = api_instance.companies_company_id_connections_post_with_http_info(company_id, connection)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling ConnectionsApi->companies_company_id_connections_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **connection** | [**Connection**](Connection.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

