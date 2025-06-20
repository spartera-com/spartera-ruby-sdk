# SparteraApiSdk::AssetPriceHistoryApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_assets_asset_id_prices_active_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_active_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices/active | Get the currently active price for an asset |
| [**companies_company_id_assets_asset_id_prices_aph_id_delete**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_delete) | **DELETE** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Delete single price history record by ID |
| [**companies_company_id_assets_asset_id_prices_aph_id_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Get single price history record by ID |
| [**companies_company_id_assets_asset_id_prices_aph_id_patch**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_patch) | **PATCH** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Update an existing price history record by ID |
| [**companies_company_id_assets_asset_id_prices_calculate_credits_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_calculate_credits_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices/calculate_credits | POST /companies/{company_id}/assets/{asset_id}/prices/calculate_credits |
| [**companies_company_id_assets_asset_id_prices_discount_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_discount_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices/discount | POST /companies/{company_id}/assets/{asset_id}/prices/discount |
| [**companies_company_id_assets_asset_id_prices_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices | Get all price history records for a specific asset |
| [**companies_company_id_assets_asset_id_prices_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices | Create a new price history record for an asset |


## companies_company_id_assets_asset_id_prices_active_get

> Object companies_company_id_assets_asset_id_prices_active_get(company_id, asset_id)

Get the currently active price for an asset

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get the currently active price for an asset
  result = api_instance.companies_company_id_assets_asset_id_prices_active_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_active_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_active_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_active_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get the currently active price for an asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_active_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_active_get_with_http_info: #{e}"
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


## companies_company_id_assets_asset_id_prices_aph_id_delete

> Object companies_company_id_assets_asset_id_prices_aph_id_delete(company_id, asset_id, aph_id)

Delete single price history record by ID

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 
aph_id = 'aph_id_example' # String | 

begin
  # Delete single price history record by ID
  result = api_instance.companies_company_id_assets_asset_id_prices_aph_id_delete(company_id, asset_id, aph_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_delete: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Delete single price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **aph_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_aph_id_get

> Object companies_company_id_assets_asset_id_prices_aph_id_get(company_id, asset_id, aph_id)

Get single price history record by ID

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 
aph_id = 'aph_id_example' # String | 

begin
  # Get single price history record by ID
  result = api_instance.companies_company_id_assets_asset_id_prices_aph_id_get(company_id, asset_id, aph_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Get single price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **aph_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_aph_id_patch

> Object companies_company_id_assets_asset_id_prices_aph_id_patch(company_id, asset_id, aph_id)

Update an existing price history record by ID

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 
aph_id = 'aph_id_example' # String | 

begin
  # Update an existing price history record by ID
  result = api_instance.companies_company_id_assets_asset_id_prices_aph_id_patch(company_id, asset_id, aph_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_patch: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Update an existing price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **aph_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_calculate_credits_post

> Object companies_company_id_assets_asset_id_prices_calculate_credits_post(company_id, asset_id)

POST /companies/{company_id}/assets/{asset_id}/prices/calculate_credits

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/calculate_credits
  result = api_instance.companies_company_id_assets_asset_id_prices_calculate_credits_post(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_calculate_credits_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info(company_id, asset_id)

```ruby
begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/calculate_credits
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info: #{e}"
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


## companies_company_id_assets_asset_id_prices_discount_post

> Object companies_company_id_assets_asset_id_prices_discount_post(company_id, asset_id)

POST /companies/{company_id}/assets/{asset_id}/prices/discount

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  result = api_instance.companies_company_id_assets_asset_id_prices_discount_post(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_discount_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_discount_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_discount_post_with_http_info(company_id, asset_id)

```ruby
begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_discount_post_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_discount_post_with_http_info: #{e}"
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


## companies_company_id_assets_asset_id_prices_get

> Object companies_company_id_assets_asset_id_prices_get(company_id, asset_id)

Get all price history records for a specific asset

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get all price history records for a specific asset
  result = api_instance.companies_company_id_assets_asset_id_prices_get(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_get: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get all price history records for a specific asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_get_with_http_info: #{e}"
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


## companies_company_id_assets_asset_id_prices_post

> Object companies_company_id_assets_asset_id_prices_post(company_id, asset_id)

Create a new price history record for an asset

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

api_instance = SparteraApiSdk::AssetPriceHistoryApi.new
company_id = 'company_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Create a new price history record for an asset
  result = api_instance.companies_company_id_assets_asset_id_prices_post(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_assets_asset_id_prices_post_with_http_info(company_id, asset_id)

```ruby
begin
  # Create a new price history record for an asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_post_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_post_with_http_info: #{e}"
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

