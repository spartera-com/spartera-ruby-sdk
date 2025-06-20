# SparteraApiSdk::AlertsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_users_user_id_alerts_alert_id_delete**](AlertsApi.md#companies_company_id_users_user_id_alerts_alert_id_delete) | **DELETE** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Delete single alert by ID |
| [**companies_company_id_users_user_id_alerts_alert_id_get**](AlertsApi.md#companies_company_id_users_user_id_alerts_alert_id_get) | **GET** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Get single alert by ID |
| [**companies_company_id_users_user_id_alerts_alert_id_patch**](AlertsApi.md#companies_company_id_users_user_id_alerts_alert_id_patch) | **PATCH** /companies/{company_id}/users/{user_id}/alerts/{alert_id} | Update an existing alert by ID |
| [**companies_company_id_users_user_id_alerts_asset_asset_id_all_get**](AlertsApi.md#companies_company_id_users_user_id_alerts_asset_asset_id_all_get) | **GET** /companies/{company_id}/users/{user_id}/alerts/asset/{asset_id}/all | Get all alerts for a specific asset |
| [**companies_company_id_users_user_id_alerts_asset_asset_id_get**](AlertsApi.md#companies_company_id_users_user_id_alerts_asset_asset_id_get) | **GET** /companies/{company_id}/users/{user_id}/alerts/asset/{asset_id} | Get all alerts for a specific asset (by user) |
| [**companies_company_id_users_user_id_alerts_get**](AlertsApi.md#companies_company_id_users_user_id_alerts_get) | **GET** /companies/{company_id}/users/{user_id}/alerts | Get a list of all alerts for a specific user |
| [**companies_company_id_users_user_id_alerts_post**](AlertsApi.md#companies_company_id_users_user_id_alerts_post) | **POST** /companies/{company_id}/users/{user_id}/alerts | POST /companies/{company_id}/users/{user_id}/alerts |


## companies_company_id_users_user_id_alerts_alert_id_delete

> <CompaniesCompanyIdUsersUserIdAlertsAlertIdDelete200Response> companies_company_id_users_user_id_alerts_alert_id_delete(company_id, user_id, alert_id)

Delete single alert by ID

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
alert_id = 'alert_id_example' # String | 

begin
  # Delete single alert by ID
  result = api_instance.companies_company_id_users_user_id_alerts_alert_id_delete(company_id, user_id, alert_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_delete: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_alert_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsAlertIdDelete200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_alert_id_delete_with_http_info(company_id, user_id, alert_id)

```ruby
begin
  # Delete single alert by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_alert_id_delete_with_http_info(company_id, user_id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsAlertIdDelete200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **alert_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsAlertIdDelete200Response**](CompaniesCompanyIdUsersUserIdAlertsAlertIdDelete200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_alert_id_get

> <CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response> companies_company_id_users_user_id_alerts_alert_id_get(company_id, user_id, alert_id)

Get single alert by ID

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
alert_id = 'alert_id_example' # String | 

begin
  # Get single alert by ID
  result = api_instance.companies_company_id_users_user_id_alerts_alert_id_get(company_id, user_id, alert_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_alert_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_alert_id_get_with_http_info(company_id, user_id, alert_id)

```ruby
begin
  # Get single alert by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_alert_id_get_with_http_info(company_id, user_id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **alert_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response**](CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_alert_id_patch

> <CompaniesCompanyIdUsersUserIdAlertsAlertIdPatch200Response> companies_company_id_users_user_id_alerts_alert_id_patch(company_id, user_id, alert_id, alert)

Update an existing alert by ID

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
alert_id = 'alert_id_example' # String | 
alert = SparteraApiSdk::Alert.new({asset_id: 'asset_id_example', company_id: 'company_id_example', alert_type: 'alert_type_example'}) # Alert | 

begin
  # Update an existing alert by ID
  result = api_instance.companies_company_id_users_user_id_alerts_alert_id_patch(company_id, user_id, alert_id, alert)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_patch: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_alert_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsAlertIdPatch200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_alert_id_patch_with_http_info(company_id, user_id, alert_id, alert)

```ruby
begin
  # Update an existing alert by ID
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_alert_id_patch_with_http_info(company_id, user_id, alert_id, alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsAlertIdPatch200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_alert_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **alert_id** | **String** |  |  |
| **alert** | [**Alert**](Alert.md) |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsAlertIdPatch200Response**](CompaniesCompanyIdUsersUserIdAlertsAlertIdPatch200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_asset_asset_id_all_get

> <CompaniesCompanyIdUsersUserIdAlertsGet200Response> companies_company_id_users_user_id_alerts_asset_asset_id_all_get(company_id, user_id, asset_id)

Get all alerts for a specific asset

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get all alerts for a specific asset
  result = api_instance.companies_company_id_users_user_id_alerts_asset_asset_id_all_get(company_id, user_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_asset_asset_id_all_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_asset_asset_id_all_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsGet200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_asset_asset_id_all_get_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Get all alerts for a specific asset
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_asset_asset_id_all_get_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_asset_asset_id_all_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsGet200Response**](CompaniesCompanyIdUsersUserIdAlertsGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_asset_asset_id_get

> <CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response> companies_company_id_users_user_id_alerts_asset_asset_id_get(company_id, user_id, asset_id)

Get all alerts for a specific asset (by user)

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
asset_id = 'asset_id_example' # String | 

begin
  # Get all alerts for a specific asset (by user)
  result = api_instance.companies_company_id_users_user_id_alerts_asset_asset_id_get(company_id, user_id, asset_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_asset_asset_id_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_asset_asset_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_asset_asset_id_get_with_http_info(company_id, user_id, asset_id)

```ruby
begin
  # Get all alerts for a specific asset (by user)
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_asset_asset_id_get_with_http_info(company_id, user_id, asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_asset_asset_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **asset_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response**](CompaniesCompanyIdUsersUserIdAlertsAlertIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_get

> <CompaniesCompanyIdUsersUserIdAlertsGet200Response> companies_company_id_users_user_id_alerts_get(company_id, user_id)

Get a list of all alerts for a specific user

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Get a list of all alerts for a specific user
  result = api_instance.companies_company_id_users_user_id_alerts_get(company_id, user_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_get: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsGet200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_get_with_http_info(company_id, user_id)

```ruby
begin
  # Get a list of all alerts for a specific user
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_get_with_http_info(company_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsGet200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsGet200Response**](CompaniesCompanyIdUsersUserIdAlertsGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_users_user_id_alerts_post

> <CompaniesCompanyIdUsersUserIdAlertsPost200Response> companies_company_id_users_user_id_alerts_post(company_id, user_id, alert)

POST /companies/{company_id}/users/{user_id}/alerts

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

api_instance = SparteraApiSdk::AlertsApi.new
company_id = 'company_id_example' # String | 
user_id = 'user_id_example' # String | 
alert = SparteraApiSdk::Alert.new({asset_id: 'asset_id_example', company_id: 'company_id_example', alert_type: 'alert_type_example'}) # Alert | 

begin
  # POST /companies/{company_id}/users/{user_id}/alerts
  result = api_instance.companies_company_id_users_user_id_alerts_post(company_id, user_id, alert)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_post: #{e}"
end
```

#### Using the companies_company_id_users_user_id_alerts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesCompanyIdUsersUserIdAlertsPost200Response>, Integer, Hash)> companies_company_id_users_user_id_alerts_post_with_http_info(company_id, user_id, alert)

```ruby
begin
  # POST /companies/{company_id}/users/{user_id}/alerts
  data, status_code, headers = api_instance.companies_company_id_users_user_id_alerts_post_with_http_info(company_id, user_id, alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesCompanyIdUsersUserIdAlertsPost200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling AlertsApi->companies_company_id_users_user_id_alerts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **alert** | [**Alert**](Alert.md) |  |  |

### Return type

[**CompaniesCompanyIdUsersUserIdAlertsPost200Response**](CompaniesCompanyIdUsersUserIdAlertsPost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

