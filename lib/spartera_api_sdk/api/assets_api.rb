=begin
#Spartera API Documentation

#Auto-generated API documentation for REST services of the Spartera platform

The version of the OpenAPI document: 0.0.0
Contact: support@spartera.com
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'cgi'

module SparteraApiSdk
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model.
    # @param company_handle [String] 
    # @param asset_slug [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsAssetIdGet200Response]
    def analyze_company_handle_assets_asset_slug_get(company_handle, asset_slug, opts = {})
      data, _status_code, _headers = analyze_company_handle_assets_asset_slug_get_with_http_info(company_handle, asset_slug, opts)
      data
    end

    # Process (analyze) an asset. Attempt to process an analytic on a backend warehouse/AI model.
    # @param company_handle [String] 
    # @param asset_slug [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsAssetIdGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsAssetIdGet200Response data, response status code and response headers
    def analyze_company_handle_assets_asset_slug_get_with_http_info(company_handle, asset_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.analyze_company_handle_assets_asset_slug_get ...'
      end
      # verify the required parameter 'company_handle' is set
      if @api_client.config.client_side_validation && company_handle.nil?
        fail ArgumentError, "Missing the required parameter 'company_handle' when calling AssetsApi.analyze_company_handle_assets_asset_slug_get"
      end
      # verify the required parameter 'asset_slug' is set
      if @api_client.config.client_side_validation && asset_slug.nil?
        fail ArgumentError, "Missing the required parameter 'asset_slug' when calling AssetsApi.analyze_company_handle_assets_asset_slug_get"
      end
      # resource path
      local_var_path = '/analyze/{company_handle}/assets/{asset_slug}'.sub('{' + 'company_handle' + '}', CGI.escape(company_handle.to_s)).sub('{' + 'asset_slug' + '}', CGI.escape(asset_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsAssetIdGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.analyze_company_handle_assets_asset_slug_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#analyze_company_handle_assets_asset_slug_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete single asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsAssetIdDelete200Response]
    def companies_company_id_assets_asset_id_delete(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_delete_with_http_info(company_id, asset_id, opts)
      data
    end

    # Delete single asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsAssetIdDelete200Response, Integer, Hash)>] CompaniesCompanyIdAssetsAssetIdDelete200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_delete_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_delete ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_delete"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_delete"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsAssetIdDelete200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get single asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsAssetIdGet200Response]
    def companies_company_id_assets_asset_id_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Get single asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsAssetIdGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsAssetIdGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsAssetIdGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the information schema for a specific asset's table
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_asset_id_infoschema_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_infoschema_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Get the information schema for a specific asset&#39;s table
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_infoschema_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_infoschema_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_infoschema_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_infoschema_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}/infoschema'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_infoschema_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_infoschema_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve and save an asset's information schema
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_asset_id_infoschema_save_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_infoschema_save_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Retrieve and save an asset&#39;s information schema
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_infoschema_save_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_infoschema_save_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_infoschema_save_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_infoschema_save_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}/infoschema/save'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_infoschema_save_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_infoschema_save_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param asset [Asset] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsAssetIdPatch200Response]
    def companies_company_id_assets_asset_id_patch(company_id, asset_id, asset, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_patch_with_http_info(company_id, asset_id, asset, opts)
      data
    end

    # Update an existing asset by ID
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param asset [Asset] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsAssetIdPatch200Response, Integer, Hash)>] CompaniesCompanyIdAssetsAssetIdPatch200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_patch_with_http_info(company_id, asset_id, asset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_patch ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_patch"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_patch"
      end
      # verify the required parameter 'asset' is set
      if @api_client.config.client_side_validation && asset.nil?
        fail ArgumentError, "Missing the required parameter 'asset' when calling AssetsApi.companies_company_id_assets_asset_id_patch"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(asset)

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsAssetIdPatch200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AI-predicted pricing for a specific asset
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_asset_id_predicted_price_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_predicted_price_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Get AI-predicted pricing for a specific asset
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_predicted_price_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_predicted_price_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_predicted_price_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_predicted_price_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}/predicted_price'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_predicted_price_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_predicted_price_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get statistics for a specific asset (public endpoint)
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_asset_id_statistics_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_statistics_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Get statistics for a specific asset (public endpoint)
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_statistics_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_statistics_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_statistics_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_statistics_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}/statistics'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_statistics_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_statistics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test out an Asset (on a subset of data)
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_asset_id_test_get(company_id, asset_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_asset_id_test_get_with_http_info(company_id, asset_id, opts)
      data
    end

    # Test out an Asset (on a subset of data)
    # @param company_id [String] 
    # @param asset_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_asset_id_test_get_with_http_info(company_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_asset_id_test_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_asset_id_test_get"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.companies_company_id_assets_asset_id_test_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/{asset_id}/test'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s)).sub('{' + 'asset_id' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_asset_id_test_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_asset_id_test_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all assets for a specific company
    # @param company_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_get(company_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_get_with_http_info(company_id, opts)
      data
    end

    # Get all assets for a specific company
    # @param company_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_get_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new asset
    # @param company_id [String] 
    # @param asset [Asset] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsPost200Response]
    def companies_company_id_assets_post(company_id, asset, opts = {})
      data, _status_code, _headers = companies_company_id_assets_post_with_http_info(company_id, asset, opts)
      data
    end

    # Create a new asset
    # @param company_id [String] 
    # @param asset [Asset] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsPost200Response, Integer, Hash)>] CompaniesCompanyIdAssetsPost200Response data, response status code and response headers
    def companies_company_id_assets_post_with_http_info(company_id, asset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_post ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_post"
      end
      # verify the required parameter 'asset' is set
      if @api_client.config.client_side_validation && asset.nil?
        fail ArgumentError, "Missing the required parameter 'asset' when calling AssetsApi.companies_company_id_assets_post"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(asset)

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsPost200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get statistics for all assets the user has access to
    # @param company_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CompaniesCompanyIdAssetsGet200Response]
    def companies_company_id_assets_statistics_get(company_id, opts = {})
      data, _status_code, _headers = companies_company_id_assets_statistics_get_with_http_info(company_id, opts)
      data
    end

    # Get statistics for all assets the user has access to
    # @param company_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompaniesCompanyIdAssetsGet200Response, Integer, Hash)>] CompaniesCompanyIdAssetsGet200Response data, response status code and response headers
    def companies_company_id_assets_statistics_get_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.companies_company_id_assets_statistics_get ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling AssetsApi.companies_company_id_assets_statistics_get"
      end
      # resource path
      local_var_path = '/companies/{company_id}/assets/statistics'.sub('{' + 'company_id' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesCompanyIdAssetsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AssetsApi.companies_company_id_assets_statistics_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#companies_company_id_assets_statistics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
