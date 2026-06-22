# SparteraApiSdk::Assets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Optional. | [optional] |
| **last_updated** | **Time** | Optional. | [optional] |
| **asset_id** | **String** | Unique identifier. | [optional] |
| **user_id** | **String** | References users.user_id — An individual user account within a company. See GET /users for valid values. Optional. | [optional] |
| **company_id** | **String** | References companies.company_id — A Spartera seller or buyer company account. See GET /companies for valid values. Required. |  |
| **connection_id** | **String** | Optional. | [optional] |
| **llm_connection_id** | **String** | References connections.connection_id — Secure connections from Spartera to your databases and data warehouses. See GET /connections for valid values. Optional. | [optional] |
| **snippet_id** | **Integer** | References snippets.snippet_id — Predefined code snippets to accelerate insight creation. See GET /snippets for valid values. Optional. | [optional] |
| **industry_id** | **Integer** | References industries.industry_id — Available industry categories for asset classification. Based on US NAISC codes.. See GET /industries for valid values. Optional. | [optional] |
| **ai_job_id** | **String** | Links to the AutoInsights job that created this asset | [optional] |
| **auc_id** | **Integer** | Primary use case for this asset, from clustering analysis | [optional] |
| **function_id** | **String** | Optional identifier for routing to specific functions/models at seller endpoint. For GET: appended to URL path. For POST: included in JSON body. | [optional] |
| **approval_status** | **String** | Approval status for AI-generated assets | [optional] |
| **approved_by_user_id** | **String** | User who approved this asset for marketplace | [optional] |
| **approved_at** | **Time** | When this asset was approved for marketplace | [optional] |
| **name** | **String** | Required. |  |
| **slug** | **String** | Optional. | [optional] |
| **description** | **String** | Optional. | [optional] |
| **detailed_description** | **String** | Long-form HTML description for product pages and SEO | [optional] |
| **source** | **String** | Required. One of: MANUAL, AUTOMATIC. |  |
| **asset_type** | **String** | Optional. One of: CALCULATION, VISUALIZATION, DATA. | [optional] |
| **asset_schema** | **Object** | Stores database table schema data including columns, types, and metadata | [optional] |
| **visibility** | **String** | Optional. One of: PRIVATE, SHARED. | [optional] |
| **tags** | **String** | Optional. | [optional] |
| **top_questions** | **String** | Top 3 questions this asset can help answer, in English. Stored as JSON array of strings (1-3 items, 15-200 chars each). Required for marketplace assets. | [optional] |
| **short_code** | **String** | Short code for tera.ac URL shortener (e.g., &#39;f78zq1&#39;) | [optional] |
| **restricted_domains** | **String** | Semicolon or comma-separated list of domains restricted from accessing this asset | [optional] |
| **sql_logic** | **String** | Optional. | [optional] |
| **source_schema_name** | **String** | Optional. | [optional] |
| **source_table_name** | **String** | Optional. | [optional] |
| **sell_in_marketplace** | **Boolean** | Required. |  |
| **require_customization** | **Boolean** | Whether this asset requires customization before use |  |
| **viz_spec** | **Object** | Plotly figure JSON describing the visualization. Authored via the visual editor or via API. When populated, takes precedence over the legacy viz_* fields. Shape follows Plotly&#39;s figure schema: {data: [{type: &#39;...&#39;, xsrc: &#39;...&#39;, ...}], layout: {...}}. Column references use *src keys (xsrc, ysrc, labelssrc, etc.) and are hydrated with actual data at render time. | [optional] |
| **viz_chart_library** | **String** | Optional. One of: PLOTLY, MATPLOTLIB, SEABORN. | [optional] |
| **viz_chart_type** | **String** | Optional. One of: LINE, BAR, PIE, DOUGHNUT, POLAR, … (8 total). | [optional] |
| **viz_dep_var_col_name** | **String** | Optional. | [optional] |
| **viz_indep_var_col_name** | **String** | Optional. | [optional] |
| **viz_size_col_name** | **String** | Optional. | [optional] |
| **viz_color_col_name** | **String** | Optional. | [optional] |
| **viz_data_aggregation** | **String** | Optional. One of: No Aggregation, Sum, Average, Count, Minimum, … (6 total). | [optional] |
| **viz_sort_direction** | **String** | Optional. One of: No Sorting, Ascending, Descending. | [optional] |
| **viz_data_limit** | **Integer** | Optional. | [optional] |
| **viz_color_scheme** | **String** | Optional. One of: Default, Sequential, Diverging, Categorical, Monochrome, … (8 total). | [optional] |
| **viz_show_legend** | **Boolean** | Show/hide chart legend | [optional] |
| **viz_show_grid** | **Boolean** | Show/hide grid lines | [optional] |
| **viz_show_trendline** | **Boolean** | Show trendline for scatter/line charts | [optional] |
| **viz_line_smoothing** | **Boolean** | Enable smoothing for line charts | [optional] |
| **viz_bar_stacked** | **Boolean** | Stack bars instead of grouping | [optional] |
| **viz_filter_direction** | **String** | Whether data_limit shows TOP or BOTTOM N | [optional] |
| **allow_params** | **Boolean** | Required. |  |
| **accept_terms** | **Boolean** | Required. |  |
| **cached** | **Boolean** | Optional. | [optional] |
| **schedule** | **String** | Optional. | [optional] |
| **next_run** | **Time** | Optional. | [optional] |
| **data_time_period_start** | **Time** | Start date of the data time period covered | [optional] |
| **data_time_period_end** | **Time** | End date of the data time period covered | [optional] |
| **date_collection_start** | **Time** | When the seller began actively collecting this data. Distinct from data_time_period_start, which describes when the records themselves begin. Backfilled historical data will have date_collection_start &gt; data_time_period_start. | [optional] |
| **geographic_coverage_type** | **String** | Type of geographic coverage | [optional] |
| **geographic_coverage_details** | **String** | Specific regions/countries covered (e.g., &#39;United States, Canada, Mexico&#39;) | [optional] |
| **data_source_refresh_frequency** | **String** | How often the source data is refreshed | [optional] |
| **rate_limit_number** | **Integer** | Number of requests allowed per period (e.g., 100) | [optional] |
| **rate_limit_period** | **String** | Time period for rate limiting (second, minute, hour, day) | [optional] |
| **rate_limit_granularity** | **String** | Granularity level for rate limiting (USER, COMPANY, IP) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::Assets.new(
  date_created: 2025-04-01T00:00:00Z,
  last_updated: 2025-04-01T00:00:00Z,
  asset_id: asset_id_abc123,
  user_id: user_id_abc123,
  company_id: company_id_abc123,
  connection_id: connection_id_abc123,
  llm_connection_id: llm_connection_id_abc123,
  snippet_id: 1,
  industry_id: 1,
  ai_job_id: ai_job_id_abc123,
  auc_id: 1,
  function_id: function_id_abc123,
  approval_status: PENDING,
  approved_by_user_id: approved_by_user_id_abc123,
  approved_at: 2025-04-01T00:00:00Z,
  name: Example Name,
  slug: example-slug,
  description: Example description.,
  detailed_description: Example description.,
  source: MANUAL,
  asset_type: CALCULATION,
  asset_schema: {},
  visibility: PRIVATE,
  tags: example_value,
  top_questions: example_value,
  short_code: ABC123,
  restricted_domains: example.com,
  sql_logic: example_value,
  source_schema_name: Example Name,
  source_table_name: Example Name,
  sell_in_marketplace: true,
  require_customization: true,
  viz_spec: {},
  viz_chart_library: PLOTLY,
  viz_chart_type: LINE,
  viz_dep_var_col_name: Example Name,
  viz_indep_var_col_name: Example Name,
  viz_size_col_name: Example Name,
  viz_color_col_name: Example Name,
  viz_data_aggregation: No Aggregation,
  viz_sort_direction: No Sorting,
  viz_data_limit: 1,
  viz_color_scheme: Default,
  viz_show_legend: true,
  viz_show_grid: true,
  viz_show_trendline: true,
  viz_line_smoothing: true,
  viz_bar_stacked: true,
  viz_filter_direction: TOP,
  allow_params: true,
  accept_terms: true,
  cached: true,
  schedule: example_value,
  next_run: 2025-04-01T00:00:00Z,
  data_time_period_start: 2025-04-01T00:00:00Z,
  data_time_period_end: 2025-04-01T00:00:00Z,
  date_collection_start: 2025-04-01T00:00:00Z,
  geographic_coverage_type: GLOBAL,
  geographic_coverage_details: example_value,
  data_source_refresh_frequency: EVERY_SECOND,
  rate_limit_number: 0.15,
  rate_limit_period: SECOND,
  rate_limit_granularity: USER
)
```

