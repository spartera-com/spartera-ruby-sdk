# Ruby SDK Documentation

## Overview
The Ruby SDK for Spartera API provides a convenient way to interact with the Spartera platform from Ruby applications.

**Install:** `gem install spartera_api_sdk`

## Requirements
- Ruby 2.7 or higher
- Bundler

## 🚀 Sell Your First Data Product in 4 API Calls

Transform your data into revenue in under 5 minutes! Here's how to create and sell a data product on the Spartera marketplace:

```ruby
require 'spartera_api_sdk'
require 'json'

# Configure client
SparteraApiSdk.configure do |config|
  config.host = 'https://api.spartera.com'
  config.api_key['X-API-Key'] = 'your-api-key-here'
end

COMPANY_ID = 'your-company-id'
USER_ID = 'your-user-id'

def sell_data_product
  # Step 1: Discover available data platforms
  puts '🔍 Step 1: Discovering available platforms...'
  cloud_providers_api = SparteraApiSdk::CloudProvidersApi.new
  
  engines = cloud_providers_api.cloud_providers_get
  bigquery_engine_id = 1  # BigQuery engine ID
  puts "✅ Found #{engines.length} supported platforms"

  # Step 2: Create a data connection (with credentials in one call!)
  puts '🔗 Step 2: Creating BigQuery connection...'
  connections_api = SparteraApiSdk::ConnectionsApi.new
  
  # Your BigQuery service account JSON (replace with your actual credentials)
  service_account_json = {
    type: 'service_account',
    project_id: 'your-project-id',
    private_key_id: 'key-id',
    private_key: "-----BEGIN PRIVATE KEY-----\nYOUR_PRIVATE_KEY\n-----END PRIVATE KEY-----\n",
    client_email: 'your-service@your-project.iam.gserviceaccount.com',
    client_id: 'client-id',
    auth_uri: 'https://accounts.google.com/o/oauth2/auth',
    token_uri: 'https://oauth2.googleapis.com/token'
  }

  connection_data = SparteraApiSdk::Connection.new(
    company_id: COMPANY_ID,
    user_id: USER_ID,
    engine_id: bigquery_engine_id,
    name: 'My BigQuery Data Warehouse',
    description: "Connection to our company's analytics data",
    visibility: 'PRIVATE',
    credential_type: 'SERVICE_ACCOUNT',
    credentials: service_account_json.to_json,
    verified_usage_ability: true  # Legal compliance - you have rights to this data
  )

  connection = connections_api.companies_company_id_connections_post(COMPANY_ID, connection_data)
  connection_id = connection.connection_id
  puts "✅ Created connection: #{connection_id}"

  # Step 3: Create a marketplace asset
  puts '📊 Step 3: Creating marketplace asset...'
  assets_api = SparteraApiSdk::AssetsApi.new

  asset_data = SparteraApiSdk::Asset.new(
    name: 'Average Temperature Analytics',
    description: 'Real-time weather temperature analytics from our IoT sensors across major cities',
    company_id: COMPANY_ID,
    connection_id: connection_id,
    asset_type: 'CALCULATION',
    sql_logic: 'SELECT AVERAGE(temperature) AS avg_temp, city, COUNT(*) AS readings FROM `your-project.weather.sensor_data` WHERE timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 24 HOUR) GROUP BY city ORDER BY avg_temp DESC',
    sell_in_marketplace: true,  # 🔥 This makes it available for purchase!
    source: 'MANUAL',
    visibility: 'PUBLIC'
  )

  asset = assets_api.companies_company_id_assets_post(COMPANY_ID, asset_data)
  asset_id = asset.asset_id
  puts "✅ Created marketplace asset: #{asset_id}"

  # Step 4: Set your price and start earning!
  puts '💰 Step 4: Setting price...'
  pricing_api = SparteraApiSdk::AssetPriceHistoryApi.new

  price_data = SparteraApiSdk::Assetpricehistory.new(
    price_usd: 2.00  # $2.00 per analysis (credits calculated automatically)
  )

  price = pricing_api.companies_company_id_assets_asset_id_prices_post(COMPANY_ID, asset_id, price_data)
  puts "✅ Price set: $#{price.price_usd} (≈#{price.price_credits} credits)"

  puts "\n🎉 SUCCESS! Your data product is now live on the Spartera marketplace!"
  puts "📈 Asset URL: https://marketplace.spartera.com/assets/#{asset_id}"
  puts '💡 Customers can now discover and purchase your analytics!'
rescue SparteraApiSdk::ApiError => e
  puts "Error: #{e.message}"
  raise e
end

# Run the function
sell_data_product
```

