# SparteraApiSdk::CompaniesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **industry_id** | **Integer** |  | [optional] |
| **country_id** | **Integer** |  | [optional] |
| **company_name** | **String** |  | [optional] |
| **company_description** | **String** |  | [optional] |
| **company_handle** | **String** |  | [optional] |
| **company_domain** | **String** |  | [optional] |
| **credits_balance** | **Integer** | Current balance of credits for this company (buyer) | [optional] |
| **accepted_eula** | **Boolean** |  | [optional] |
| **stripe_account_id** | **String** | Stripe Connect account ID for marketplace sellers | [optional] |
| **stripe_account_status** | **String** | Status of the Stripe account (verified, pending, etc.) | [optional] |

## Example

```ruby
require 'spartera_api_sdk'

instance = SparteraApiSdk::CompaniesUpdate.new(
  industry_id: null,
  country_id: null,
  company_name: null,
  company_description: null,
  company_handle: null,
  company_domain: null,
  credits_balance: null,
  accepted_eula: null,
  stripe_account_id: null,
  stripe_account_status: null
)
```

