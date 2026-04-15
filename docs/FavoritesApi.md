# OpenapiClient::FavoritesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_favorites**](FavoritesApi.md#create_favorites) | **POST** /companies/{company_id}/users/{user_id}/favorites | POST /companies/{company_id}/users/{user_id}/favorites |
| [**delete_favorites**](FavoritesApi.md#delete_favorites) | **DELETE** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Delete single favorite by ID (unfavorite an asset) |
| [**get_favorites_by_id**](FavoritesApi.md#get_favorites_by_id) | **GET** /companies/{company_id}/users/{user_id}/favorites | Get a list of all favorites for a specific user |
| [**get_favorites_by_id_users**](FavoritesApi.md#get_favorites_by_id_users) | **GET** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Get single favorite by ID |
| [**get_favorites_by_id_users_category**](FavoritesApi.md#get_favorites_by_id_users_category) | **GET** /companies/{company_id}/users/{user_id}/favorites/category/{category} | Get all favorites for the specified user in a specific category |
| [**get_favorites_by_id_users_check**](FavoritesApi.md#get_favorites_by_id_users_check) | **GET** /companies/{company_id}/users/{user_id}/favorites/check/{asset_id} | Check if the specified user has favorited a specific asset |
| [**get_favorites_by_id_users_uncategorized**](FavoritesApi.md#get_favorites_by_id_users_uncategorized) | **GET** /companies/{company_id}/users/{user_id}/favorites/uncategorized | Get all favorites for the specified user that don&#39;t have a category |
| [**update_favorites**](FavoritesApi.md#update_favorites) | **PATCH** /companies/{company_id}/users/{user_id}/favorites/{favorite_id} | Update an existing favorite by ID |


## create_favorites

> <CreateFavorites200Response> create_favorites(company_id, user_id, favorites_input)

POST /companies/{company_id}/users/{user_id}/favorites

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
favorites_input = OpenapiClient::FavoritesInput.new({asset_id: 'asset_id_abc123', company_id: 'company_id_abc123'}) # FavoritesInput | 

begin
  # POST /companies/{company_id}/users/{user_id}/favorites
  result = api_instance.create_favorites(company_id, user_id, favorites_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->create_favorites: #{e}"
end
```

#### Using the create_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFavorites200Response>, Integer, Hash)> create_favorites_with_http_info(company_id, user_id, favorites_input)

```ruby
begin
  # POST /companies/{company_id}/users/{user_id}/favorites
  data, status_code, headers = api_instance.create_favorites_with_http_info(company_id, user_id, favorites_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFavorites200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->create_favorites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **favorites_input** | [**FavoritesInput**](FavoritesInput.md) |  |  |

### Return type

[**CreateFavorites200Response**](CreateFavorites200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_favorites

> <DeleteFavorites200Response> delete_favorites(company_id, user_id, favorite_id)

Delete single favorite by ID (unfavorite an asset)

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
favorite_id = 'favorite_id_example' # String | Unique identifier for the Favorite

begin
  # Delete single favorite by ID (unfavorite an asset)
  result = api_instance.delete_favorites(company_id, user_id, favorite_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->delete_favorites: #{e}"
end
```

#### Using the delete_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFavorites200Response>, Integer, Hash)> delete_favorites_with_http_info(company_id, user_id, favorite_id)

```ruby
begin
  # Delete single favorite by ID (unfavorite an asset)
  data, status_code, headers = api_instance.delete_favorites_with_http_info(company_id, user_id, favorite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFavorites200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->delete_favorites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **favorite_id** | **String** | Unique identifier for the Favorite |  |

### Return type

[**DeleteFavorites200Response**](DeleteFavorites200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_by_id

> <GetFavoritesById200Response> get_favorites_by_id(company_id, user_id)

Get a list of all favorites for a specific user

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User

begin
  # Get a list of all favorites for a specific user
  result = api_instance.get_favorites_by_id(company_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id: #{e}"
end
```

#### Using the get_favorites_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFavoritesById200Response>, Integer, Hash)> get_favorites_by_id_with_http_info(company_id, user_id)

```ruby
begin
  # Get a list of all favorites for a specific user
  data, status_code, headers = api_instance.get_favorites_by_id_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFavoritesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |

### Return type

[**GetFavoritesById200Response**](GetFavoritesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_by_id_users

> <GetFavoritesById200Response> get_favorites_by_id_users(company_id, user_id, favorite_id)

Get single favorite by ID

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
favorite_id = 'favorite_id_example' # String | Unique identifier for the Favorite

begin
  # Get single favorite by ID
  result = api_instance.get_favorites_by_id_users(company_id, user_id, favorite_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users: #{e}"
end
```

#### Using the get_favorites_by_id_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFavoritesById200Response>, Integer, Hash)> get_favorites_by_id_users_with_http_info(company_id, user_id, favorite_id)

```ruby
begin
  # Get single favorite by ID
  data, status_code, headers = api_instance.get_favorites_by_id_users_with_http_info(company_id, user_id, favorite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFavoritesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **favorite_id** | **String** | Unique identifier for the Favorite |  |

### Return type

[**GetFavoritesById200Response**](GetFavoritesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_by_id_users_category

> <GetFavoritesById200Response> get_favorites_by_id_users_category(company_id, user_id, category)

Get all favorites for the specified user in a specific category

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
category = 'category_example' # String | Parameter for category

begin
  # Get all favorites for the specified user in a specific category
  result = api_instance.get_favorites_by_id_users_category(company_id, user_id, category)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_category: #{e}"
end
```

#### Using the get_favorites_by_id_users_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFavoritesById200Response>, Integer, Hash)> get_favorites_by_id_users_category_with_http_info(company_id, user_id, category)

```ruby
begin
  # Get all favorites for the specified user in a specific category
  data, status_code, headers = api_instance.get_favorites_by_id_users_category_with_http_info(company_id, user_id, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFavoritesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **category** | **String** | Parameter for category |  |

### Return type

[**GetFavoritesById200Response**](GetFavoritesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_by_id_users_check

> <GetFavoritesById200Response> get_favorites_by_id_users_check(company_id, user_id, asset_id)

Check if the specified user has favorited a specific asset

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Check if the specified user has favorited a specific asset
  result = api_instance.get_favorites_by_id_users_check(company_id, user_id, asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_check: #{e}"
end
```

#### Using the get_favorites_by_id_users_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFavoritesById200Response>, Integer, Hash)> get_favorites_by_id_users_check_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Check if the specified user has favorited a specific asset
  data, status_code, headers = api_instance.get_favorites_by_id_users_check_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFavoritesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetFavoritesById200Response**](GetFavoritesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_by_id_users_uncategorized

> <GetFavoritesById200Response> get_favorites_by_id_users_uncategorized(company_id, user_id)

Get all favorites for the specified user that don't have a category

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User

begin
  # Get all favorites for the specified user that don't have a category
  result = api_instance.get_favorites_by_id_users_uncategorized(company_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_uncategorized: #{e}"
end
```

#### Using the get_favorites_by_id_users_uncategorized_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFavoritesById200Response>, Integer, Hash)> get_favorites_by_id_users_uncategorized_with_http_info(company_id, user_id)

```ruby
begin
  # Get all favorites for the specified user that don't have a category
  data, status_code, headers = api_instance.get_favorites_by_id_users_uncategorized_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFavoritesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->get_favorites_by_id_users_uncategorized_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |

### Return type

[**GetFavoritesById200Response**](GetFavoritesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_favorites

> <UpdateFavorites200Response> update_favorites(company_id, user_id, favorite_id, favorites_update)

Update an existing favorite by ID

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

api_instance = OpenapiClient::FavoritesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
favorite_id = 'favorite_id_example' # String | Unique identifier for the Favorite
favorites_update = OpenapiClient::FavoritesUpdate.new # FavoritesUpdate | 

begin
  # Update an existing favorite by ID
  result = api_instance.update_favorites(company_id, user_id, favorite_id, favorites_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->update_favorites: #{e}"
end
```

#### Using the update_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFavorites200Response>, Integer, Hash)> update_favorites_with_http_info(company_id, user_id, favorite_id, favorites_update)

```ruby
begin
  # Update an existing favorite by ID
  data, status_code, headers = api_instance.update_favorites_with_http_info(company_id, user_id, favorite_id, favorites_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFavorites200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FavoritesApi->update_favorites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **favorite_id** | **String** | Unique identifier for the Favorite |  |
| **favorites_update** | [**FavoritesUpdate**](FavoritesUpdate.md) |  |  |

### Return type

[**UpdateFavorites200Response**](UpdateFavorites200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

