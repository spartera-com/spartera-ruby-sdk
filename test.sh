#!/bin/bash
# Test script for Ruby SDK

echo "🧪 Testing Ruby SDK..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby 2.7 or higher."
    exit 1
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Installing Bundler..."
    gem install bundler
fi

# Install dependencies
echo "Installing dependencies..."
bundle install

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
    
    # Check Ruby syntax
    echo "Checking Ruby syntax..."
    ruby -c example.rb > /dev/null
    
    if [ $? -eq 0 ]; then
        echo "✅ Ruby syntax check passed"
        echo "📝 To test with real API calls:"
        echo "   export SPARTERA_API_KEY='your-api-key'"
        echo "   export SPARTERA_COMPANY_ID='your-company-id'"
        echo "   ruby example.rb"
    else
        echo "❌ Ruby syntax check failed"
        exit 1
    fi
else
    echo "❌ Dependencies installation failed"
    exit 1
fi
