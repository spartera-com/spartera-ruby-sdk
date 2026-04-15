# SparteraApiSdk::CompaniesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_companies_by_id**](CompaniesApi.md#get_companies_by_id) | **GET** /companies/{company_id} | Get details of the requestor&#39;s own company |
| [**list_companies**](CompaniesApi.md#list_companies) | **GET** /companies/{company_id}/requests/plan | Get the total number of requests allocated in the company&#39;s current subscription plan. |
| [**list_companies_analytics_assets**](CompaniesApi.md#list_companies_analytics_assets) | **GET** /companies/{company_id}/analytics/assets | Get asset performance analytics.     Query params: start_date, end_date, limit, sort_by, include |
| [**list_companies_analytics_customers**](CompaniesApi.md#list_companies_analytics_customers) | **GET** /companies/{company_id}/analytics/customers | Get customer analytics including growth and segmentation.     Query params: start_date, end_date, group_by, segment_by |
| [**list_companies_analytics_dashboard**](CompaniesApi.md#list_companies_analytics_dashboard) | **GET** /companies/{company_id}/analytics/dashboard | Get comprehensive dashboard analytics for seller dashboard.     Query params: start_date, end_date, period (day/week/month/quarter) |
| [**list_companies_analytics_metrics**](CompaniesApi.md#list_companies_analytics_metrics) | **GET** /companies/{company_id}/analytics/metrics | Get summary metrics (counts only). No date params needed — returns all-time totals.     Performance: &lt; 0.1s |
| [**list_companies_analytics_sales**](CompaniesApi.md#list_companies_analytics_sales) | **GET** /companies/{company_id}/analytics/sales | Get sales over time analytics.     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics |
| [**list_companies_objects**](CompaniesApi.md#list_companies_objects) | **GET** /companies/{company_id}/objects | Get all objects (connections, assets) of a single company |
| [**list_companies_requests_usage**](CompaniesApi.md#list_companies_requests_usage) | **GET** /companies/{company_id}/requests/usage | Get company request usage data for a specific month. |
| [**update_companies**](CompaniesApi.md#update_companies) | **PATCH** /companies/{company_id} | Update an existing company by ID |


## get_companies_by_id

> <GetCompaniesById200Response> get_companies_by_id(company_id)

Get details of the requestor's own company

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company

begin
  # Get details of the requestor's own company
  result = api_instance.get_companies_by_id(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->get_companies_by_id: #{e}"
end
```

#### Using the get_companies_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCompaniesById200Response>, Integer, Hash)> get_companies_by_id_with_http_info(company_id)

```ruby
begin
  # Get details of the requestor's own company
  data, status_code, headers = api_instance.get_companies_by_id_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCompaniesById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->get_companies_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |

### Return type

[**GetCompaniesById200Response**](GetCompaniesById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies

> <ListCompaniesAnalyticsAssets200Response> list_companies(company_id, opts)

Get the total number of requests allocated in the company's current subscription plan.

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get the total number of requests allocated in the company's current subscription plan.
  result = api_instance.list_companies(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies: #{e}"
end
```

#### Using the list_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_with_http_info(company_id, opts)

```ruby
begin
  # Get the total number of requests allocated in the company's current subscription plan.
  data, status_code, headers = api_instance.list_companies_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_analytics_assets

> <ListCompaniesAnalyticsAssets200Response> list_companies_analytics_assets(company_id, opts)

Get asset performance analytics.     Query params: start_date, end_date, limit, sort_by, include

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get asset performance analytics.     Query params: start_date, end_date, limit, sort_by, include
  result = api_instance.list_companies_analytics_assets(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_assets: #{e}"
end
```

#### Using the list_companies_analytics_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_analytics_assets_with_http_info(company_id, opts)

```ruby
begin
  # Get asset performance analytics.     Query params: start_date, end_date, limit, sort_by, include
  data, status_code, headers = api_instance.list_companies_analytics_assets_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_assets_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_analytics_customers

> <ListCompaniesAnalyticsAssets200Response> list_companies_analytics_customers(company_id, opts)

Get customer analytics including growth and segmentation.     Query params: start_date, end_date, group_by, segment_by

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get customer analytics including growth and segmentation.     Query params: start_date, end_date, group_by, segment_by
  result = api_instance.list_companies_analytics_customers(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_customers: #{e}"
end
```

#### Using the list_companies_analytics_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_analytics_customers_with_http_info(company_id, opts)

```ruby
begin
  # Get customer analytics including growth and segmentation.     Query params: start_date, end_date, group_by, segment_by
  data, status_code, headers = api_instance.list_companies_analytics_customers_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_customers_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_analytics_dashboard

> <ListCompaniesAnalyticsAssets200Response> list_companies_analytics_dashboard(company_id, opts)

Get comprehensive dashboard analytics for seller dashboard.     Query params: start_date, end_date, period (day/week/month/quarter)

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get comprehensive dashboard analytics for seller dashboard.     Query params: start_date, end_date, period (day/week/month/quarter)
  result = api_instance.list_companies_analytics_dashboard(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_dashboard: #{e}"
end
```

#### Using the list_companies_analytics_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_analytics_dashboard_with_http_info(company_id, opts)

```ruby
begin
  # Get comprehensive dashboard analytics for seller dashboard.     Query params: start_date, end_date, period (day/week/month/quarter)
  data, status_code, headers = api_instance.list_companies_analytics_dashboard_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_dashboard_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_analytics_metrics

> <ListCompaniesAnalyticsAssets200Response> list_companies_analytics_metrics(company_id, opts)

Get summary metrics (counts only). No date params needed — returns all-time totals.     Performance: < 0.1s

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get summary metrics (counts only). No date params needed — returns all-time totals.     Performance: < 0.1s
  result = api_instance.list_companies_analytics_metrics(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_metrics: #{e}"
end
```

#### Using the list_companies_analytics_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_analytics_metrics_with_http_info(company_id, opts)

```ruby
begin
  # Get summary metrics (counts only). No date params needed — returns all-time totals.     Performance: < 0.1s
  data, status_code, headers = api_instance.list_companies_analytics_metrics_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_metrics_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_analytics_sales

> <ListCompaniesAnalyticsAssets200Response> list_companies_analytics_sales(company_id, opts)

Get sales over time analytics.     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get sales over time analytics.     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics
  result = api_instance.list_companies_analytics_sales(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_sales: #{e}"
end
```

#### Using the list_companies_analytics_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_analytics_sales_with_http_info(company_id, opts)

```ruby
begin
  # Get sales over time analytics.     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics
  data, status_code, headers = api_instance.list_companies_analytics_sales_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_analytics_sales_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_objects

> <ListCompaniesAnalyticsAssets200Response> list_companies_objects(company_id, opts)

Get all objects (connections, assets) of a single company

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get all objects (connections, assets) of a single company
  result = api_instance.list_companies_objects(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_objects: #{e}"
end
```

#### Using the list_companies_objects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_objects_with_http_info(company_id, opts)

```ruby
begin
  # Get all objects (connections, assets) of a single company
  data, status_code, headers = api_instance.list_companies_objects_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_objects_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies_requests_usage

> <ListCompaniesAnalyticsAssets200Response> list_companies_requests_usage(company_id, opts)

Get company request usage data for a specific month.

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get company request usage data for a specific month.
  result = api_instance.list_companies_requests_usage(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_requests_usage: #{e}"
end
```

#### Using the list_companies_requests_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompaniesAnalyticsAssets200Response>, Integer, Hash)> list_companies_requests_usage_with_http_info(company_id, opts)

```ruby
begin
  # Get company request usage data for a specific month.
  data, status_code, headers = api_instance.list_companies_requests_usage_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompaniesAnalyticsAssets200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_requests_usage_with_http_info: #{e}"
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

[**ListCompaniesAnalyticsAssets200Response**](ListCompaniesAnalyticsAssets200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_companies

> <UpdateCompanies200Response> update_companies(company_id, companies_update)

Update an existing company by ID

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

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
companies_update = SparteraApiSdk::CompaniesUpdate.new # CompaniesUpdate | 

begin
  # Update an existing company by ID
  result = api_instance.update_companies(company_id, companies_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->update_companies: #{e}"
end
```

#### Using the update_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCompanies200Response>, Integer, Hash)> update_companies_with_http_info(company_id, companies_update)

```ruby
begin
  # Update an existing company by ID
  data, status_code, headers = api_instance.update_companies_with_http_info(company_id, companies_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCompanies200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->update_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **companies_update** | [**CompaniesUpdate**](CompaniesUpdate.md) |  |  |

### Return type

[**UpdateCompanies200Response**](UpdateCompanies200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

