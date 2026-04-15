# SparteraApiSdk::AssetPriceHistoryApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_asset_price_history**](AssetPriceHistoryApi.md#create_asset_price_history) | **POST** /companies/{company_id}/assets/{asset_id}/prices | Create a new price history record for an asset |
| [**create_asset_price_history_prices_calculate_credits**](AssetPriceHistoryApi.md#create_asset_price_history_prices_calculate_credits) | **POST** /companies/{company_id}/assets/{asset_id}/prices/calculate_credits | Calculate the credit equivalent for a given USD price without saving |
| [**create_asset_price_history_prices_discount**](AssetPriceHistoryApi.md#create_asset_price_history_prices_discount) | **POST** /companies/{company_id}/assets/{asset_id}/prices/discount | POST /companies/{company_id}/assets/{asset_id}/prices/discount |
| [**delete_asset_price_history**](AssetPriceHistoryApi.md#delete_asset_price_history) | **DELETE** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Delete single price history record by ID |
| [**get_asset_price_history_by_id**](AssetPriceHistoryApi.md#get_asset_price_history_by_id) | **GET** /companies/{company_id}/assets/{asset_id}/prices | Get all price history records for a specific asset |
| [**get_asset_price_history_by_id_assets_prices**](AssetPriceHistoryApi.md#get_asset_price_history_by_id_assets_prices) | **GET** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Get single price history record by ID |
| [**get_asset_price_history_by_id_prices_active**](AssetPriceHistoryApi.md#get_asset_price_history_by_id_prices_active) | **GET** /companies/{company_id}/assets/{asset_id}/prices/active | Get the currently active price for an asset |
| [**update_asset_price_history**](AssetPriceHistoryApi.md#update_asset_price_history) | **PATCH** /companies/{company_id}/assets/{asset_id}/prices/{aph_id} | Update an existing price history record by ID |


## create_asset_price_history

> <CreateAssetPriceHistory200Response> create_asset_price_history(company_id, asset_id, asset_price_history_input)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new # AssetPriceHistoryInput | 

begin
  # Create a new price history record for an asset
  result = api_instance.create_asset_price_history(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history: #{e}"
end
```

#### Using the create_asset_price_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetPriceHistory200Response>, Integer, Hash)> create_asset_price_history_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # Create a new price history record for an asset
  data, status_code, headers = api_instance.create_asset_price_history_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetPriceHistory200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CreateAssetPriceHistory200Response**](CreateAssetPriceHistory200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_price_history_prices_calculate_credits

> <CreateAssetPriceHistory200Response> create_asset_price_history_prices_calculate_credits(company_id, asset_id, asset_price_history_input)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new # AssetPriceHistoryInput | 

begin
  # Calculate the credit equivalent for a given USD price without saving
  result = api_instance.create_asset_price_history_prices_calculate_credits(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history_prices_calculate_credits: #{e}"
end
```

#### Using the create_asset_price_history_prices_calculate_credits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetPriceHistory200Response>, Integer, Hash)> create_asset_price_history_prices_calculate_credits_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # Calculate the credit equivalent for a given USD price without saving
  data, status_code, headers = api_instance.create_asset_price_history_prices_calculate_credits_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetPriceHistory200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history_prices_calculate_credits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CreateAssetPriceHistory200Response**](CreateAssetPriceHistory200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_price_history_prices_discount

> <CreateAssetPriceHistory200Response> create_asset_price_history_prices_discount(company_id, asset_id, asset_price_history_input)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
asset_price_history_input = SparteraApiSdk::AssetPriceHistoryInput.new # AssetPriceHistoryInput | 

begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  result = api_instance.create_asset_price_history_prices_discount(company_id, asset_id, asset_price_history_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history_prices_discount: #{e}"
end
```

#### Using the create_asset_price_history_prices_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetPriceHistory200Response>, Integer, Hash)> create_asset_price_history_prices_discount_with_http_info(company_id, asset_id, asset_price_history_input)

```ruby
begin
  # POST /companies/{company_id}/assets/{asset_id}/prices/discount
  data, status_code, headers = api_instance.create_asset_price_history_prices_discount_with_http_info(company_id, asset_id, asset_price_history_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetPriceHistory200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->create_asset_price_history_prices_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **asset_price_history_input** | [**AssetPriceHistoryInput**](AssetPriceHistoryInput.md) |  |  |

### Return type

[**CreateAssetPriceHistory200Response**](CreateAssetPriceHistory200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_asset_price_history

> <DeleteAssetPriceHistory200Response> delete_asset_price_history(company_id, asset_id, aph_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
aph_id = 'aph_id_example' # String | Unique identifier for the Aph

begin
  # Delete single price history record by ID
  result = api_instance.delete_asset_price_history(company_id, asset_id, aph_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->delete_asset_price_history: #{e}"
end
```

#### Using the delete_asset_price_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAssetPriceHistory200Response>, Integer, Hash)> delete_asset_price_history_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Delete single price history record by ID
  data, status_code, headers = api_instance.delete_asset_price_history_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAssetPriceHistory200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->delete_asset_price_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **aph_id** | **String** | Unique identifier for the Aph |  |

### Return type

[**DeleteAssetPriceHistory200Response**](DeleteAssetPriceHistory200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_price_history_by_id

> <GetAssetPriceHistoryById200Response> get_asset_price_history_by_id(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get all price history records for a specific asset
  result = api_instance.get_asset_price_history_by_id(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id: #{e}"
end
```

#### Using the get_asset_price_history_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetPriceHistoryById200Response>, Integer, Hash)> get_asset_price_history_by_id_with_http_info(company_id, asset_id)

```ruby
begin
  # Get all price history records for a specific asset
  data, status_code, headers = api_instance.get_asset_price_history_by_id_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetPriceHistoryById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetPriceHistoryById200Response**](GetAssetPriceHistoryById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_price_history_by_id_assets_prices

> <GetAssetPriceHistoryById200Response> get_asset_price_history_by_id_assets_prices(company_id, asset_id, aph_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
aph_id = 'aph_id_example' # String | Unique identifier for the Aph

begin
  # Get single price history record by ID
  result = api_instance.get_asset_price_history_by_id_assets_prices(company_id, asset_id, aph_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id_assets_prices: #{e}"
end
```

#### Using the get_asset_price_history_by_id_assets_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetPriceHistoryById200Response>, Integer, Hash)> get_asset_price_history_by_id_assets_prices_with_http_info(company_id, asset_id, aph_id)

```ruby
begin
  # Get single price history record by ID
  data, status_code, headers = api_instance.get_asset_price_history_by_id_assets_prices_with_http_info(company_id, asset_id, aph_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetPriceHistoryById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id_assets_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **aph_id** | **String** | Unique identifier for the Aph |  |

### Return type

[**GetAssetPriceHistoryById200Response**](GetAssetPriceHistoryById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_price_history_by_id_prices_active

> <GetAssetPriceHistoryById200Response> get_asset_price_history_by_id_prices_active(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get the currently active price for an asset
  result = api_instance.get_asset_price_history_by_id_prices_active(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id_prices_active: #{e}"
end
```

#### Using the get_asset_price_history_by_id_prices_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetPriceHistoryById200Response>, Integer, Hash)> get_asset_price_history_by_id_prices_active_with_http_info(company_id, asset_id)

```ruby
begin
  # Get the currently active price for an asset
  data, status_code, headers = api_instance.get_asset_price_history_by_id_prices_active_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetPriceHistoryById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->get_asset_price_history_by_id_prices_active_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetPriceHistoryById200Response**](GetAssetPriceHistoryById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_asset_price_history

> <UpdateAssetPriceHistory200Response> update_asset_price_history(company_id, asset_id, aph_id, asset_price_history_update)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
aph_id = 'aph_id_example' # String | Unique identifier for the Aph
asset_price_history_update = SparteraApiSdk::AssetPriceHistoryUpdate.new # AssetPriceHistoryUpdate | 

begin
  # Update an existing price history record by ID
  result = api_instance.update_asset_price_history(company_id, asset_id, aph_id, asset_price_history_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->update_asset_price_history: #{e}"
end
```

#### Using the update_asset_price_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAssetPriceHistory200Response>, Integer, Hash)> update_asset_price_history_with_http_info(company_id, asset_id, aph_id, asset_price_history_update)

```ruby
begin
  # Update an existing price history record by ID
  data, status_code, headers = api_instance.update_asset_price_history_with_http_info(company_id, asset_id, aph_id, asset_price_history_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAssetPriceHistory200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetPriceHistoryApi->update_asset_price_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **aph_id** | **String** | Unique identifier for the Aph |  |
| **asset_price_history_update** | [**AssetPriceHistoryUpdate**](AssetPriceHistoryUpdate.md) |  |  |

### Return type

[**UpdateAssetPriceHistory200Response**](UpdateAssetPriceHistory200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

