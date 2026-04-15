# OpenapiClient::PostPublications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **publication_id** | **String** | Unique identifier. | [optional] |
| **post_id** | **String** | Post that was published |  |
| **company_id** | **String** | Company this publication belongs to |  |
| **integration_id** | **String** | Integration used for publishing | [optional] |
| **platform** | **String** | Platform identifier (beehiiv, wordpress, etc) |  |
| **external_post_id** | **String** | ID of the post on the external platform | [optional] |
| **external_post_url** | **String** | URL to view the post on the external platform | [optional] |
| **published_at** | **Time** | When the post was published to this platform | [optional] |
| **status** | **String** | Status: published, failed, deleted |  |
| **error_message** | **String** | Error message if publication failed | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostPublications.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  publication_id: publication_id_abc123,
  post_id: post_id_abc123,
  company_id: company_id_abc123,
  integration_id: integration_id_abc123,
  platform: example_value,
  external_post_id: external_post_id_abc123,
  external_post_url: https://example.com,
  published_at: 2025-04-01T00:00:00Z,
  status: ACTIVE,
  error_message: example_value
)
```

