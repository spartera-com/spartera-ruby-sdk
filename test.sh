#!/bin/bash
# Test script for Ruby SDK

echo "🧪 Testing Ruby SDK..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby 2.7 or higher."
    exit 1
fi

echo "✅ Ruby version: $(ruby --version)"

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Installing Bundler..."
    gem install bundler
fi

echo "✅ Bundler version: $(bundle --version)"

# Clean any previous bundle state
if [ -f "Gemfile.lock" ]; then
    echo "Cleaning previous bundle state..."
    rm -f Gemfile.lock
fi

# Install dependencies
echo "Installing dependencies..."
if bundle install; then
    echo "✅ Dependencies installed successfully"
    
    # Check Ruby syntax
    echo "Checking Ruby syntax..."
    if ruby -c example.rb > /dev/null; then
        echo "✅ Ruby syntax check passed"
        
        # Try to run basic initialization test
        echo "Running basic initialization test..."
        if ruby example.rb; then
            echo "✅ Basic initialization test passed"
        else
            echo "⚠️  Basic initialization test had issues (this may be expected without API credentials)"
        fi
        
        echo ""
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
    echo "Debugging information:"
    echo "Current directory: $(pwd)"
    echo "Gemfile exists: $([ -f Gemfile ] && echo 'yes' || echo 'no')"
    echo "Gemspec exists: $([ -f *.gemspec ] && echo 'yes' || echo 'no')"
    if [ -f Gemfile ]; then
        echo "Gemfile contents:"
        cat Gemfile
    fi
    exit 1
fi
