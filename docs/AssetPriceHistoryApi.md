# SparteraApiSdk::AssetPriceHistoryApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_assets_asset_id_prices_active_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_active_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices/active | Get the currently active price for an asset |
| [**companies_company_id_assets_asset_id_prices_aph_id_delete**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_delete) | **DELETE** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Delete single price history record by ID |
| [**companies_company_id_assets_asset_id_prices_aph_id_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Get single price history record by ID |
| [**companies_company_id_assets_asset_id_prices_aph_id_patch**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_aph_id_patch) | **PATCH** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Update an existing price history record by ID |
| [**companies_company_id_assets_asset_id_prices_calculate_credits_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_calculate_credits_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices/calculate_credits | Calculate the credit equivalent for a given USD price without saving |
| [**companies_company_id_assets_asset_id_prices_discount_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_discount_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices/discount | POST /companies/{company_id}/assets/{asset_id}/prices/discount |
| [**companies_company_id_assets_asset_id_prices_get**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_get) | **GET** /companies/{company_id}/assets/{asset_id}/prices | Get all price history records for a specific asset |
| [**companies_company_id_assets_asset_id_prices_post**](AssetPriceHistoryApi.md#companies_company_id_assets_asset_id_prices_post) | **POST** /companies/{company_id}/assets/{asset_id}/prices | Create a new price history record for an asset |


## companies_company_id_assets_asset_id_prices_active_get

> <CompaniesCompanyIdAssetsAssetIdPricesGet200Response> companies_company_id_assets_asset_id_prices_active_get(company_id, asset_id)

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

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesGet200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_active_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get the currently active price for an asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_active_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesGet200Response>
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

[**CompaniesCompanyIdAssetsAssetIdPricesGet200Response**](CompaniesCompanyIdAssetsAssetIdPricesGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_aph_id_delete

> <CompaniesCompanyIdAssetsAssetIdPricesAphIdDelete200Response> companies_company_id_assets_asset_id_prices_aph_id_delete(company_id, asset_id, aph_id)

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

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesAphIdDelete200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Delete single price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_delete_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesAphIdDelete200Response>
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

[**CompaniesCompanyIdAssetsAssetIdPricesAphIdDelete200Response**](CompaniesCompanyIdAssetsAssetIdPricesAphIdDelete200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_aph_id_get

> <CompaniesCompanyIdAssetsAssetIdPricesAphIdGet200Response> companies_company_id_assets_asset_id_prices_aph_id_get(company_id, asset_id, aph_id)

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

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesAphIdGet200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Get single price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_get_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesAphIdGet200Response>
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

[**CompaniesCompanyIdAssetsAssetIdPricesAphIdGet200Response**](CompaniesCompanyIdAssetsAssetIdPricesAphIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_aph_id_patch

> <CompaniesCompanyIdAssetsAssetIdPricesAphIdPatch200Response> companies_company_id_assets_asset_id_prices_aph_id_patch(company_id, asset_id, aph_id, asset_price_history_update)

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
asset_price_history_update = SparteraApiSdk::AssetPriceHistoryUpdate.new # AssetPriceHistoryUpdate | 

begin
  # Update an existing price history record by ID
  result = api_instance.companies_company_id_assets_asset_id_prices_aph_id_patch(company_id, asset_id, aph_id, asset_price_history_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_aph_id_patch: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesAphIdPatch200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info(company_id, asset_id, aph_id, asset_price_history_update)

```ruby
begin
  # Update an existing price history record by ID
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_aph_id_patch_with_http_info(company_id, asset_id, aph_id, asset_price_history_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesAphIdPatch200Response>
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
| **asset_price_history_update** | [**AssetPriceHistoryUpdate**](AssetPriceHistoryUpdate.md) |  |  |

### Return type

[**CompaniesCompanyIdAssetsAssetIdPricesAphIdPatch200Response**](CompaniesCompanyIdAssetsAssetIdPricesAphIdPatch200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_calculate_credits_post

> <CompaniesCompanyIdAssetsAssetIdPricesPost200Response> companies_company_id_assets_asset_id_prices_calculate_credits_post(company_id, asset_id, asset_price_history_input)

Calculate the credit equivalent for a given USD price without saving

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
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new({asset_id: 'asset_id_example'}) # AssetPriceHistoryInput | 

begin
  # Calculate the credit equivalent for a given USD price without saving
  result = api_instance.companies_company_id_assets_asset_id_prices_calculate_credits_post(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_calculate_credits_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesPost200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # Calculate the credit equivalent for a given USD price without saving
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_calculate_credits_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CompaniesCompanyIdAssetsAssetIdPricesPost200Response**](CompaniesCompanyIdAssetsAssetIdPricesPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_discount_post

> <CompaniesCompanyIdAssetsAssetIdPricesPost200Response> companies_company_id_assets_asset_id_prices_discount_post(company_id, asset_id, asset_price_history_input)

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
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new({asset_id: 'asset_id_example'}) # AssetPriceHistoryInput | 

begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  result = api_instance.companies_company_id_assets_asset_id_prices_discount_post(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_discount_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_discount_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesPost200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_discount_post_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_discount_post_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_discount_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CompaniesCompanyIdAssetsAssetIdPricesPost200Response**](CompaniesCompanyIdAssetsAssetIdPricesPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_get

> <CompaniesCompanyIdAssetsAssetIdPricesGet200Response> companies_company_id_assets_asset_id_prices_get(company_id, asset_id)

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

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesGet200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_get_with_http_info(company_id, asset_id)

```ruby
begin
  # Get all price history records for a specific asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_get_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesGet200Response>
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

[**CompaniesCompanyIdAssetsAssetIdPricesGet200Response**](CompaniesCompanyIdAssetsAssetIdPricesGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_assets_asset_id_prices_post

> <CompaniesCompanyIdAssetsAssetIdPricesPost200Response> companies_company_id_assets_asset_id_prices_post(company_id, asset_id, asset_price_history_input)

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
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new({asset_id: 'asset_id_example'}) # AssetPriceHistoryInput | 

begin
  # Create a new price history record for an asset
  result = api_instance.companies_company_id_assets_asset_id_prices_post(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_post: #{e}"
end
```

#### Using the companies_company_id_assets_asset_id_prices_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdAssetsAssetIdPricesPost200Response>, Integer, Hash)> companies_company_id_assets_asset_id_prices_post_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # Create a new price history record for an asset
  data, status_code, headers = api_instance.companies_company_id_assets_asset_id_prices_post_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdAssetsAssetIdPricesPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->companies_company_id_assets_asset_id_prices_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **asset_id** | **String** |  |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CompaniesCompanyIdAssetsAssetIdPricesPost200Response**](CompaniesCompanyIdAssetsAssetIdPricesPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