**That's it!** You're now selling data analytics. Every time someone runs your analysis, you earn money! 

### 🎯 What You Just Built
- **Data Connection**: Secure link to your BigQuery warehouse
- **Analytics Product**: Temperature analysis that buyers can purchase
- **Marketplace Listing**: Your product is discoverable by thousands of potential customers
- **Automated Pricing**: Credits are calculated automatically based on your USD price

### 💰 Revenue Model
- You set the price ($2.00 in this example)
- Customers pay in credits (auto-converted)
- You earn revenue each time someone uses your analytics
- Spartera handles billing, payments, and customer support

---

## 📚 Detailed Documentation

### Authentication

Get your API key from the [Spartera Dashboard](https://app.spartera.com/settings/api-keys):

```ruby
require 'spartera_api_sdk'

# Option 1: Direct configuration
SparteraApiSdk.configure do |config|
  config.host = 'https://api.spartera.com'
  config.api_key['X-API-Key'] = 'your-api-key-here'
end

# Option 2: Environment variables (recommended)
ENV['SPARTERA_API_KEY'] = 'your-api-key'
ENV['SPARTERA_COMPANY_ID'] = 'your-company-id'

SparteraApiSdk.configure do |config|
  config.host = 'https://api.spartera.com'
  config.api_key['X-API-Key'] = ENV['SPARTERA_API_KEY']
end

# Create API instances
companies_api = SparteraApiSdk::CompaniesApi.new
assets_api = SparteraApiSdk::AssetsApi.new
```

### Environment Variables

```bash
export SPARTERA_API_KEY="your-api-key"
export SPARTERA_COMPANY_ID="your-company-id"
export SPARTERA_API_BASE_URL="https://api.spartera.com"
```

### Connection Types

Create connections to different data platforms:

```ruby
# BigQuery
bigquery_credentials = {
  type: 'service_account',
  project_id: 'your-project',
  # ... your service account JSON
}

# Snowflake
snowflake_connection = SparteraApiSdk::Connection.new(
  credential_type: 'USERNAME_PASSWORD',
  username: 'your-username',
  password: 'your-password'
)

# API Data Source
api_connection = SparteraApiSdk::Connection.new(
  credential_type: 'API_KEY',
  api_endpoint: 'https://api.yourcompany.com/data',
  api_key_param: 'x-api-key',
  credentials: 'your-api-key-value'
)
```

### Asset Types

Create different types of marketplace products:

```ruby
# SQL-based Analytics
calculation_asset = SparteraApiSdk::Asset.new(
  asset_type: 'CALCULATION',
  sql_logic: 'SELECT COUNT(*) as total_sales, AVG(amount) as avg_order FROM sales WHERE date >= CURRENT_DATE()'
)

# Visualization/Dashboard
visualization_asset = SparteraApiSdk::Asset.new(
  asset_type: 'VISUALIZATION',
  viz_chart_type: 'BAR',
  viz_dep_var_col_name: 'sales_amount',
  viz_indep_var_col_name: 'month'
)
```

### Pricing Strategies

Set different pricing models:

```ruby
# Fixed price per analysis
basic_pricing = SparteraApiSdk::Assetpricehistory.new(price_usd: 1.50)

# Premium analytics
premium_pricing = SparteraApiSdk::Assetpricehistory.new(price_usd: 10.00)

# Bulk discount with sales
sale_pricing = SparteraApiSdk::Assetpricehistory.new(
  price_usd: 5.00,
  discount_percentage: 20.0,
  sale_start_date: '2024-01-01T00:00:00Z',
  sale_end_date: '2024-01-31T23:59:59Z'
)
```

### Marketplace Management

Manage your products after launch:

```ruby
# Update asset details
update_data = SparteraApiSdk::Asset.new(
  description: 'Updated description with new features'
)
assets_api.companies_company_id_assets_asset_id_patch(COMPANY_ID, asset_id, update_data)

# Change pricing
new_price = SparteraApiSdk::Assetpricehistory.new(price_usd: 3.00)
pricing_api.companies_company_id_assets_asset_id_prices_post(COMPANY_ID, asset_id, new_price)

# Remove from marketplace (but keep private)
marketplace_update = SparteraApiSdk::Asset.new(sell_in_marketplace: false)
assets_api.companies_company_id_assets_asset_id_patch(COMPANY_ID, asset_id, marketplace_update)

# Get sales analytics
analytics = companies_api.companies_company_id_analytics_sales_get(COMPANY_ID)
puts "Total revenue: $#{analytics.total_revenue}"
```

### Error Handling

```ruby
begin
  asset = assets_api.companies_company_id_assets_post(COMPANY_ID, asset_data)
rescue SparteraApiSdk::ApiError => e
  puts "API Error: #{e.message}"
  puts "Status: #{e.code}"
  puts "Response: #{e.response_body}"
  
  # Handle specific errors
  case e.code
  when 400
    puts 'Check your asset data format'
  when 401
    puts 'Check your API key'
  when 403
    puts 'Check your permissions'
  when 404
    puts 'Check your IDs'
  else
    puts "HTTP #{e.code}: #{e.message}"
  end
  
  raise e
end
```

### Advanced Features

```ruby
# Batch operations
connection_ids = []
%w[bigquery snowflake redshift].each do |platform|
  conn = connections_api.companies_company_id_connections_post(COMPANY_ID, platform_config)
  connection_ids << conn.connection_id
end

# Asset recommendations
recommendations = assets_api.companies_company_id_assets_asset_id_recommendations_get(
  COMPANY_ID, 
  asset_id, 
  { limit: 10 }
)

# Performance analytics
performance = companies_api.companies_company_id_analytics_assets_get(
  COMPANY_ID,
  start_date: '2024-01-01',
  end_date: '2024-12-31'
)
```

### Rails Integration

For Ruby on Rails applications:

```ruby
# Gemfile
gem 'spartera_api_sdk'

# config/initializers/spartera.rb
SparteraApiSdk.configure do |config|
  config.host = Rails.application.credentials.spartera[:api_url] || 'https://api.spartera.com'
  config.api_key['X-API-Key'] = Rails.application.credentials.spartera[:api_key]
end

# app/services/spartera_service.rb
class SparteraService
  def self.companies_api
    @companies_api ||= SparteraApiSdk::CompaniesApi.new
  end
  
  def self.assets_api
    @assets_api ||= SparteraApiSdk::AssetsApi.new
  end
  
  def self.get_company(company_id)
    companies_api.companies_company_id_get(company_id)
  rescue SparteraApiSdk::ApiError => e
    Rails.logger.error "Spartera API Error: #{e.message}"
    nil
  end
end

# Usage in controllers
class AssetsController < ApplicationController
  def show
    @company = SparteraService.get_company(params[:company_id])
    # ...
  end
end
```

## Package Manager
- **Platform**: RubyGems
- **Install**: `gem install spartera_api_sdk`
- **Import**: `require 'spartera_api_sdk'`

## Publishing
1. Build: `gem build *.gemspec`
2. Push: `gem push *.gem`
3. Install: `gem install spartera_api_sdk`