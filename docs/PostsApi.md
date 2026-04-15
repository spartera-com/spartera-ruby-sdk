# SparteraApiSdk::PostsApi

All URIs are relative to *https://api.spartera.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_posts**](PostsApi.md#create_posts) | **POST** /companies/{company_id}/posts | POST /companies/{company_id}/posts |
| [**create_posts2**](PostsApi.md#create_posts2) | **POST** /companies/{company_id}/posts/{post_id}/publish/{integration_id} | Publish a post to an external platform via an integration.      Args:         post_id: ID of the post to publish         integration_id: ID of the integration to use (from postgen_integrations)      Returns:         Publication record with external_url and external_post_id |
| [**create_posts_publish**](PostsApi.md#create_posts_publish) | **POST** /companies/{company_id}/posts/{post_id}/publish | Publish a post (make it publicly visible). |
| [**create_posts_unpublish**](PostsApi.md#create_posts_unpublish) | **POST** /companies/{company_id}/posts/{post_id}/unpublish | Unpublish a post (make it private/draft again). |
| [**create_posts_view**](PostsApi.md#create_posts_view) | **POST** /companies/{company_id}/posts/{post_id}/view | Increment view count for a post.     Public endpoint (no authentication required). |
| [**delete_posts**](PostsApi.md#delete_posts) | **DELETE** /companies/{company_id}/posts/{post_id} | Delete single post by ID. |
| [**get_posts_by_id**](PostsApi.md#get_posts_by_id) | **GET** /companies/{company_id}/posts/{post_id} | Get single post by ID. |
| [**get_posts_by_id_publications**](PostsApi.md#get_posts_by_id_publications) | **GET** /companies/{company_id}/posts/{post_id}/publications | Get all publications for a post.     Shows where this post has been published to external platforms.      Returns:         Array of publication records with platform, URL, status |
| [**list_posts**](PostsApi.md#list_posts) | **GET** /companies/{company_id}/posts | Get a list of all posts for the user&#39;s company.     Supports filtering, sorting, pagination. |
| [**list_posts_summary**](PostsApi.md#list_posts_summary) | **GET** /companies/{company_id}/posts/summary | GET /companies/{company_id}/posts/summary |
| [**update_posts**](PostsApi.md#update_posts) | **PATCH** /companies/{company_id}/posts/{post_id} | Update an existing post by ID.      Note: last_edited_at is automatically updated. |


## create_posts

> <CreatePosts200Response> create_posts(company_id, posts_input, opts)

POST /companies/{company_id}/posts

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
posts_input = SparteraApiSdk::PostsInput.new({user_id: 'user_id_abc123', company_id: 'company_id_abc123', title: 'example_value', content_html: 'example_value'}) # PostsInput | 
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # POST /companies/{company_id}/posts
  result = api_instance.create_posts(company_id, posts_input, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts: #{e}"
end
```

#### Using the create_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePosts200Response>, Integer, Hash)> create_posts_with_http_info(company_id, posts_input, opts)

```ruby
begin
  # POST /companies/{company_id}/posts
  data, status_code, headers = api_instance.create_posts_with_http_info(company_id, posts_input, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **posts_input** | [**PostsInput**](PostsInput.md) |  |  |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **limit** | **Integer** | Number of items per page | [optional][default to 20] |
| **sort_by** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (ascending or descending) | [optional][default to &#39;desc&#39;] |
| **search** | **String** | Search term to filter results | [optional] |

### Return type

[**CreatePosts200Response**](CreatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_posts2

> <CreatePosts200Response> create_posts2(company_id, post_id, integration_id, posts_input)

Publish a post to an external platform via an integration.      Args:         post_id: ID of the post to publish         integration_id: ID of the integration to use (from postgen_integrations)      Returns:         Publication record with external_url and external_post_id

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post
integration_id = 'integration_id_example' # String | Unique identifier for the Integration
posts_input = SparteraApiSdk::PostsInput.new({user_id: 'user_id_abc123', company_id: 'company_id_abc123', title: 'example_value', content_html: 'example_value'}) # PostsInput | 

begin
  # Publish a post to an external platform via an integration.      Args:         post_id: ID of the post to publish         integration_id: ID of the integration to use (from postgen_integrations)      Returns:         Publication record with external_url and external_post_id
  result = api_instance.create_posts2(company_id, post_id, integration_id, posts_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts2: #{e}"
end
```

#### Using the create_posts2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePosts200Response>, Integer, Hash)> create_posts2_with_http_info(company_id, post_id, integration_id, posts_input)

```ruby
begin
  # Publish a post to an external platform via an integration.      Args:         post_id: ID of the post to publish         integration_id: ID of the integration to use (from postgen_integrations)      Returns:         Publication record with external_url and external_post_id
  data, status_code, headers = api_instance.create_posts2_with_http_info(company_id, post_id, integration_id, posts_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |
| **integration_id** | **String** | Unique identifier for the Integration |  |
| **posts_input** | [**PostsInput**](PostsInput.md) |  |  |

### Return type

[**CreatePosts200Response**](CreatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_posts_publish

> <CreatePosts200Response> create_posts_publish(company_id, post_id, posts_input)

Publish a post (make it publicly visible).

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post
posts_input = SparteraApiSdk::PostsInput.new({user_id: 'user_id_abc123', company_id: 'company_id_abc123', title: 'example_value', content_html: 'example_value'}) # PostsInput | 

begin
  # Publish a post (make it publicly visible).
  result = api_instance.create_posts_publish(company_id, post_id, posts_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_publish: #{e}"
end
```

#### Using the create_posts_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePosts200Response>, Integer, Hash)> create_posts_publish_with_http_info(company_id, post_id, posts_input)

```ruby
begin
  # Publish a post (make it publicly visible).
  data, status_code, headers = api_instance.create_posts_publish_with_http_info(company_id, post_id, posts_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |
| **posts_input** | [**PostsInput**](PostsInput.md) |  |  |

### Return type

[**CreatePosts200Response**](CreatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_posts_unpublish

> <CreatePosts200Response> create_posts_unpublish(company_id, post_id, posts_input)

Unpublish a post (make it private/draft again).

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post
posts_input = SparteraApiSdk::PostsInput.new({user_id: 'user_id_abc123', company_id: 'company_id_abc123', title: 'example_value', content_html: 'example_value'}) # PostsInput | 

begin
  # Unpublish a post (make it private/draft again).
  result = api_instance.create_posts_unpublish(company_id, post_id, posts_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_unpublish: #{e}"
end
```

#### Using the create_posts_unpublish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePosts200Response>, Integer, Hash)> create_posts_unpublish_with_http_info(company_id, post_id, posts_input)

```ruby
begin
  # Unpublish a post (make it private/draft again).
  data, status_code, headers = api_instance.create_posts_unpublish_with_http_info(company_id, post_id, posts_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_unpublish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |
| **posts_input** | [**PostsInput**](PostsInput.md) |  |  |

### Return type

[**CreatePosts200Response**](CreatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_posts_view

> <CreatePosts200Response> create_posts_view(company_id, post_id, posts_input)

Increment view count for a post.     Public endpoint (no authentication required).

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post
posts_input = SparteraApiSdk::PostsInput.new({user_id: 'user_id_abc123', company_id: 'company_id_abc123', title: 'example_value', content_html: 'example_value'}) # PostsInput | 

begin
  # Increment view count for a post.     Public endpoint (no authentication required).
  result = api_instance.create_posts_view(company_id, post_id, posts_input)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_view: #{e}"
end
```

#### Using the create_posts_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePosts200Response>, Integer, Hash)> create_posts_view_with_http_info(company_id, post_id, posts_input)

```ruby
begin
  # Increment view count for a post.     Public endpoint (no authentication required).
  data, status_code, headers = api_instance.create_posts_view_with_http_info(company_id, post_id, posts_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->create_posts_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |
| **posts_input** | [**PostsInput**](PostsInput.md) |  |  |

### Return type

[**CreatePosts200Response**](CreatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_posts

> <DeletePosts200Response> delete_posts(company_id, post_id)

Delete single post by ID.

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post

begin
  # Delete single post by ID.
  result = api_instance.delete_posts(company_id, post_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->delete_posts: #{e}"
end
```

#### Using the delete_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePosts200Response>, Integer, Hash)> delete_posts_with_http_info(company_id, post_id)

```ruby
begin
  # Delete single post by ID.
  data, status_code, headers = api_instance.delete_posts_with_http_info(company_id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->delete_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |

### Return type

[**DeletePosts200Response**](DeletePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_posts_by_id

> <GetPostsById200Response> get_posts_by_id(company_id, post_id)

Get single post by ID.

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post

begin
  # Get single post by ID.
  result = api_instance.get_posts_by_id(company_id, post_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->get_posts_by_id: #{e}"
end
```

#### Using the get_posts_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostsById200Response>, Integer, Hash)> get_posts_by_id_with_http_info(company_id, post_id)

```ruby
begin
  # Get single post by ID.
  data, status_code, headers = api_instance.get_posts_by_id_with_http_info(company_id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostsById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->get_posts_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |

### Return type

[**GetPostsById200Response**](GetPostsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_posts_by_id_publications

> <GetPostsById200Response> get_posts_by_id_publications(company_id, post_id)

Get all publications for a post.     Shows where this post has been published to external platforms.      Returns:         Array of publication records with platform, URL, status

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post

begin
  # Get all publications for a post.     Shows where this post has been published to external platforms.      Returns:         Array of publication records with platform, URL, status
  result = api_instance.get_posts_by_id_publications(company_id, post_id)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->get_posts_by_id_publications: #{e}"
end
```

#### Using the get_posts_by_id_publications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostsById200Response>, Integer, Hash)> get_posts_by_id_publications_with_http_info(company_id, post_id)

```ruby
begin
  # Get all publications for a post.     Shows where this post has been published to external platforms.      Returns:         Array of publication records with platform, URL, status
  data, status_code, headers = api_instance.get_posts_by_id_publications_with_http_info(company_id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostsById200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->get_posts_by_id_publications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |

### Return type

[**GetPostsById200Response**](GetPostsById200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_posts

> <ListPosts200Response> list_posts(company_id, opts)

Get a list of all posts for the user's company.     Supports filtering, sorting, pagination.

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # Get a list of all posts for the user's company.     Supports filtering, sorting, pagination.
  result = api_instance.list_posts(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->list_posts: #{e}"
end
```

#### Using the list_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPosts200Response>, Integer, Hash)> list_posts_with_http_info(company_id, opts)

```ruby
begin
  # Get a list of all posts for the user's company.     Supports filtering, sorting, pagination.
  data, status_code, headers = api_instance.list_posts_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->list_posts_with_http_info: #{e}"
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

[**ListPosts200Response**](ListPosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_posts_summary

> <ListPosts200Response> list_posts_summary(company_id, opts)

GET /companies/{company_id}/posts/summary

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
opts = {
  page: 56, # Integer | Page number for pagination
  limit: 56, # Integer | Number of items per page
  sort_by: 'sort_by_example', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (ascending or descending)
  search: 'search_example' # String | Search term to filter results
}

begin
  # GET /companies/{company_id}/posts/summary
  result = api_instance.list_posts_summary(company_id, opts)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->list_posts_summary: #{e}"
end
```

#### Using the list_posts_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPosts200Response>, Integer, Hash)> list_posts_summary_with_http_info(company_id, opts)

```ruby
begin
  # GET /companies/{company_id}/posts/summary
  data, status_code, headers = api_instance.list_posts_summary_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->list_posts_summary_with_http_info: #{e}"
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

[**ListPosts200Response**](ListPosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_posts

> <UpdatePosts200Response> update_posts(company_id, post_id, posts_update)

Update an existing post by ID.      Note: last_edited_at is automatically updated.

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

api_instance = SparteraApiSdk::PostsApi.new
company_id = 'company_id_example' # String | Unique identifier for the Company
post_id = 'post_id_example' # String | Unique identifier for the Post
posts_update = SparteraApiSdk::PostsUpdate.new # PostsUpdate | 

begin
  # Update an existing post by ID.      Note: last_edited_at is automatically updated.
  result = api_instance.update_posts(company_id, post_id, posts_update)
  p result
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->update_posts: #{e}"
end
```

#### Using the update_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePosts200Response>, Integer, Hash)> update_posts_with_http_info(company_id, post_id, posts_update)

```ruby
begin
  # Update an existing post by ID.      Note: last_edited_at is automatically updated.
  data, status_code, headers = api_instance.update_posts_with_http_info(company_id, post_id, posts_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePosts200Response>
rescue SparteraApiSdk::ApiError => e
  puts "Error when calling PostsApi->update_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for the Company |  |
| **post_id** | **String** | Unique identifier for the Post |  |
| **posts_update** | [**PostsUpdate**](PostsUpdate.md) |  |  |

### Return type

[**UpdatePosts200Response**](UpdatePosts200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

