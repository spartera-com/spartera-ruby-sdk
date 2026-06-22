# SparteraApiSdk::EndpointsUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Required. | [optional] |
| **last_updated** | **Time** | Required. | [optional] |
| **user_id** | **String** | User who created this endpoint | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. | [optional] |
| **connection_id** | **String** | Connection to the data source | [optional] |
| **industry_id** | **Integer** | Industry / category for marketplace discovery | [optional] |
| **auc_id** | **Integer** | Primary use case for marketplace discovery | [optional] |
| **approval_status** | **String** | Approval status before marketplace publication | [optional] |
| **approved_by_user_id** | **String** | User who approved this endpoint for marketplace | [optional] |
| **approved_at** | **Time** | Timestamp of marketplace approval | [optional] |
| **sell_in_marketplace** | **Boolean** | Whether this endpoint appears in the public marketplace | [optional] |
| **name** | **String** | Human-readable name for the endpoint | [optional] |
| **slug** | **String** | Human-readable, URL-safe slug derived from name at creation time. e.g. &#39;NFL Live Moneyline &amp; Spread Odds&#39; → &#39;nfl-live-moneyline-spread-odds&#39;. Never changes after creation. Unique within company (DB constraint). Creation fails with 409 if a duplicate name exists in the same company. | [optional] |
| **description** | **String** | Description of what this endpoint provides | [optional] |
| **detailed_description** | **String** | Long-form HTML description for product pages and SEO | [optional] |
| **top_questions** | **String** | Top 3 questions this endpoint can help answer, in English. Stored as JSON array of strings (1-3 items, 15-200 chars each). Strongly encouraged for marketplace endpoints but not required — nudge via UI completeness score, not hard validation. | [optional] |
| **source_schema_name** | **String** | Schema/database name where the table resides | [optional] |
| **source_table_name** | **String** | Table name to query from | [optional] |
| **customer_name** | **String** | Named customer for B2B deals (pricing handled via asset_price_history) | [optional] |
| **endpoint_schema** | **Object** | Column configurations including aggregations, filters, and visibility. Format: {columns: [{name, type, aggregation, filter, is_hidden, alias, ...}]}. This is the source of truth — SQL is generated at runtime from this configuration. | [optional] |
| **rate_limit_number** | **Integer** | Number of requests allowed per rate_limit_period | [optional] |
| **rate_limit_period** | **String** | Time period for rate limiting (HOUR, DAY, MONTH) | [optional] |
| **rate_limit_granularity** | **String** | How to group rate limits (IP, USER, COMPANY, API_KEY, GLOBAL) | [optional] |
| **access_method** | **String** | Access control method (OPEN, API_KEY, IP, EMAIL, DOMAIN) | [optional] |
| **access_whitelist** | **Object** | List of allowed IPs, emails, or domains based on access_method. Format: {type: &#39;ip&#39;|&#39;email&#39;|&#39;domain&#39;, values: [&#39;192.168.1.1&#39;, ...]} | [optional] |
| **status** | **String** | Current status of the endpoint (ACTIVE, INACTIVE, DEPRECATED) | [optional] |
| **data_time_period_start** | **Time** | Start date of the data time period covered | [optional] |
| **data_time_period_end** | **Time** | End date of the data time period covered | [optional] |
| **date_collection_start** | **Time** | When the seller began actively collecting this data. Distinct from data_time_period_start, which describes when the records themselves begin. Backfilled historical data will have date_collection_start &gt; data_time_period_start. | [optional] |
| **geographic_coverage_type** | **String** | Type of geographic coverage | [optional] |
| **geographic_coverage_details** | **String** | Specific regions/countries covered (e.g., &#39;United States, Canada, Mexico&#39;) | [optional] |
| **data_source_refresh_frequency** | **String** | How often the source data is refreshed | [optional] |
| **tags** | **String** | Comma-separated tags for organizing endpoints | [optional] |
| **last_accessed** | **Time** | When this endpoint was last called | [optional] |
| **max_records_per_request** | **Integer** | Seller-enforced row cap per request. Buyers cannot exceed this. Default 1000. | [optional] |
| **export_enabled** | **Boolean** | Whether this endpoint supports bulk export to GCS. When True, buyers can request delivery&#x3D;gcs with format&#x3D;csv|parquet. Independent of max_records_per_request, which only governs inline JSON. | [optional] |
| **max_records_per_export** | **Integer** | Hard ceiling on rows returned per GCS export. Separate from max_records_per_request so sellers can offer larger downloads via file delivery without expanding inline JSON responses. | [optional] |
| **sample_response** | **Object** | Last successful {spartera, request, response} envelope. Saved on each successful marketplace run. Displayed as preview on product page load. | [optional] |
| **active** | **Boolean** | Required. | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::EndpointsUpdate.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  connection_id: connection_id_abc123,
  industry_id: 1,
  auc_id: 1,
  approval_status: PENDING,
  approved_by_user_id: approved_by_user_id_abc123,
  approved_at: 2025-04-01T00:00:00Z,
  sell_in_marketplace: true,
  name: Example Name,
  slug: example-slug,
  description: Example description.,
  detailed_description: Example description.,
  top_questions: example_value,
  source_schema_name: Example Name,
  source_table_name: Example Name,
  customer_name: Example Name,
  endpoint_schema: {},
  rate_limit_number: 0.15,
  rate_limit_period: SECOND,
  rate_limit_granularity: USER,
  access_method: OPEN,
  access_whitelist: {},
  status: ACTIVE,
  data_time_period_start: 2025-04-01T00:00:00Z,
  data_time_period_end: 2025-04-01T00:00:00Z,
  date_collection_start: 2025-04-01T00:00:00Z,
  geographic_coverage_type: GLOBAL,
  geographic_coverage_details: example_value,
  data_source_refresh_frequency: EVERY_SECOND,
  tags: example_value,
  last_accessed: 2025-04-01T00:00:00Z,
  max_records_per_request: 1,
  export_enabled: true,
  max_records_per_export: 1,
  sample_response: {},
  active: true
)
```

