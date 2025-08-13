# SparteraApiSdk::AssetsUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **company_id** | **String** |  | [optional] |
| **connection_id** | **String** |  | [optional] |
| **industry_id** | **Integer** |  | [optional] |
| **approval_status** | **String** | Approval status for AI-generated assets | [optional] |
| **approved_by_user_id** | **String** | User who approved this asset for marketplace | [optional] |
| **approved_at** | **Time** | When this asset was approved for marketplace | [optional] |
| **name** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **source** | **String** | Enum type: Source | [optional] |
| **asset_type** | **String** | Enum type: AssetType | [optional] |
| **asset_schema** | **Object** | Stores database table schema data including columns, types, and metadata | [optional] |
| **tags** | **String** |  | [optional] |
| **sql_logic** | **String** |  | [optional] |
| **source_schema_name** | **String** |  | [optional] |
| **source_table_name** | **String** |  | [optional] |
| **sell_in_marketplace** | **Boolean** |  | [optional] |
| **viz_chart_library** | **String** | Enum type: PlottingLibrary | [optional] |
| **viz_chart_type** | **String** | Enum type: ChartType | [optional] |
| **viz_dep_var_col_name** | **String** |  | [optional] |
| **viz_indep_var_col_name** | **String** |  | [optional] |
| **viz_size_col_name** | **String** |  | [optional] |
| **viz_color_col_name** | **String** |  | [optional] |
| **viz_data_aggregation** | **String** | Enum type: AggregationType | [optional] |
| **viz_sort_direction** | **String** | Enum type: SortDirection | [optional] |
| **viz_data_limit** | **Integer** |  | [optional] |
| **viz_color_scheme** | **String** | Enum type: ColorScheme | [optional] |
| **allow_params** | **Boolean** |  | [optional] |
| **accept_terms** | **Boolean** |  | [optional] |
| **cached** | **Boolean** |  | [optional] |
| **schedule** | **String** |  | [optional] |
| **next_run** | **Time** |  | [optional] |
| **data_time_period_start** | **Time** | Start date of the data time period covered | [optional] |
| **data_time_period_end** | **Time** | End date of the data time period covered | [optional] |
| **geographic_coverage_type** | **String** | Type of geographic coverage (Enum type: GeographicCoverage) | [optional] |
| **geographic_coverage_details** | **String** | Specific regions/countries covered (e.g., &#39;United States, Canada, Mexico&#39;) | [optional] |
| **data_source_refresh_frequency** | **String** | How often the source data is refreshed (Enum type: DataRefreshFrequency) | [optional] |
| **data_source_last_refreshed** | **Time** | When the source data was last refreshed | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::AssetsUpdate.new(
  user_id: null,
  company_id: null,
  connection_id: null,
  industry_id: null,
  approval_status: null,
  approved_by_user_id: null,
  approved_at: null,
  name: null,
  slug: null,
  description: null,
  source: null,
  asset_type: null,
  asset_schema: null,
  tags: null,
  sql_logic: null,
  source_schema_name: null,
  source_table_name: null,
  sell_in_marketplace: null,
  viz_chart_library: null,
  viz_chart_type: null,
  viz_dep_var_col_name: null,
  viz_indep_var_col_name: null,
  viz_size_col_name: null,
  viz_color_col_name: null,
  viz_data_aggregation: null,
  viz_sort_direction: null,
  viz_data_limit: null,
  viz_color_scheme: null,
  allow_params: null,
  accept_terms: null,
  cached: null,
  schedule: null,
  next_run: null,
  data_time_period_start: null,
  data_time_period_end: null,
  geographic_coverage_type: null,
  geographic_coverage_details: null,
  data_source_refresh_frequency: null,
  data_source_last_refreshed: null
)
```

