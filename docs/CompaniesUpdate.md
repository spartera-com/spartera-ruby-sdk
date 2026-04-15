# SparteraApiSdk::CompaniesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **industry_id** | **Integer** | References industries.industry_id — Available industry categories for asset classification. Based on US NAISC codes.. See GET /industries for valid values. Optional. | [optional] |
| **country_id** | **Integer** | References countries.country_id — List of countries of the world. See GET /countries for valid values. Optional. | [optional] |
| **company_name** | **String** | Optional. | [optional] |
| **company_description** | **String** | Optional. | [optional] |
| **company_handle** | **String** | Required. Must be unique. | [optional] |
| **company_domain** | **String** | Required. Must be unique. | [optional] |
| **credits_balance** | **Integer** | Current balance of credits for this company (buyer) | [optional] |
| **accepted_eula** | **Boolean** | Optional. | [optional] |
| **stripe_account_id** | **String** | Stripe Connect account ID for marketplace sellers | [optional] |
| **stripe_account_status** | **String** | Status of the Stripe account (verified, pending, etc.) | [optional] |
| **vendor_share_percent** | **Float** | Negotiated vendor revenue share (e.g. 0.85 &#x3D; 85%). NULL &#x3D; system default 80%. | [optional] |
| **partnership_type** | **String** | Partnership type: SELF_MANAGED, CUSTODIAN, or null | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::CompaniesUpdate.new(
  industry_id: 1,
  country_id: US,
  company_name: Example Name,
  company_description: Example description.,
  company_handle: example_value,
  company_domain: example.com,
  credits_balance: 1,
  accepted_eula: true,
  stripe_account_id: stripe_account_id_abc123,
  stripe_account_status: ACTIVE,
  vendor_share_percent: 1.0,
  partnership_type: SELF_MANAGED
)
```

