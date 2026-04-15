# OpenapiClient::AlertsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_alerts**](AlertsApi.md#create_alerts) | **POST** /companies/{company_id}/users/{user_id}/alerts | POST /companies/{company_id}/users/{user_id}/alerts |
| [**delete_alerts**](AlertsApi.md#delete_alerts) | **DELETE** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Delete single alert by ID |
| [**get_alerts_by_id**](AlertsApi.md#get_alerts_by_id) | **GET** /companies/{company_id}/users/{user_id}/alerts | Get a list of all alerts for a specific user |
| [**get_alerts_by_id_asset_all**](AlertsApi.md#get_alerts_by_id_asset_all) | **GET** /companies/{company_id}/users/{user_id}/alerts/asset/{asset_id}/all | Get all alerts for a specific asset |
| [**get_alerts_by_id_users**](AlertsApi.md#get_alerts_by_id_users) | **GET** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Get single alert by ID |
| [**get_alerts_by_id_users_asset**](AlertsApi.md#get_alerts_by_id_users_asset) | **GET** /companies/{company_id}/users/{user_id}/alerts/asset/{asset_id} | Get all alerts for a specific asset (by user) |
| [**update_alerts**](AlertsApi.md#update_alerts) | **PATCH** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Update an existing alert by ID |


## create_alerts

> <CreateAlerts200Response> create_alerts(company_id, user_id, alerts_input)

POST /companies/{company_id}/users/{user_id}/alerts

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
alerts_input = OpenapiClient::AlertsInput.new({asset_id: 'asset_id_abc123', company_id: 'company_id_abc123'}) # AlertsInput | 

begin
  # POST /companies/{company_id}/users/{user_id}/alerts
  result = api_instance.create_alerts(company_id, user_id, alerts_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->create_alerts: #{e}"
end
```

#### Using the create_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAlerts200Response>, Integer, Hash)> create_alerts_with_http_info(company_id, user_id, alerts_input)

```ruby
begin
  # POST /companies/{company_id}/users/{user_id}/alerts
  data, status_code, headers = api_instance.create_alerts_with_http_info(company_id, user_id, alerts_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->create_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **alerts_input** | [**AlertsInput**](AlertsInput.md) |  |  |

### Return type

[**CreateAlerts200Response**](CreateAlerts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_alerts

> <DeleteAlerts200Response> delete_alerts(company_id, user_id, alert_id)

Delete single alert by ID

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
alert_id = 'alert_id_example' # String | Unique identifier for the Alert

begin
  # Delete single alert by ID
  result = api_instance.delete_alerts(company_id, user_id, alert_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->delete_alerts: #{e}"
end
```

#### Using the delete_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAlerts200Response>, Integer, Hash)> delete_alerts_with_http_info(company_id, user_id, alert_id)

```ruby
begin
  # Delete single alert by ID
  data, status_code, headers = api_instance.delete_alerts_with_http_info(company_id, user_id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->delete_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **alert_id** | **String** | Unique identifier for the Alert |  |

### Return type

[**DeleteAlerts200Response**](DeleteAlerts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alerts_by_id

> <GetAlertsById200Response> get_alerts_by_id(company_id, user_id)

Get a list of all alerts for a specific user

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User

begin
  # Get a list of all alerts for a specific user
  result = api_instance.get_alerts_by_id(company_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id: #{e}"
end
```

#### Using the get_alerts_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlertsById200Response>, Integer, Hash)> get_alerts_by_id_with_http_info(company_id, user_id)

```ruby
begin
  # Get a list of all alerts for a specific user
  data, status_code, headers = api_instance.get_alerts_by_id_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlertsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |

### Return type

[**GetAlertsById200Response**](GetAlertsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alerts_by_id_asset_all

> <GetAlertsById200Response> get_alerts_by_id_asset_all(company_id, user_id, asset_id)

Get all alerts for a specific asset

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get all alerts for a specific asset
  result = api_instance.get_alerts_by_id_asset_all(company_id, user_id, asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_asset_all: #{e}"
end
```

#### Using the get_alerts_by_id_asset_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlertsById200Response>, Integer, Hash)> get_alerts_by_id_asset_all_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Get all alerts for a specific asset
  data, status_code, headers = api_instance.get_alerts_by_id_asset_all_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlertsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_asset_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAlertsById200Response**](GetAlertsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alerts_by_id_users

> <GetAlertsById200Response> get_alerts_by_id_users(company_id, user_id, alert_id)

Get single alert by ID

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
alert_id = 'alert_id_example' # String | Unique identifier for the Alert

begin
  # Get single alert by ID
  result = api_instance.get_alerts_by_id_users(company_id, user_id, alert_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_users: #{e}"
end
```

#### Using the get_alerts_by_id_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlertsById200Response>, Integer, Hash)> get_alerts_by_id_users_with_http_info(company_id, user_id, alert_id)

```ruby
begin
  # Get single alert by ID
  data, status_code, headers = api_instance.get_alerts_by_id_users_with_http_info(company_id, user_id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlertsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **alert_id** | **String** | Unique identifier for the Alert |  |

### Return type

[**GetAlertsById200Response**](GetAlertsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alerts_by_id_users_asset

> <GetAlertsById200Response> get_alerts_by_id_users_asset(company_id, user_id, asset_id)

Get all alerts for a specific asset (by user)

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
asset_id = 'asset_id_example' # String | Unique identifier for the Asset

begin
  # Get all alerts for a specific asset (by user)
  result = api_instance.get_alerts_by_id_users_asset(company_id, user_id, asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_users_asset: #{e}"
end
```

#### Using the get_alerts_by_id_users_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlertsById200Response>, Integer, Hash)> get_alerts_by_id_users_asset_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Get all alerts for a specific asset (by user)
  data, status_code, headers = api_instance.get_alerts_by_id_users_asset_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlertsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alerts_by_id_users_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **asset_id** | **String** | Unique identifier for the Asset |  |

### Return type

[**GetAlertsById200Response**](GetAlertsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_alerts

> <UpdateAlerts200Response> update_alerts(company_id, user_id, alert_id, alerts_update)

Update an existing alert by ID

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

api_instance = OpenapiClient::AlertsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
user_id = 'user_id_example' # String | Unique identifier for the User
alert_id = 'alert_id_example' # String | Unique identifier for the Alert
alerts_update = OpenapiClient::AlertsUpdate.new # AlertsUpdate | 

begin
  # Update an existing alert by ID
  result = api_instance.update_alerts(company_id, user_id, alert_id, alerts_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->update_alerts: #{e}"
end
```

#### Using the update_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAlerts200Response>, Integer, Hash)> update_alerts_with_http_info(company_id, user_id, alert_id, alerts_update)

```ruby
begin
  # Update an existing alert by ID
  data, status_code, headers = api_instance.update_alerts_with_http_info(company_id, user_id, alert_id, alerts_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AlertsApi->update_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **user_id** | **String** | Unique identifier for the User |  |
| **alert_id** | **String** | Unique identifier for the Alert |  |
| **alerts_update** | [**AlertsUpdate**](AlertsUpdate.md) |  |  |

### Return type

[**UpdateAlerts200Response**](UpdateAlerts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

