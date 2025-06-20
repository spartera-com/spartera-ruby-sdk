#!/usr/bin/env ruby

# Simple Spartera API Ruby SDK Example
# 
# This example demonstrates basic SDK initialization and configuration.

require 'spartera_api_sdk'

def main
  puts "🚀 Spartera API Ruby SDK Example"
  puts "=" * 40
  
  # Configure the client
  SparteraApiSdk.configure do |config|
    # Set API base URL
    config.host = ENV['SPARTERA_API_BASE_URL'] || 'https://api.spartera.com'
    
    # IMPORTANT: Spartera uses X-API-Key header authentication
    api_key = ENV['SPARTERA_API_KEY'] || 'your-api-key-here'
    config.api_key['X-API-Key'] = api_key
    
    # Optional: Set timeout
    config.timeout = 30
  end
  
  # Get company ID from environment
  company_id = ENV['SPARTERA_COMPANY_ID'] || 'your-company-id'
  
  # Check environment variables
  if ENV['SPARTERA_API_KEY'].nil? || ENV['SPARTERA_API_KEY'] == 'your-api-key-here'
    puts "⚠️  Set SPARTERA_API_KEY environment variable with your actual API key"
  end
  if ENV['SPARTERA_COMPANY_ID'].nil? || ENV['SPARTERA_COMPANY_ID'] == 'your-company-id'
    puts "⚠️  Set SPARTERA_COMPANY_ID environment variable with your company ID"
  end
  
  puts ""
  puts "Configured client for: #{SparteraApiSdk.configuration.host}"
  puts "Company ID: #{company_id}"
  puts "API configuration created: #{SparteraApiSdk.configuration.host ? 'true' : 'false'}"
  
  puts "\n✅ SDK basic initialization test completed successfully!"
  puts "\n📝 To test with real API calls, set your credentials and modify this example"
  puts "   export SPARTERA_API_KEY='your-actual-api-key'"
  puts "   export SPARTERA_COMPANY_ID='your-actual-company-id'"
end

# Run the example
if __FILE__ == $0
  main
end
