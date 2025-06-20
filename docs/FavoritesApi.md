# SparteraApiSdk::FavoritesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_users_user_id_favorites_category_category_get**](FavoritesApi.md#companies_company_id_users_user_id_favorites_category_category_get) | **GET** /companies/{company_id}/users/{user_id}/favorites/category/{category} | Get all favorites for the specified user in a specific category |
| [**companies_company_id_users_user_id_favorites_check_asset_id_get**](FavoritesApi.md#companies_company_id_users_user_id_favorites_check_asset_id_get) | **GET** /companies/{company_id}/users/{user_id}/favorites/check/{asset_id} | Check if the specified user has favorited a specific asset |
| [**companies_company_id_users_user_id_favorites_favorite_id_delete**](FavoritesApi.md#companies_company_id_users_user_id_favorites_favorite_id_delete) | **DELETE** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Delete single favorite by ID (unfavorite an asset) |
| [**companies_company_id_users_user_id_favorites_favorite_id_get**](FavoritesApi.md#companies_company_id_users_user_id_favorites_favorite_id_get) | **GET** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Get single favorite by ID |
| [**companies_company_id_users_user_id_favorites_favorite_id_patch**](FavoritesApi.md#companies_company_id_users_user_id_favorites_favorite_id_patch) | **PATCH** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Update an existing favorite by ID |
| [**companies_company_id_users_user_id_favorites_get**](FavoritesApi.md#companies_company_id_users_user_id_favorites_get) | **GET** /companies/{company_id}/users/{user_id}/favorites | Get a list of all favorites for a specific user |
| [**companies_company_id_users_user_id_favorites_post**](FavoritesApi.md#companies_company_id_users_user_id_favorites_post) | **POST** /companies/{company_id}/users/{user_id}/favorites | POST /companies/{company_id}/users/{user_id}/favorites |
| [**companies_company_id_users_user_id_favorites_uncategorized_get**](FavoritesApi.md#companies_company_id_users_user_id_favorites_uncategorized_get) | **GET** /companies/{company_id}/users/{user_id}/favorites/uncategorized | Get all favorites for the specified user that don&#39;t have a category |


## companies_company_id_users_user_id_favorites_category_category_get

> Object companies_company_id_users_user_id_favorites_category_category_get(company_id, user_id, category)

Get all favorites for the specified user in a specific category

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
category = 'category_example' # String | 

begin
  # Get all favorites for the specified user in a specific category
  result = api_instance.companies_company_id_users_user_id_favorites_category_category_get(company_id, user_id, category)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_category_category_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_category_category_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_category_category_get_with_http_info(company_id, user_id, category)

```ruby
begin
  # Get all favorites for the specified user in a specific category
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_category_category_get_with_http_info(company_id, user_id, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_category_category_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **category** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_check_asset_id_get

> Object companies_company_id_users_user_id_favorites_check_asset_id_get(company_id, user_id, asset_id)

Check if the specified user has favorited a specific asset

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Check if the specified user has favorited a specific asset
  result = api_instance.companies_company_id_users_user_id_favorites_check_asset_id_get(company_id, user_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_check_asset_id_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_check_asset_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_check_asset_id_get_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Check if the specified user has favorited a specific asset
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_check_asset_id_get_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_check_asset_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_favorite_id_delete

> Object companies_company_id_users_user_id_favorites_favorite_id_delete(company_id, user_id, favorite_id)

Delete single favorite by ID (unfavorite an asset)

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
favorite_id = 'favorite_id_example' # String | 

begin
  # Delete single favorite by ID (unfavorite an asset)
  result = api_instance.companies_company_id_users_user_id_favorites_favorite_id_delete(company_id, user_id, favorite_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_delete: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_favorite_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_favorite_id_delete_with_http_info(company_id, user_id, favorite_id)

```ruby
begin
  # Delete single favorite by ID (unfavorite an asset)
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_favorite_id_delete_with_http_info(company_id, user_id, favorite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **favorite_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_favorite_id_get

> Object companies_company_id_users_user_id_favorites_favorite_id_get(company_id, user_id, favorite_id)

Get single favorite by ID

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
favorite_id = 'favorite_id_example' # String | 

begin
  # Get single favorite by ID
  result = api_instance.companies_company_id_users_user_id_favorites_favorite_id_get(company_id, user_id, favorite_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_favorite_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_favorite_id_get_with_http_info(company_id, user_id, favorite_id)

```ruby
begin
  # Get single favorite by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_favorite_id_get_with_http_info(company_id, user_id, favorite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **favorite_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_favorite_id_patch

> Object companies_company_id_users_user_id_favorites_favorite_id_patch(company_id, user_id, favorite_id, favorite)

Update an existing favorite by ID

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
favorite_id = 'favorite_id_example' # String | 
favorite = SparteraApiSdk::Favorite.new({asset_id: 'asset_id_example', company_id: 'company_id_example', priority: 'priority_example'}) # Favorite | 

begin
  # Update an existing favorite by ID
  result = api_instance.companies_company_id_users_user_id_favorites_favorite_id_patch(company_id, user_id, favorite_id, favorite)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_patch: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_favorite_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_favorite_id_patch_with_http_info(company_id, user_id, favorite_id, favorite)

```ruby
begin
  # Update an existing favorite by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_favorite_id_patch_with_http_info(company_id, user_id, favorite_id, favorite)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_favorite_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **favorite_id** | **String** |  |  |
| **favorite** | [**Favorite**](Favorite.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_get

> Object companies_company_id_users_user_id_favorites_get(company_id, user_id)

Get a list of all favorites for a specific user

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Get a list of all favorites for a specific user
  result = api_instance.companies_company_id_users_user_id_favorites_get(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_get_with_http_info(company_id, user_id)

```ruby
begin
  # Get a list of all favorites for a specific user
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_get_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_post

> Object companies_company_id_users_user_id_favorites_post(company_id, user_id, favorite)

POST /companies/{company_id}/users/{user_id}/favorites

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
favorite = SparteraApiSdk::Favorite.new({asset_id: 'asset_id_example', company_id: 'company_id_example', priority: 'priority_example'}) # Favorite | 

begin
  # POST /companies/{company_id}/users/{user_id}/favorites
  result = api_instance.companies_company_id_users_user_id_favorites_post(company_id, user_id, favorite)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_post: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_post_with_http_info(company_id, user_id, favorite)

```ruby
begin
  # POST /companies/{company_id}/users/{user_id}/favorites
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_post_with_http_info(company_id, user_id, favorite)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **favorite** | [**Favorite**](Favorite.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_users_user_id_favorites_uncategorized_get

> Object companies_company_id_users_user_id_favorites_uncategorized_get(company_id, user_id)

Get all favorites for the specified user that don't have a category

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

api_instance = SparteraApiSdk::FavoritesApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Get all favorites for the specified user that don't have a category
  result = api_instance.companies_company_id_users_user_id_favorites_uncategorized_get(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_uncategorized_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_favorites_uncategorized_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_favorites_uncategorized_get_with_http_info(company_id, user_id)

```ruby
begin
  # Get all favorites for the specified user that don't have a category
  data, status_code, headers = api_instance.companies_company_id_users_user_id_favorites_uncategorized_get_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling FavoritesApi->companies_company_id_users_user_id_favorites_uncategorized_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

