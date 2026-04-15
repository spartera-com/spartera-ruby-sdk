# SparteraApiSdk::UsersApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_users**](UsersApi.md#create_users) | **POST** /companies/{company_id}/users | Create a new user |
| [**create_users_google_oauth**](UsersApi.md#create_users_google_oauth) | **POST** /companies/{company_id}/users/google-oauth | POST /companies/{company_id}/users/google-oauth |
| [**create_users_logout**](UsersApi.md#create_users_logout) | **POST** /companies/{company_id}/users/logout | Logout current user by revoking their sessions |
| [**delete_users**](UsersApi.md#delete_users) | **DELETE** /companies/{company_id}/users/{user_id} | Delete single user by ID |
| [**get_users_by_id**](UsersApi.md#get_users_by_id) | **GET** /companies/{company_id}/users/{user_id} | Get single user by ID |
| [**list_users**](UsersApi.md#list_users) | **GET** /companies/{company_id}/users | Get a list of all users in a company |
| [**list_users_me**](UsersApi.md#list_users_me) | **GET** /me | Get current authenticated user&#39;s profile. |
| [**update_users**](UsersApi.md#update_users) | **PATCH** /companies/{company_id}/users/{user_id} | Update an existing user by ID |


## create_users

> <CreateUsers200Response> create_users(company_id, users_input, opts)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
users_input = SparteraApiSdk::UsersInput.new({company_id: 'company_id_abc123'}) # UsersInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Create a new user
  result = api_instance.create_users(company_id, users_input, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users: #{e}"
end
```

#### Using the create_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUsers200Response>, Integer, Hash)> create_users_with_http_info(company_id, users_input, opts)

```ruby
begin
  # Create a new user
  data, status_code, headers = api_instance.create_users_with_http_info(company_id, users_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **users_input** | [**UsersInput**](UsersInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateUsers200Response**](CreateUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_users_google_oauth

> <CreateUsers200Response> create_users_google_oauth(company_id, users_input, opts)

POST /companies/{company_id}/users/google-oauth

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
company_id = 'company_id_example' # String | Unique identifier for the Company
users_input = SparteraApiSdk::UsersInput.new({company_id: 'company_id_abc123'}) # UsersInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # POST /companies/{company_id}/users/google-oauth
  result = api_instance.create_users_google_oauth(company_id, users_input, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users_google_oauth: #{e}"
end
```

#### Using the create_users_google_oauth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUsers200Response>, Integer, Hash)> create_users_google_oauth_with_http_info(company_id, users_input, opts)

```ruby
begin
  # POST /companies/{company_id}/users/google-oauth
  data, status_code, headers = api_instance.create_users_google_oauth_with_http_info(company_id, users_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users_google_oauth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **users_input** | [**UsersInput**](UsersInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateUsers200Response**](CreateUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_users_logout

> <CreateUsers200Response> create_users_logout(company_id, users_input, opts)

Logout current user by revoking their sessions

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
company_id = 'company_id_example' # String | Unique identifier for the Company
users_input = SparteraApiSdk::UsersInput.new({company_id: 'company_id_abc123'}) # UsersInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Logout current user by revoking their sessions
  result = api_instance.create_users_logout(company_id, users_input, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users_logout: #{e}"
end
```

#### Using the create_users_logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUsers200Response>, Integer, Hash)> create_users_logout_with_http_info(company_id, users_input, opts)

```ruby
begin
  # Logout current user by revoking their sessions
  data, status_code, headers = api_instance.create_users_logout_with_http_info(company_id, users_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->create_users_logout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **users_input** | [**UsersInput**](UsersInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreateUsers200Response**](CreateUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_users

> <DeleteUsers200Response> delete_users(company_id, user_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User

begin
  # Delete single user by ID
  result = api_instance.delete_users(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->delete_users: #{e}"
end
```

#### Using the delete_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteUsers200Response>, Integer, Hash)> delete_users_with_http_info(company_id, user_id)

```ruby
begin
  # Delete single user by ID
  data, status_code, headers = api_instance.delete_users_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->delete_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |

### Return type

[**DeleteUsers200Response**](DeleteUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_by_id

> <GetUsersById200Response> get_users_by_id(company_id, user_id)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User

begin
  # Get single user by ID
  result = api_instance.get_users_by_id(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->get_users_by_id: #{e}"
end
```

#### Using the get_users_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUsersById200Response>, Integer, Hash)> get_users_by_id_with_http_info(company_id, user_id)

```ruby
begin
  # Get single user by ID
  data, status_code, headers = api_instance.get_users_by_id_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUsersById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->get_users_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |

### Return type

[**GetUsersById200Response**](GetUsersById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsers200Response> list_users(company_id, opts)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all users in a company
  result = api_instance.list_users(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_with_http_info(company_id, opts)

```ruby
begin
  # Get a list of all users in a company
  data, status_code, headers = api_instance.list_users_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
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

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users_me

> <ListUsers200Response> list_users_me(opts)

Get current authenticated user's profile.

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
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get current authenticated user's profile.
  result = api_instance.list_users_me(opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->list_users_me: #{e}"
end
```

#### Using the list_users_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_me_with_http_info(opts)

```ruby
begin
  # Get current authenticated user's profile.
  data, status_code, headers = api_instance.list_users_me_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->list_users_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_users

> <UpdateUsers200Response> update_users(company_id, user_id, users_update)

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
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
users_update = SparteraApiSdk::UsersUpdate.new # UsersUpdate | 

begin
  # Update an existing user by ID
  result = api_instance.update_users(company_id, user_id, users_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->update_users: #{e}"
end
```

#### Using the update_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUsers200Response>, Integer, Hash)> update_users_with_http_info(company_id, user_id, users_update)

```ruby
begin
  # Update an existing user by ID
  data, status_code, headers = api_instance.update_users_with_http_info(company_id, user_id, users_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUsers200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling UsersApi->update_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **users_update** | [**UsersUpdate**](UsersUpdate.md) |  |  |

### Return type

[**UpdateUsers200Response**](UpdateUsers200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

