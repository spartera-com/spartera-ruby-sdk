# SparteraApiSdk::AssetsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**analyze_company_handle_assets_asset_slug_get**](AssetsApi.md#analyze_company_handle_assets_asset_slug_get) | **GET** /analyze/{company_handle}/assets/{asset_slug} | Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model. |
| [**companies_company_id_assets_asset_id_delete**](AssetsApi.md#companies_company_id_assets_asset_id_delete) | **DELETE** /companies/{company_id}/assets/{asset_id} | Delete single asset by ID |
| [**companies_company_id_assets_asset_id_get**](AssetsApi.md#companies_company_id_assets_asset_id_get) | **GET** /companies/{company_id}/assets/{asset_id} | Get single asset by ID |
| [**companies_company_id_assets_asset_id_infoschema_get**](AssetsApi.md#companies_company_id_assets_asset_id_infoschema_get) | **GET** /companies/{company_id}/assets/{asset_id}/infoschema | Get the information schema for a specific asset&#39;s table |
| [**companies_company_id_assets_asset_id_infoschema_save_get**](AssetsApi.md#companies_company_id_assets_asset_id_infoschema_save_get) | **GET** /companies/{company_id}/assets/{asset_id}/infoschema/save | Retrieve and save an asset&#39;s information schema |
| [**companies_company_id_assets_asset_id_patch**](AssetsApi.md#companies_company_id_assets_asset_id_patch) | **PATCH** /companies/{company_id}/assets/{asset_id} | Update an existing asset by ID |
| [**companies_company_id_assets_asset_id_predicted_price_get**](AssetsApi.md#companies_company_id_assets_asset_id_predicted_price_get) | **GET** /companies/{company_id}/assets/{asset_id}/predicted_price | Get AI-predicted pricing for a specific asset |
| [**companies_company_id_assets_asset_id_statistics_get**](AssetsApi.md#companies_company_id_assets_asset_id_statistics_get) | **GET** /companies/{company_id}/assets/{asset_id}/statistics | Get statistics for a specific asset (public endpoint) |
| [**companies_company_id_assets_asset_id_test_get**](AssetsApi.md#companies_company_id_assets_asset_id_test_get) | **GET** /companies/{company_id}/assets/{asset_id}/test | Test out an Asset (on a subset of data) |
| [**companies_company_id_assets_get**](AssetsApi.md#companies_company_id_assets_get) | **GET** /companies/{company_id}/assets | Get all assets for a specific company |
| [**companies_company_id_assets_post**](AssetsApi.md#companies_company_id_assets_post) | **POST** /companies/{company_id}/assets | Create a new asset |
| [**companies_company_id_assets_statistics_get**](AssetsApi.md#companies_company_id_assets_statistics_get) | **GET** /companies/{company_id}/assets/statistics | Get statistics for all assets the user has access to |


## analyze_company_handle_assets_asset_slug_get

> Object analyze_company_handle_assets_asset_slug_get(asset_slug, company_handle)

Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model.

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

api_instance = SparteraApiSdk::AssetsApi.new
asset_slug = 'asset_slug_example' # String | 
company_handle = 'company_handle_example' # String | 

begin
  # Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model.
  result = api_instance.analyze_company_handle_assets_asset_slug_get(asset_slug, company_handle)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->analyze_company_handle_assets_asset_slug_get: #{e}"
end
```

#### Using the analyze_company_handle_assets_asset_slug_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> analyze_company_handle_assets_asset_slug_get_with_http_info(asset_slug, company_handle)

```ruby
begin
  # Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model.
  data, status_code, headers = api_instance.analyze_company_handle_assets_asset_slug_get_with_http_info(asset_slug, company_handle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->analyze_company_handle_assets_asset_slug_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_slug** | **String** |  |  |
| **company_handle** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_delete

> Object companies_company_id_assets_asset_id_delete(company_id, asset_id)

Delete single asset by ID

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Delete single asset by ID
  result = api_instance.companies_company_id_assets_asset_id_delete(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_delete: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_delete_with_http_info(company_id, asset_id)

```ruby
begin
  # Delete single asset by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_delete_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_get

> Object companies_company_id_assets_asset_id_get(company_id, asset_id)

Get single asset by ID

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get single asset by ID
  result = api_instance.companies_company_id_assets_asset_id_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get single asset by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_infoschema_get

> Object companies_company_id_assets_asset_id_infoschema_get(company_id, asset_id)

Get the information schema for a specific asset's table

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get the information schema for a specific asset's table
  result = api_instance.companies_company_id_assets_asset_id_infoschema_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_infoschema_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_infoschema_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_infoschema_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get the information schema for a specific asset's table
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_infoschema_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_infoschema_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_infoschema_save_get

> Object companies_company_id_assets_asset_id_infoschema_save_get(company_id, asset_id)

Retrieve and save an asset's information schema

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Retrieve and save an asset's information schema
  result = api_instance.companies_company_id_assets_asset_id_infoschema_save_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_infoschema_save_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_infoschema_save_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_infoschema_save_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Retrieve and save an asset's information schema
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_infoschema_save_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_infoschema_save_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_patch

> Object companies_company_id_assets_asset_id_patch(company_id, asset_id, asset)

Update an existing asset by ID

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 
asset = SparteraApiSdk::Asset.new({company_id: 'company_id_example', name: 'name_example', source: 'source_example'}) # Asset | 

begin
  # Update an existing asset by ID
  result = api_instance.companies_company_id_assets_asset_id_patch(company_id, asset_id, asset)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_patch: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_patch_with_http_info(company_id, asset_id, asset)

```ruby
begin
  # Update an existing asset by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_patch_with_http_info(company_id, asset_id, asset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **asset** | [**Asset**](Asset.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_assets_asset_id_predicted_price_get

> Object companies_company_id_assets_asset_id_predicted_price_get(company_id, asset_id)

Get AI-predicted pricing for a specific asset

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get AI-predicted pricing for a specific asset
  result = api_instance.companies_company_id_assets_asset_id_predicted_price_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_predicted_price_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_predicted_price_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_predicted_price_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get AI-predicted pricing for a specific asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_predicted_price_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_predicted_price_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_statistics_get

> Object companies_company_id_assets_asset_id_statistics_get(company_id, asset_id)

Get statistics for a specific asset (public endpoint)

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get statistics for a specific asset (public endpoint)
  result = api_instance.companies_company_id_assets_asset_id_statistics_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_statistics_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_statistics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_statistics_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get statistics for a specific asset (public endpoint)
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_statistics_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_statistics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_test_get

> Object companies_company_id_assets_asset_id_test_get(company_id, asset_id)

Test out an Asset (on a subset of data)

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Test out an Asset (on a subset of data)
  result = api_instance.companies_company_id_assets_asset_id_test_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_test_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_test_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_test_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Test out an Asset (on a subset of data)
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_test_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_asset_id_test_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_get

> Object companies_company_id_assets_get(company_id)

Get all assets for a specific company

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 

begin
  # Get all assets for a specific company
  result = api_instance.companies_company_id_assets_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_get: #{e}"
end
```

#### Using the companies_company_id_assets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_get_with_http_info(company_id)

```ruby
begin
  # Get all assets for a specific company
  data, status_code, headers = api_instance.companies_company_id_assets_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_post

> Object companies_company_id_assets_post(company_id, asset)

Create a new asset

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 
asset = SparteraApiSdk::Asset.new({company_id: 'company_id_example', name: 'name_example', source: 'source_example'}) # Asset | 

begin
  # Create a new asset
  result = api_instance.companies_company_id_assets_post(company_id, asset)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_post: #{e}"
end
```

#### Using the companies_company_id_assets_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_post_with_http_info(company_id, asset)

```ruby
begin
  # Create a new asset
  data, status_code, headers = api_instance.companies_company_id_assets_post_with_http_info(company_id, asset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset** | [**Asset**](Asset.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_assets_statistics_get

> Object companies_company_id_assets_statistics_get(company_id)

Get statistics for all assets the user has access to

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

api_instance = SparteraApiSdk::AssetsApi.new
company_id = 'company_id_example' # String | 

begin
  # Get statistics for all assets the user has access to
  result = api_instance.companies_company_id_assets_statistics_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_statistics_get: #{e}"
end
```

#### Using the companies_company_id_assets_statistics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_statistics_get_with_http_info(company_id)

```ruby
begin
  # Get statistics for all assets the user has access to
  data, status_code, headers = api_instance.companies_company_id_assets_statistics_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->companies_company_id_assets_statistics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

