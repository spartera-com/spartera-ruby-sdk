# OpenapiClient::PostgenIntegrationsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_postgen_integrations**](PostgenIntegrationsApi.md#create_postgen_integrations) | **POST** /companies/{company_id}/postgen_integrations | POST /companies/{company_id}/postgen_integrations |
| [**create_postgen_integrations_test**](PostgenIntegrationsApi.md#create_postgen_integrations_test) | **POST** /companies/{company_id}/postgen_integrations/test | POST /companies/{company_id}/postgen_integrations/test |
| [**delete_postgen_integrations**](PostgenIntegrationsApi.md#delete_postgen_integrations) | **DELETE** /companies/{company_id}/postgen_integrations/{integration_id} | Delete single integration by ID.     Also deletes credentials from GCP Secret Manager. |
| [**get_postgen_integrations_by_id**](PostgenIntegrationsApi.md#get_postgen_integrations_by_id) | **GET** /companies/{company_id}/postgen_integrations/{integration_id} | Get single integration by ID. |
| [**list_postgen_integrations**](PostgenIntegrationsApi.md#list_postgen_integrations) | **GET** /companies/{company_id}/postgen_integrations | Get a list of all postgen integrations for the company.     All company users can view integrations. |
| [**update_postgen_integrations**](PostgenIntegrationsApi.md#update_postgen_integrations) | **PATCH** /companies/{company_id}/postgen_integrations/{integration_id} | Update an existing integration by ID.      Can update credentials, is_active status, etc. |


## create_postgen_integrations

> <CreatePostgenIntegrations200Response> create_postgen_integrations(company_id, postgen_integrations_input, opts)

POST /companies/{company_id}/postgen_integrations

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
postgen_integrations_input = OpenapiClient::PostgenIntegrationsInput.new({company_id: 'company_id_abc123', user_id: 'user_id_abc123', platform: 'example_value', platform_name: 'Example Name', credentials_secret_name: 'Example Name'}) # PostgenIntegrationsInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # POST /companies/{company_id}/postgen_integrations
  result = api_instance.create_postgen_integrations(company_id, postgen_integrations_input, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->create_postgen_integrations: #{e}"
end
```

#### Using the create_postgen_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePostgenIntegrations200Response>, Integer, Hash)> create_postgen_integrations_with_http_info(company_id, postgen_integrations_input, opts)

```ruby
begin
  # POST /companies/{company_id}/postgen_integrations
  data, status_code, headers = api_instance.create_postgen_integrations_with_http_info(company_id, postgen_integrations_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePostgenIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->create_postgen_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **postgen_integrations_input** | [**PostgenIntegrationsInput**](PostgenIntegrationsInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreatePostgenIntegrations200Response**](CreatePostgenIntegrations200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_postgen_integrations_test

> <CreatePostgenIntegrations200Response> create_postgen_integrations_test(company_id, postgen_integrations_input)

POST /companies/{company_id}/postgen_integrations/test

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
postgen_integrations_input = OpenapiClient::PostgenIntegrationsInput.new({company_id: 'company_id_abc123', user_id: 'user_id_abc123', platform: 'example_value', platform_name: 'Example Name', credentials_secret_name: 'Example Name'}) # PostgenIntegrationsInput | 

begin
  # POST /companies/{company_id}/postgen_integrations/test
  result = api_instance.create_postgen_integrations_test(company_id, postgen_integrations_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->create_postgen_integrations_test: #{e}"
end
```

#### Using the create_postgen_integrations_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePostgenIntegrations200Response>, Integer, Hash)> create_postgen_integrations_test_with_http_info(company_id, postgen_integrations_input)

```ruby
begin
  # POST /companies/{company_id}/postgen_integrations/test
  data, status_code, headers = api_instance.create_postgen_integrations_test_with_http_info(company_id, postgen_integrations_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePostgenIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->create_postgen_integrations_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **postgen_integrations_input** | [**PostgenIntegrationsInput**](PostgenIntegrationsInput.md) |  |  |

### Return type

[**CreatePostgenIntegrations200Response**](CreatePostgenIntegrations200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_postgen_integrations

> <DeletePostgenIntegrations200Response> delete_postgen_integrations(company_id, integration_id)

Delete single integration by ID.     Also deletes credentials from GCP Secret Manager.

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
integration_id = 'integration_id_example' # String | Unique identifier for the Integration

begin
  # Delete single integration by ID.     Also deletes credentials from GCP Secret Manager.
  result = api_instance.delete_postgen_integrations(company_id, integration_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->delete_postgen_integrations: #{e}"
end
```

#### Using the delete_postgen_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePostgenIntegrations200Response>, Integer, Hash)> delete_postgen_integrations_with_http_info(company_id, integration_id)

```ruby
begin
  # Delete single integration by ID.     Also deletes credentials from GCP Secret Manager.
  data, status_code, headers = api_instance.delete_postgen_integrations_with_http_info(company_id, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePostgenIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->delete_postgen_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **integration_id** | **String** | Unique identifier for the Integration |  |

### Return type

[**DeletePostgenIntegrations200Response**](DeletePostgenIntegrations200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_postgen_integrations_by_id

> <GetPostgenIntegrationsById200Response> get_postgen_integrations_by_id(company_id, integration_id)

Get single integration by ID.

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
integration_id = 'integration_id_example' # String | Unique identifier for the Integration

begin
  # Get single integration by ID.
  result = api_instance.get_postgen_integrations_by_id(company_id, integration_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->get_postgen_integrations_by_id: #{e}"
end
```

#### Using the get_postgen_integrations_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostgenIntegrationsById200Response>, Integer, Hash)> get_postgen_integrations_by_id_with_http_info(company_id, integration_id)

```ruby
begin
  # Get single integration by ID.
  data, status_code, headers = api_instance.get_postgen_integrations_by_id_with_http_info(company_id, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostgenIntegrationsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->get_postgen_integrations_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **integration_id** | **String** | Unique identifier for the Integration |  |

### Return type

[**GetPostgenIntegrationsById200Response**](GetPostgenIntegrationsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_postgen_integrations

> <ListPostgenIntegrations200Response> list_postgen_integrations(company_id, opts)

Get a list of all postgen integrations for the company.     All company users can view integrations.

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all postgen integrations for the company.     All company users can view integrations.
  result = api_instance.list_postgen_integrations(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->list_postgen_integrations: #{e}"
end
```

#### Using the list_postgen_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPostgenIntegrations200Response>, Integer, Hash)> list_postgen_integrations_with_http_info(company_id, opts)

```ruby
begin
  # Get a list of all postgen integrations for the company.     All company users can view integrations.
  data, status_code, headers = api_instance.list_postgen_integrations_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPostgenIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->list_postgen_integrations_with_http_info: #{e}"
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

[**ListPostgenIntegrations200Response**](ListPostgenIntegrations200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_postgen_integrations

> <UpdatePostgenIntegrations200Response> update_postgen_integrations(company_id, integration_id, postgen_integrations_update)

Update an existing integration by ID.      Can update credentials, is_active status, etc.

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

api_instance = OpenapiClient::PostgenIntegrationsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
integration_id = 'integration_id_example' # String | Unique identifier for the Integration
postgen_integrations_update = OpenapiClient::PostgenIntegrationsUpdate.new # PostgenIntegrationsUpdate | 

begin
  # Update an existing integration by ID.      Can update credentials, is_active status, etc.
  result = api_instance.update_postgen_integrations(company_id, integration_id, postgen_integrations_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->update_postgen_integrations: #{e}"
end
```

#### Using the update_postgen_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePostgenIntegrations200Response>, Integer, Hash)> update_postgen_integrations_with_http_info(company_id, integration_id, postgen_integrations_update)

```ruby
begin
  # Update an existing integration by ID.      Can update credentials, is_active status, etc.
  data, status_code, headers = api_instance.update_postgen_integrations_with_http_info(company_id, integration_id, postgen_integrations_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePostgenIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostgenIntegrationsApi->update_postgen_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **integration_id** | **String** | Unique identifier for the Integration |  |
| **postgen_integrations_update** | [**PostgenIntegrationsUpdate**](PostgenIntegrationsUpdate.md) |  |  |

### Return type

[**UpdatePostgenIntegrations200Response**](UpdatePostgenIntegrations200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

