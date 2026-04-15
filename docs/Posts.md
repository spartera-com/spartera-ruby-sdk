# SparteraApiSdk::Posts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **post_id** | **String** | Unique identifier. | [optional] |
| **user_id** | **String** | User who created this post |  |
| **company_id** | **String** | Company this post belongs to |  |
| **title** | **String** | Article title |  |
| **category** | **String** | Article category (e.g., &#39;Sports&#39;, &#39;Business&#39;) | [optional] |
| **teaser** | **String** | Article teaser/subtitle | [optional] |
| **content_html** | **String** | Generated article HTML content |  |
| **insights_used** | **Object** | Array of insights used: [{asset_id, asset_name, value, runtime, success}] | [optional] |
| **generation_creativity** | **Integer** | Creativity level (0-100), maps to AI temperature | [optional] |
| **generation_target_word_count** | **Integer** | Target word count (null &#x3D; auto) | [optional] |
| **generation_tone** | **String** | Writing tone: professional, casual, technical, conversational | [optional] |
| **generation_include_citations** | **Boolean** | Whether to include data source citations | [optional] |
| **generation_subheading_count** | **Integer** | Number of subheadings (2-5) | [optional] |
| **generation_temperature** | **Float** | Actual temperature used for generation (0.0-2.0) | [optional] |
| **data_cost_credits** | **Integer** | Cost in credits for data insights |  |
| **service_cost_credits** | **Integer** | Cost in credits for AI generation service |  |
| **total_cost_credits** | **Integer** | Total cost in credits (data + service) |  |
| **successful_insights_count** | **Integer** | Number of insights that succeeded |  |
| **failed_insights_count** | **Integer** | Number of insights that failed |  |
| **generation_time_ms** | **Integer** | Time taken to generate article in milliseconds | [optional] |
| **is_published** | **Boolean** | Whether this post has been published |  |
| **published_at** | **Time** | When this post was published | [optional] |
| **view_count** | **Integer** | Number of times this post has been viewed |  |
| **last_edited_at** | **Time** | When this post was last edited | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Posts.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  post_id: post_id_abc123,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  title: example_value,
  category: example_value,
  teaser: example_value,
  content_html: example_value,
  insights_used: {},
  generation_creativity: 1,
  generation_target_word_count: 1,
  generation_tone: example_value,
  generation_include_citations: true,
  generation_subheading_count: 1,
  generation_temperature: 1.0,
  data_cost_credits: 1,
  service_cost_credits: 1,
  total_cost_credits: 1,
  successful_insights_count: 1,
  failed_insights_count: 1,
  generation_time_ms: 1,
  is_published: true,
  published_at: 2025-04-01T00:00:00Z,
  view_count: 1,
  last_edited_at: 2025-04-01T00:00:00Z
)
```

