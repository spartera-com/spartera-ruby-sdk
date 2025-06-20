# SparteraApiSdk::CloudProvidersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_providers_get**](CloudProvidersApi.md#cloud_providers_get) | **GET** /cloud-providers | Get a list of all cloud providers |
| [**cloud_providers_post**](CloudProvidersApi.md#cloud_providers_post) | **POST** /cloud-providers | Create single cloud provider |
| [**cloud_providers_provider_id_delete**](CloudProvidersApi.md#cloud_providers_provider_id_delete) | **DELETE** /cloud-providers/{provider_id} | Delete single cloud provider by ID |
| [**cloud_providers_provider_id_get**](CloudProvidersApi.md#cloud_providers_provider_id_get) | **GET** /cloud-providers/{provider_id} | Get single cloud provider by ID |
| [**cloud_providers_provider_id_patch**](CloudProvidersApi.md#cloud_providers_provider_id_patch) | **PATCH** /cloud-providers/{provider_id} | Update an existing cloud provider by ID |


## cloud_providers_get

> Object cloud_providers_get

Get a list of all cloud providers

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_providers_post

> Object cloud_providers_post

Create single cloud provider

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CloudProvidersApi.new

begin
  # Create single cloud provider
  result = api_instance.cloud_providers_post
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_post: #{e}"
end
```

#### Using the cloud_providers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cloud_providers_post_with_http_info

```ruby
begin
  # Create single cloud provider
  data, status_code, headers = api_instance.cloud_providers_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_providers_provider_id_delete

> Object cloud_providers_provider_id_delete(provider_id)

Delete single cloud provider by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CloudProvidersApi.new
provider_id = 'provider_id_example' # String | 

begin
  # Delete single cloud provider by ID
  result = api_instance.cloud_providers_provider_id_delete(provider_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_delete: #{e}"
end
```

#### Using the cloud_providers_provider_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cloud_providers_provider_id_delete_with_http_info(provider_id)

```ruby
begin
  # Delete single cloud provider by ID
  data, status_code, headers = api_instance.cloud_providers_provider_id_delete_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

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
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_providers_provider_id_patch

> Object cloud_providers_provider_id_patch(provider_id)

Update an existing cloud provider by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CloudProvidersApi.new
provider_id = 'provider_id_example' # String | 

begin
  # Update an existing cloud provider by ID
  result = api_instance.cloud_providers_provider_id_patch(provider_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_patch: #{e}"
end
```

#### Using the cloud_providers_provider_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cloud_providers_provider_id_patch_with_http_info(provider_id)

```ruby
begin
  # Update an existing cloud provider by ID
  data, status_code, headers = api_instance.cloud_providers_provider_id_patch_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CloudProvidersApi->cloud_providers_provider_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

