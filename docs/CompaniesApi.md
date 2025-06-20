# SparteraApiSdk::CompaniesApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_company_id_analytics_assets_get**](CompaniesApi.md#companies_company_id_analytics_assets_get) | **GET** /companies/{company_id}/analytics/assets | Get asset performance analytics     Query params: start_date, end_date, limit, sort_by, include |
| [**companies_company_id_analytics_customers_get**](CompaniesApi.md#companies_company_id_analytics_customers_get) | **GET** /companies/{company_id}/analytics/customers | Get customer analytics including growth and segmentation     Query params: start_date, end_date, group_by, segment_by |
| [**companies_company_id_analytics_dashboard_get**](CompaniesApi.md#companies_company_id_analytics_dashboard_get) | **GET** /companies/{company_id}/analytics/dashboard | Get comprehensive dashboard analytics for seller dashboard     Includes all metrics needed for dashboard charts in one call     Query params: start_date, end_date, period (day/week/month/quarter) |
| [**companies_company_id_analytics_sales_get**](CompaniesApi.md#companies_company_id_analytics_sales_get) | **GET** /companies/{company_id}/analytics/sales | Get sales over time analytics     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics |
| [**companies_company_id_get**](CompaniesApi.md#companies_company_id_get) | **GET** /companies/{company_id} | Get details of the requestor&#39;s own company |
| [**companies_company_id_objects_get**](CompaniesApi.md#companies_company_id_objects_get) | **GET** /companies/{company_id}/objects | Get all objects (connections, assets) of a single company |
| [**companies_company_id_patch**](CompaniesApi.md#companies_company_id_patch) | **PATCH** /companies/{company_id} | Update an existing company by ID |
| [**companies_company_id_requests_plan_get**](CompaniesApi.md#companies_company_id_requests_plan_get) | **GET** /companies/{company_id}/requests/plan | Get the total number of requests allocated in the company&#39;s current subscription plan. |
| [**companies_company_id_requests_usage_get**](CompaniesApi.md#companies_company_id_requests_usage_get) | **GET** /companies/{company_id}/requests/usage | Get company request usage data for a specific month. Returns JSON metrics by default or CSV logs when download parameter is included. |


## companies_company_id_analytics_assets_get

> Object companies_company_id_analytics_assets_get(company_id)

Get asset performance analytics     Query params: start_date, end_date, limit, sort_by, include

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get asset performance analytics     Query params: start_date, end_date, limit, sort_by, include
  result = api_instance.companies_company_id_analytics_assets_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_assets_get: #{e}"
end
```

#### Using the companies_company_id_analytics_assets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_analytics_assets_get_with_http_info(company_id)

```ruby
begin
  # Get asset performance analytics     Query params: start_date, end_date, limit, sort_by, include
  data, status_code, headers = api_instance.companies_company_id_analytics_assets_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_assets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_analytics_customers_get

> Object companies_company_id_analytics_customers_get(company_id)

Get customer analytics including growth and segmentation     Query params: start_date, end_date, group_by, segment_by

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get customer analytics including growth and segmentation     Query params: start_date, end_date, group_by, segment_by
  result = api_instance.companies_company_id_analytics_customers_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_customers_get: #{e}"
end
```

#### Using the companies_company_id_analytics_customers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_analytics_customers_get_with_http_info(company_id)

```ruby
begin
  # Get customer analytics including growth and segmentation     Query params: start_date, end_date, group_by, segment_by
  data, status_code, headers = api_instance.companies_company_id_analytics_customers_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_customers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_analytics_dashboard_get

> Object companies_company_id_analytics_dashboard_get(company_id)

Get comprehensive dashboard analytics for seller dashboard     Includes all metrics needed for dashboard charts in one call     Query params: start_date, end_date, period (day/week/month/quarter)

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get comprehensive dashboard analytics for seller dashboard     Includes all metrics needed for dashboard charts in one call     Query params: start_date, end_date, period (day/week/month/quarter)
  result = api_instance.companies_company_id_analytics_dashboard_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_dashboard_get: #{e}"
end
```

#### Using the companies_company_id_analytics_dashboard_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_analytics_dashboard_get_with_http_info(company_id)

```ruby
begin
  # Get comprehensive dashboard analytics for seller dashboard     Includes all metrics needed for dashboard charts in one call     Query params: start_date, end_date, period (day/week/month/quarter)
  data, status_code, headers = api_instance.companies_company_id_analytics_dashboard_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_dashboard_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_analytics_sales_get

> Object companies_company_id_analytics_sales_get(company_id)

Get sales over time analytics     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get sales over time analytics     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics
  result = api_instance.companies_company_id_analytics_sales_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_sales_get: #{e}"
end
```

#### Using the companies_company_id_analytics_sales_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_analytics_sales_get_with_http_info(company_id)

```ruby
begin
  # Get sales over time analytics     Query params: start_date, end_date, group_by (day/week/month/quarter), metrics
  data, status_code, headers = api_instance.companies_company_id_analytics_sales_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_analytics_sales_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_get

> Object companies_company_id_get(company_id)

Get details of the requestor's own company

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get details of the requestor's own company
  result = api_instance.companies_company_id_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_get: #{e}"
end
```

#### Using the companies_company_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_get_with_http_info(company_id)

```ruby
begin
  # Get details of the requestor's own company
  data, status_code, headers = api_instance.companies_company_id_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_objects_get

> Object companies_company_id_objects_get(company_id)

Get all objects (connections, assets) of a single company

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get all objects (connections, assets) of a single company
  result = api_instance.companies_company_id_objects_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_objects_get: #{e}"
end
```

#### Using the companies_company_id_objects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_objects_get_with_http_info(company_id)

```ruby
begin
  # Get all objects (connections, assets) of a single company
  data, status_code, headers = api_instance.companies_company_id_objects_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_objects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_patch

> Object companies_company_id_patch(company_id)

Update an existing company by ID

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Update an existing company by ID
  result = api_instance.companies_company_id_patch(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_patch: #{e}"
end
```

#### Using the companies_company_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_patch_with_http_info(company_id)

```ruby
begin
  # Update an existing company by ID
  data, status_code, headers = api_instance.companies_company_id_patch_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_requests_plan_get

> Object companies_company_id_requests_plan_get(company_id)

Get the total number of requests allocated in the company's current subscription plan.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get the total number of requests allocated in the company's current subscription plan.
  result = api_instance.companies_company_id_requests_plan_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_requests_plan_get: #{e}"
end
```

#### Using the companies_company_id_requests_plan_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_requests_plan_get_with_http_info(company_id)

```ruby
begin
  # Get the total number of requests allocated in the company's current subscription plan.
  data, status_code, headers = api_instance.companies_company_id_requests_plan_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_requests_plan_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_company_id_requests_usage_get

> Object companies_company_id_requests_usage_get(company_id)

Get company request usage data for a specific month. Returns JSON metrics by default or CSV logs when download parameter is included.

### Examples

```ruby
require 'time'
require 'spartera_api_sdk'
# setup authorization
SparteraApiSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SparteraApiSdk::CompaniesApi.new
company_id = 'company_id_example' # String | 

begin
  # Get company request usage data for a specific month. Returns JSON metrics by default or CSV logs when download parameter is included.
  result = api_instance.companies_company_id_requests_usage_get(company_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_requests_usage_get: #{e}"
end
```

#### Using the companies_company_id_requests_usage_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> companies_company_id_requests_usage_get_with_http_info(company_id)

```ruby
begin
  # Get company request usage data for a specific month. Returns JSON metrics by default or CSV logs when download parameter is included.
  data, status_code, headers = api_instance.companies_company_id_requests_usage_get_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling CompaniesApi->companies_company_id_requests_usage_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

