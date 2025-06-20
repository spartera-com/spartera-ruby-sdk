# SparteraApiSdk::UsersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_users_get**](UsersApi.md#companies_company_id_users_get) | **GET** /companies/{company_id}/users | Get a list of all users in a company |
| [**companies_company_id_users_post**](UsersApi.md#companies_company_id_users_post) | **POST** /companies/{company_id}/users | Create a new user |
| [**companies_company_id_users_user_id_delete**](UsersApi.md#companies_company_id_users_user_id_delete) | **DELETE** /companies/{company_id}/users/{user_id} | Delete single user by ID |
| [**companies_company_id_users_user_id_get**](UsersApi.md#companies_company_id_users_user_id_get) | **GET** /companies/{company_id}/users/{user_id} | Get single user by ID |
| [**companies_company_id_users_user_id_patch**](UsersApi.md#companies_company_id_users_user_id_patch) | **PATCH** /companies/{company_id}/users/{user_id} | Update an existing user by ID |


## companies_company_id_users_get

> Object companies_company_id_users_get(company_id)

Get a list of all users in a company

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

api_instance = SparteraApiSdk::UsersApi.new
company_id = 'company_id_example' # String | 

begin
  # Get a list of all users in a company
  result = api_instance.companies_company_id_users_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_get: #{e}"
end
```

#### Using the companies_company_id_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_get_with_http_info(company_id)

```ruby
begin
  # Get a list of all users in a company
  data, status_code, headers = api_instance.companies_company_id_users_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_get_with_http_info: #{e}"
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


## companies_company_id_users_post

> Object companies_company_id_users_post(company_id, user)

Create a new user

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

api_instance = SparteraApiSdk::UsersApi.new
company_id = 'company_id_example' # String | 
user = SparteraApiSdk::User.new({company_id: 'company_id_example', status: 'status_example'}) # User | 

begin
  # Create a new user
  result = api_instance.companies_company_id_users_post(company_id, user)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_post: #{e}"
end
```

#### Using the companies_company_id_users_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_post_with_http_info(company_id, user)

```ruby
begin
  # Create a new user
  data, status_code, headers = api_instance.companies_company_id_users_post_with_http_info(company_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user** | [**User**](User.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_users_user_id_delete

> Object companies_company_id_users_user_id_delete(company_id, user_id)

Delete single user by ID

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

api_instance = SparteraApiSdk::UsersApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Delete single user by ID
  result = api_instance.companies_company_id_users_user_id_delete(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_delete: #{e}"
end
```

#### Using the companies_company_id_users_user_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_delete_with_http_info(company_id, user_id)

```ruby
begin
  # Delete single user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_delete_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_delete_with_http_info: #{e}"
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


## companies_company_id_users_user_id_get

> Object companies_company_id_users_user_id_get(company_id, user_id)

Get single user by ID

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

api_instance = SparteraApiSdk::UsersApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Get single user by ID
  result = api_instance.companies_company_id_users_user_id_get(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_get_with_http_info(company_id, user_id)

```ruby
begin
  # Get single user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_get_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_get_with_http_info: #{e}"
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


## companies_company_id_users_user_id_patch

> Object companies_company_id_users_user_id_patch(company_id, user_id, user)

Update an existing user by ID

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

api_instance = SparteraApiSdk::UsersApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
user = SparteraApiSdk::User.new({company_id: 'company_id_example', status: 'status_example'}) # User | 

begin
  # Update an existing user by ID
  result = api_instance.companies_company_id_users_user_id_patch(company_id, user_id, user)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_patch: #{e}"
end
```

#### Using the companies_company_id_users_user_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_users_user_id_patch_with_http_info(company_id, user_id, user)

```ruby
begin
  # Update an existing user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_patch_with_http_info(company_id, user_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_user_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **user** | [**User**](User.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

