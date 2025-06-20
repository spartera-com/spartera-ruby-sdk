# SparteraApiSdk::UsersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_users_get**](UsersApi.md#companies_company_id_users_get) | **GET** /companies/{company_id}/users | Get a list of all users in a company |
| [**companies_company_id_users_post**](UsersApi.md#companies_company_id_users_post) | **POST** /companies/{company_id}/users | Create a new user |
| [**companies_company_id_users_user_id_delete**](UsersApi.md#companies_company_id_users_user_id_delete) | **DELETE** /companies/{company_id}/users/{user_id} | Delete single user by ID |
| [**companies_company_id_users_user_id_get**](UsersApi.md#companies_company_id_users_user_id_get) | **GET** /companies/{company_id}/users/{user_id} | Get single user by ID |
| [**companies_company_id_users_user_id_patch**](UsersApi.md#companies_company_id_users_user_id_patch) | **PATCH** /companies/{company_id}/users/{user_id} | Update an existing user by ID |
| [**me_get**](UsersApi.md#me_get) | **GET** /me | Get current authenticated user&#39;s profile information.              Returns:                 JSON response with user profile data from database |


## companies_company_id_users_get

> <CompaniesCompanyIdUsersGet200Response> companies_company_id_users_get(company_id)

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

> <Array(<CompaniesCompanyIdUsersGet200Response>, Integer, Hash)> companies_company_id_users_get_with_http_info(company_id)

```ruby
begin
  # Get a list of all users in a company
  data, status_code, headers = api_instance.companies_company_id_users_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->companies_company_id_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersGet200Response**](CompaniesCompanyIdUsersGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_post

> <CompaniesCompanyIdUsersPost200Response> companies_company_id_users_post(company_id, user)

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

> <Array(<CompaniesCompanyIdUsersPost200Response>, Integer, Hash)> companies_company_id_users_post_with_http_info(company_id, user)

```ruby
begin
  # Create a new user
  data, status_code, headers = api_instance.companies_company_id_users_post_with_http_info(company_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersPost200Response>
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

[**CompaniesCompanyIdUsersPost200Response**](CompaniesCompanyIdUsersPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_users_user_id_delete

> <CompaniesCompanyIdUsersUserIdDelete200Response> companies_company_id_users_user_id_delete(company_id, user_id)

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

> <Array(<CompaniesCompanyIdUsersUserIdDelete200Response>, Integer, Hash)> companies_company_id_users_user_id_delete_with_http_info(company_id, user_id)

```ruby
begin
  # Delete single user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_delete_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdDelete200Response>
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

[**CompaniesCompanyIdUsersUserIdDelete200Response**](CompaniesCompanyIdUsersUserIdDelete200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_get

> <CompaniesCompanyIdUsersUserIdGet200Response> companies_company_id_users_user_id_get(company_id, user_id)

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

> <Array(<CompaniesCompanyIdUsersUserIdGet200Response>, Integer, Hash)> companies_company_id_users_user_id_get_with_http_info(company_id, user_id)

```ruby
begin
  # Get single user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_get_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdGet200Response>
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

[**CompaniesCompanyIdUsersUserIdGet200Response**](CompaniesCompanyIdUsersUserIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_patch

> <CompaniesCompanyIdUsersUserIdPatch200Response> companies_company_id_users_user_id_patch(company_id, user_id, user)

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

> <Array(<CompaniesCompanyIdUsersUserIdPatch200Response>, Integer, Hash)> companies_company_id_users_user_id_patch_with_http_info(company_id, user_id, user)

```ruby
begin
  # Update an existing user by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_patch_with_http_info(company_id, user_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdPatch200Response>
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

[**CompaniesCompanyIdUsersUserIdPatch200Response**](CompaniesCompanyIdUsersUserIdPatch200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## me_get

> <MeGet200Response> me_get

Get current authenticated user's profile information.              Returns:                 JSON response with user profile data from database

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

begin
  # Get current authenticated user's profile information.              Returns:                 JSON response with user profile data from database
  result = api_instance.me_get
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->me_get: #{e}"
end
```

#### Using the me_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeGet200Response>, Integer, Hash)> me_get_with_http_info

```ruby
begin
  # Get current authenticated user's profile information.              Returns:                 JSON response with user profile data from database
  data, status_code, headers = api_instance.me_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->me_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MeGet200Response**](MeGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

