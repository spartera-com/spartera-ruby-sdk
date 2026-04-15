# OpenapiClient::EndpointsInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Required. | [optional] |
| **last_updated** | **Time** | Required. | [optional] |
| **user_id** | **String** | User who created this endpoint | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. |  |
| **connection_id** | **String** | Connection to the data source |  |
| **industry_id** | **Integer** | Industry / category for marketplace discovery | [optional] |
| **auc_id** | **Integer** | Primary use case for marketplace discovery | [optional] |
| **approval_status** | **String** | Approval status before marketplace publication | [optional] |
| **approved_by_user_id** | **String** | User who approved this endpoint for marketplace | [optional] |
| **approved_at** | **Time** | Timestamp of marketplace approval | [optional] |
| **sell_in_marketplace** | **Boolean** | Whether this endpoint appears in the public marketplace | [optional] |
| **price_credits** | **Integer** | Credits deducted from the buyer&#39;s pool per successful (200 OK) request. Same credit pool as assets. price_usd kept for billing records / dashboards. | [optional] |
| **name** | **String** | Human-readable name for the endpoint |  |
| **slug** | **String** | Human-readable, URL-safe slug derived from name at creation time. e.g. &#39;NFL Live Moneyline &amp; Spread Odds&#39; → &#39;nfl-live-moneyline-spread-odds&#39;. Never changes after creation. Unique within company (DB constraint). Creation fails with 409 if a duplicate name exists in the same company. | [optional] |
| **description** | **String** | Description of what this endpoint provides | [optional] |
| **source_schema_name** | **String** | Schema/database name where the table resides | [optional] |
| **source_table_name** | **String** | Table name to query from | [optional] |
| **customer_name** | **String** | Named customer for B2B deals (marketplace uses price_credits instead) | [optional] |
| **price_usd** | **Float** | USD reference price for billing records and seller dashboards | [optional] |
| **endpoint_schema** | **Object** | Column configurations including aggregations, filters, and visibility. Format: {columns: [{name, type, aggregation, filter, is_hidden, alias, ...}]}. This is the source of truth — SQL is generated at runtime from this configuration. | [optional] |
| **rate_limit_requests** | **Integer** | Number of requests allowed per rate_limit_period | [optional] |
| **rate_limit_period** | **String** | Time period for rate limiting (HOUR, DAY, MONTH) | [optional] |
| **rate_limit_granularity** | **String** | How to group rate limits (IP, USER, COMPANY, API_KEY, GLOBAL) | [optional] |
| **access_method** | **String** | Access control method (OPEN, API_KEY, IP, EMAIL, DOMAIN) | [optional] |
| **access_whitelist** | **Object** | List of allowed IPs, emails, or domains based on access_method. Format: {type: &#39;ip&#39;|&#39;email&#39;|&#39;domain&#39;, values: [&#39;192.168.1.1&#39;, ...]} | [optional] |
| **status** | **String** | Current status of the endpoint (ACTIVE, INACTIVE, DEPRECATED) | [optional] |
| **tags** | **String** | Comma-separated tags for organizing endpoints | [optional] |
| **last_accessed** | **Time** | When this endpoint was last called | [optional] |
| **max_records_per_request** | **Integer** | Seller-enforced row cap per request. Buyers cannot exceed this. Default 1000. | [optional] |
| **sample_response** | **Object** | Last successful {spartera, request, response} envelope. Saved on each successful marketplace run. Displayed as preview on product page load. | [optional] |
| **active** | **Boolean** | Required. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EndpointsInput.new(
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
  price_credits: 5.0,
  name: Example Name,
  slug: example-slug,
  description: Example description.,
  source_schema_name: Example Name,
  source_table_name: Example Name,
  customer_name: Example Name,
  price_usd: 5.0,
  endpoint_schema: {},
  rate_limit_requests: 0.15,
  rate_limit_period: SECOND,
  rate_limit_granularity: USER,
  access_method: OPEN,
  access_whitelist: {},
  status: ACTIVE,
  tags: example_value,
  last_accessed: 2025-04-01T00:00:00Z,
  max_records_per_request: 1,
  sample_response: {},
  active: true
)
```

