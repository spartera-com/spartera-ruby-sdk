=begin
#Spartera API Documentation

#Auto-generated API documentation for REST services of the Spartera platform

The version of the OpenAPI document: 0.0.0
Contact: support@spartera.com
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SparteraApiSdk::StorageEnginesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StorageEnginesApi' do
  before do
    # run before each test
    @api_instance = SparteraApiSdk::StorageEnginesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StorageEnginesApi' do
    it 'should create an instance of StorageEnginesApi' do
      expect(@api_instance).to be_instance_of(SparteraApiSdk::StorageEnginesApi)
    end
  end

  # unit tests for cloud_providers_provider_id_storage_engines_engine_id_get
  # Get single storage engine by ID
  # @param provider_id 
  # @param engine_id 
  # @param [Hash] opts the optional parameters
  # @return [CompaniesCompanyIdApiKeysGet200Response]
  describe 'cloud_providers_provider_id_storage_engines_engine_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for cloud_providers_provider_id_storage_engines_get
  # Get a list of all storage engines
  # @param provider_id 
  # @param [Hash] opts the optional parameters
  # @return [CompaniesCompanyIdApiKeysGet200Response]
  describe 'cloud_providers_provider_id_storage_engines_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
