# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "spartera_api_sdk/version"

Gem::Specification.new do |s|
  s.name        = "spartera_api_sdk"
  s.version     = SparteraApiSdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tony D"]
  s.email       = ["tony@spartera.com"]
  s.homepage    = "https://github.com/spartera-com/spartera-ruby-sdk"
  s.summary     = "Spartera API Ruby SDK"
  s.description = "Official SDK for Spartera API - Interface to manage companies' accounts and process insights remotely"
  s.license     = "Apache-2.0"

  # Ruby version requirement (NOT a dependency)
  s.required_ruby_version = ">= 2.6.0"

  # Runtime dependencies
  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0'

  # Development dependencies
  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'rake', '~> 13.0'

  # Files to include
  s.files         = `find lib -name "*.rb"`.split("\n") + 
                    `find docs -name "*.md" 2>/dev/null`.split("\n") +
                    %w[README.md LICENSE example.rb]
  s.test_files    = `find spec -name "*.rb" 2>/dev/null`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
  
  # Metadata
  s.metadata = {
    "homepage_uri" => s.homepage,
    "source_code_uri" => "https://github.com/spartera-com/spartera-ruby-sdk",
    "bug_tracker_uri" => "https://github.com/spartera-com/spartera-ruby-sdk/issues",
    "documentation_uri" => "https://docs.spartera.com"
  }
end
