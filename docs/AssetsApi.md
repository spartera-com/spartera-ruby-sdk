# SparteraApiSdk::AssetsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_assets**](AssetsApi.md#create_assets) | **POST** /companies/{company_id}/assets | Create a new asset |
| [**create_assets_analyze**](AssetsApi.md#create_assets_analyze) | **POST** /analyze/{company_handle}/assets/{asset_slug} | Process (analyze) an asset with dynamic rate limiting applied via decorator. |
| [**create_assets_scan_column**](AssetsApi.md#create_assets_scan_column) | **POST** /companies/{company_id}/assets/{asset_id}/scan_column | Scan a column in the asset&#39;s table to retrieve distinct values      Request Body:         column (str): Column name to scan         limit (int, optional): Maximum distinct values to return (default 1000, max 5000)      Returns:         Flask Response with scan results |
| [**create_assets_test**](AssetsApi.md#create_assets_test) | **POST** /companies/{company_id}/assets/{asset_id}/test | POST /companies/{company_id}/assets/{asset_id}/test |
| [**delete_assets**](AssetsApi.md#delete_assets) | **DELETE** /companies/{company_id}/assets/{asset_id} | Delete single asset by ID |
| [**get_assets_by_id**](AssetsApi.md#get_assets_by_id) | **GET** /companies/{company_id}/assets/{asset_id} | Get single asset by ID |
| [**get_assets_by_id2**](AssetsApi.md#get_assets_by_id2) | **GET** /companies/{company_id}/assets/{asset_id}/statistics | Get statistics for a specific asset (public endpoint) |
| [**get_assets_by_id_analyze**](AssetsApi.md#get_assets_by_id_analyze) | **GET** /analyze/{company_handle}/assets/{asset_slug} | Process (analyze) an asset with dynamic rate limiting applied via decorator. |
| [**get_assets_by_id_infoschema**](AssetsApi.md#get_assets_by_id_infoschema) | **GET** /companies/{company_id}/assets/{asset_id}/infoschema | Get the information schema for a specific asset&#39;s table |
| [**get_assets_by_id_infoschema_save**](AssetsApi.md#get_assets_by_id_infoschema_save) | **GET** /companies/{company_id}/assets/{asset_id}/infoschema/save | Retrieve and save an asset&#39;s information schema |
| [**get_assets_by_id_predicted_price**](AssetsApi.md#get_assets_by_id_predicted_price) | **GET** /companies/{company_id}/assets/{asset_id}/predicted_price | Get AI-predicted pricing for a specific asset |
| [**get_assets_by_id_statistics**](AssetsApi.md#get_assets_by_id_statistics) | **GET** /companies/{company_id}/assets/statistics | Get statistics for all assets the user has access to |
| [**get_assets_by_id_test**](AssetsApi.md#get_assets_by_id_test) | **GET** /companies/{company_id}/assets/{asset_id}/test | GET /companies/{company_id}/assets/{asset_id}/test |
| [**list_assets**](AssetsApi.md#list_assets) | **GET** /companies/{company_id}/assets | Get all assets for a specific company |
| [**list_assets_search**](AssetsApi.md#list_assets_search) | **GET** /companies/{company_id}/assets/search | Search and filter assets with advanced options      Query Parameters:         q: Search query string         category: Filter by category         sport: Filter by sport tag         sort_by: Sort field (name|recent|popular|trending)         limit: Number of results (default 20, max 100)         offset: Offset for pagination         include_recommended: Include recommendations (true/false)         include_schema: Include asset_schema in response (true/false, default false) |
| [**update_assets**](AssetsApi.md#update_assets) | **PATCH** /companies/{company_id}/assets/{asset_id} | Update an existing asset by ID |


## create_assets

> <CreateAssetsAnalyze200Response> create_assets(company_id, assets_input, opts)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
assets_input = SparteraApiSdk::AssetsInput.new({company_id: 'company_id_abc123', name: 'Example Name', source: 'MANUAL'}) # AssetsInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Create a new asset
  result = api_instance.create_assets(company_id, assets_input, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets: #{e}"
end
```

#### Using the create_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetsAnalyze200Response>, Integer, Hash)> create_assets_with_http_info(company_id, assets_input, opts)

```ruby
begin
  # Create a new asset
  data, status_code, headers = api_instance.create_assets_with_http_info(company_id, assets_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetsAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **assets_input** | [**AssetsInput**](AssetsInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateAssetsAnalyze200Response**](CreateAssetsAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_assets_analyze

> <CreateAssetsAnalyze200Response> create_assets_analyze(company_handle, asset_slug, assets_input)

Process (analyze) an asset with dynamic rate limiting applied via decorator.

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
company_handle = 'company_handle_example' # String | Human-readable handle for the Company
asset_slug = 'asset_slug_example' # String | URL-friendly slug for the Asset
assets_input = SparteraApiSdk::AssetsInput.new({company_id: 'company_id_abc123', name: 'Example Name', source: 'MANUAL'}) # AssetsInput | 

begin
  # Process (analyze) an asset with dynamic rate limiting applied via decorator.
  result = api_instance.create_assets_analyze(company_handle, asset_slug, assets_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_analyze: #{e}"
end
```

#### Using the create_assets_analyze_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetsAnalyze200Response>, Integer, Hash)> create_assets_analyze_with_http_info(company_handle, asset_slug, assets_input)

```ruby
begin
  # Process (analyze) an asset with dynamic rate limiting applied via decorator.
  data, status_code, headers = api_instance.create_assets_analyze_with_http_info(company_handle, asset_slug, assets_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetsAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_analyze_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_handle** | **String** | Human-readable handle for the Company |  |
| **asset_slug** | **String** | URL-friendly slug for the Asset |  |
| **assets_input** | [**AssetsInput**](AssetsInput.md) |  |  |

### Return type

[**CreateAssetsAnalyze200Response**](CreateAssetsAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_assets_scan_column

> <CreateAssetsAnalyze200Response> create_assets_scan_column(company_id, asset_id, assets_input)

Scan a column in the asset's table to retrieve distinct values      Request Body:         column (str): Column name to scan         limit (int, optional): Maximum distinct values to return (default 1000, max 5000)      Returns:         Flask Response with scan results

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
assets_input = SparteraApiSdk::AssetsInput.new({company_id: 'company_id_abc123', name: 'Example Name', source: 'MANUAL'}) # AssetsInput | 

begin
  # Scan a column in the asset's table to retrieve distinct values      Request Body:         column (str): Column name to scan         limit (int, optional): Maximum distinct values to return (default 1000, max 5000)      Returns:         Flask Response with scan results
  result = api_instance.create_assets_scan_column(company_id, asset_id, assets_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_scan_column: #{e}"
end
```

#### Using the create_assets_scan_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetsAnalyze200Response>, Integer, Hash)> create_assets_scan_column_with_http_info(company_id, asset_id, assets_input)

```ruby
begin
  # Scan a column in the asset's table to retrieve distinct values      Request Body:         column (str): Column name to scan         limit (int, optional): Maximum distinct values to return (default 1000, max 5000)      Returns:         Flask Response with scan results
  data, status_code, headers = api_instance.create_assets_scan_column_with_http_info(company_id, asset_id, assets_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetsAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_scan_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **assets_input** | [**AssetsInput**](AssetsInput.md) |  |  |

### Return type

[**CreateAssetsAnalyze200Response**](CreateAssetsAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_assets_test

> <CreateAssetsAnalyze200Response> create_assets_test(company_id, asset_id, assets_input)

POST /companies/{company_id}/assets/{asset_id}/test

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
assets_input = SparteraApiSdk::AssetsInput.new({company_id: 'company_id_abc123', name: 'Example Name', source: 'MANUAL'}) # AssetsInput | 

begin
  # POST /companies/{company_id}/assets/{asset_id}/test
  result = api_instance.create_assets_test(company_id, asset_id, assets_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_test: #{e}"
end
```

#### Using the create_assets_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAssetsAnalyze200Response>, Integer, Hash)> create_assets_test_with_http_info(company_id, asset_id, assets_input)

```ruby
begin
  # POST /companies/{company_id}/assets/{asset_id}/test
  data, status_code, headers = api_instance.create_assets_test_with_http_info(company_id, asset_id, assets_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAssetsAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->create_assets_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **assets_input** | [**AssetsInput**](AssetsInput.md) |  |  |

### Return type

[**CreateAssetsAnalyze200Response**](CreateAssetsAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_assets

> <DeleteAssets200Response> delete_assets(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Delete single asset by ID
  result = api_instance.delete_assets(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->delete_assets: #{e}"
end
```

#### Using the delete_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAssets200Response>, Integer, Hash)> delete_assets_with_http_info(company_id, asset_id)

```ruby
begin
  # Delete single asset by ID
  data, status_code, headers = api_instance.delete_assets_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->delete_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**DeleteAssets200Response**](DeleteAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id

> <GetAssetsByIdAnalyze200Response> get_assets_by_id(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get single asset by ID
  result = api_instance.get_assets_by_id(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id: #{e}"
end
```

#### Using the get_assets_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_with_http_info(company_id, asset_id)

```ruby
begin
  # Get single asset by ID
  data, status_code, headers = api_instance.get_assets_by_id_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id2

> <GetAssetsByIdAnalyze200Response> get_assets_by_id2(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get statistics for a specific asset (public endpoint)
  result = api_instance.get_assets_by_id2(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id2: #{e}"
end
```

#### Using the get_assets_by_id2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id2_with_http_info(company_id, asset_id)

```ruby
begin
  # Get statistics for a specific asset (public endpoint)
  data, status_code, headers = api_instance.get_assets_by_id2_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_analyze

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_analyze(company_handle, asset_slug)

Process (analyze) an asset with dynamic rate limiting applied via decorator.

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
company_handle = 'company_handle_example' # String | Human-readable handle for the Company
asset_slug = 'asset_slug_example' # String | URL-friendly slug for the Asset

begin
  # Process (analyze) an asset with dynamic rate limiting applied via decorator.
  result = api_instance.get_assets_by_id_analyze(company_handle, asset_slug)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_analyze: #{e}"
end
```

#### Using the get_assets_by_id_analyze_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_analyze_with_http_info(company_handle, asset_slug)

```ruby
begin
  # Process (analyze) an asset with dynamic rate limiting applied via decorator.
  data, status_code, headers = api_instance.get_assets_by_id_analyze_with_http_info(company_handle, asset_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_analyze_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_handle** | **String** | Human-readable handle for the Company |  |
| **asset_slug** | **String** | URL-friendly slug for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_infoschema

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_infoschema(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get the information schema for a specific asset's table
  result = api_instance.get_assets_by_id_infoschema(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_infoschema: #{e}"
end
```

#### Using the get_assets_by_id_infoschema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_infoschema_with_http_info(company_id, asset_id)

```ruby
begin
  # Get the information schema for a specific asset's table
  data, status_code, headers = api_instance.get_assets_by_id_infoschema_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_infoschema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_infoschema_save

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_infoschema_save(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Retrieve and save an asset's information schema
  result = api_instance.get_assets_by_id_infoschema_save(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_infoschema_save: #{e}"
end
```

#### Using the get_assets_by_id_infoschema_save_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_infoschema_save_with_http_info(company_id, asset_id)

```ruby
begin
  # Retrieve and save an asset's information schema
  data, status_code, headers = api_instance.get_assets_by_id_infoschema_save_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_infoschema_save_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_predicted_price

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_predicted_price(company_id, asset_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get AI-predicted pricing for a specific asset
  result = api_instance.get_assets_by_id_predicted_price(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_predicted_price: #{e}"
end
```

#### Using the get_assets_by_id_predicted_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_predicted_price_with_http_info(company_id, asset_id)

```ruby
begin
  # Get AI-predicted pricing for a specific asset
  data, status_code, headers = api_instance.get_assets_by_id_predicted_price_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_predicted_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_statistics

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_statistics(company_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company

begin
  # Get statistics for all assets the user has access to
  result = api_instance.get_assets_by_id_statistics(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_statistics: #{e}"
end
```

#### Using the get_assets_by_id_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_statistics_with_http_info(company_id)

```ruby
begin
  # Get statistics for all assets the user has access to
  data, status_code, headers = api_instance.get_assets_by_id_statistics_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assets_by_id_test

> <GetAssetsByIdAnalyze200Response> get_assets_by_id_test(company_id, asset_id)

GET /companies/{company_id}/assets/{asset_id}/test

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # GET /companies/{company_id}/assets/{asset_id}/test
  result = api_instance.get_assets_by_id_test(company_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_test: #{e}"
end
```

#### Using the get_assets_by_id_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetsByIdAnalyze200Response>, Integer, Hash)> get_assets_by_id_test_with_http_info(company_id, asset_id)

```ruby
begin
  # GET /companies/{company_id}/assets/{asset_id}/test
  data, status_code, headers = api_instance.get_assets_by_id_test_with_http_info(company_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetsByIdAnalyze200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->get_assets_by_id_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAssetsByIdAnalyze200Response**](GetAssetsByIdAnalyze200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assets

> <ListAssets200Response> list_assets(company_id, opts)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get all assets for a specific company
  result = api_instance.list_assets(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->list_assets: #{e}"
end
```

#### Using the list_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssets200Response>, Integer, Hash)> list_assets_with_http_info(company_id, opts)

```ruby
begin
  # Get all assets for a specific company
  data, status_code, headers = api_instance.list_assets_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->list_assets_with_http_info: #{e}"
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

[**ListAssets200Response**](ListAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assets_search

> <ListAssets200Response> list_assets_search(company_id, opts)

Search and filter assets with advanced options      Query Parameters:         q: Search query string         category: Filter by category         sport: Filter by sport tag         sort_by: Sort field (name|recent|popular|trending)         limit: Number of results (default 20, max 100)         offset: Offset for pagination         include_recommended: Include recommendations (true/false)         include_schema: Include asset_schema in response (true/false, default false)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Search and filter assets with advanced options      Query Parameters:         q: Search query string         category: Filter by category         sport: Filter by sport tag         sort_by: Sort field (name|recent|popular|trending)         limit: Number of results (default 20, max 100)         offset: Offset for pagination         include_recommended: Include recommendations (true/false)         include_schema: Include asset_schema in response (true/false, default false)
  result = api_instance.list_assets_search(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->list_assets_search: #{e}"
end
```

#### Using the list_assets_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssets200Response>, Integer, Hash)> list_assets_search_with_http_info(company_id, opts)

```ruby
begin
  # Search and filter assets with advanced options      Query Parameters:         q: Search query string         category: Filter by category         sport: Filter by sport tag         sort_by: Sort field (name|recent|popular|trending)         limit: Number of results (default 20, max 100)         offset: Offset for pagination         include_recommended: Include recommendations (true/false)         include_schema: Include asset_schema in response (true/false, default false)
  data, status_code, headers = api_instance.list_assets_search_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->list_assets_search_with_http_info: #{e}"
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

[**ListAssets200Response**](ListAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_assets

> <UpdateAssets200Response> update_assets(company_id, asset_id, assets_update)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
asset_id = 'asset_id_example' # String | Unique identifier for the Asset
assets_update = SparteraApiSdk::AssetsUpdate.new # AssetsUpdate | 

begin
  # Update an existing asset by ID
  result = api_instance.update_assets(company_id, asset_id, assets_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->update_assets: #{e}"
end
```

#### Using the update_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAssets200Response>, Integer, Hash)> update_assets_with_http_info(company_id, asset_id, assets_update)

```ruby
begin
  # Update an existing asset by ID
  data, status_code, headers = api_instance.update_assets_with_http_info(company_id, asset_id, assets_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AssetsApi->update_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |
| **assets_update** | [**AssetsUpdate**](AssetsUpdate.md) |  |  |

### Return type

[**UpdateAssets200Response**](UpdateAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

