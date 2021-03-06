=begin
#Coinsecure Api Documentation

#To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.

OpenAPI spec version: beta

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class SecurityActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Initiate Authy Registration.
    # Sends a Token via call or sms to begin the registration. This token needs to be used as the code in /v1/user/mfa/authy/initiate/register.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1mfaauthyinitiate(body, opts = {})
      data, _status_code, _headers = v1mfaauthyinitiate_with_http_info(body, opts)
      return data
    end

    # Initiate Authy Registration.
    # Sends a Token via call or sms to begin the registration. This token needs to be used as the code in /v1/user/mfa/authy/initiate/register.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1mfaauthyinitiate_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1mfaauthyinitiate ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SecurityActionsApi.v1mfaauthyinitiate" if body.nil?
      # resource path
      local_var_path = "/v1/mfa/authy/initiate".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1mfaauthyinitiate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate GA Registration.
    # Returns the Google Authenticator Secret and a QR code URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1mfagainitiate(opts = {})
      data, _status_code, _headers = v1mfagainitiate_with_http_info(opts)
      return data
    end

    # Initiate GA Registration.
    # Returns the Google Authenticator Secret and a QR code URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1mfagainitiate_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1mfagainitiate ..."
      end
      # resource path
      local_var_path = "/v1/mfa/ga/initiate".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1mfagainitiate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authy Call Code
    # Calls valid phone user with a code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Login Token or any Apikey to be added as Authorization in header
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfaauthycall(opts = {})
      data, _status_code, _headers = v1usermfaauthycall_with_http_info(opts)
      return data
    end

    # Authy Call Code
    # Calls valid phone user with a code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Login Token or any Apikey to be added as Authorization in header
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfaauthycall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfaauthycall ..."
      end
      # resource path
      local_var_path = "/v1/mfa/authy/call".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfaauthycall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable Authy
    # Disables users Authy
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfaauthydisable_code(code, opts = {})
      data, _status_code, _headers = v1usermfaauthydisable_code_with_http_info(code, opts)
      return data
    end

    # Disable Authy
    # Disables users Authy
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfaauthydisable_code_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfaauthydisable_code ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling SecurityActionsApi.v1usermfaauthydisable_code" if code.nil?
      # resource path
      local_var_path = "/v1/user/mfa/authy/disable/{code}".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfaauthydisable_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Authy Registration
    # Verifies and registers the user with verification code sent to sms or call from /v1/mfa/authy/initiate.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfaauthyinitiateenable(body, opts = {})
      data, _status_code, _headers = v1usermfaauthyinitiateenable_with_http_info(body, opts)
      return data
    end

    # Verify Authy Registration
    # Verifies and registers the user with verification code sent to sms or call from /v1/mfa/authy/initiate.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfaauthyinitiateenable_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfaauthyinitiateenable ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SecurityActionsApi.v1usermfaauthyinitiateenable" if body.nil?
      # resource path
      local_var_path = "/v1/user/mfa/authy/initiate/enable".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfaauthyinitiateenable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authy Sms Code
    # Disables users Authy
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Login Token or any Apikey to be added as Authorization in header
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfaauthysms(opts = {})
      data, _status_code, _headers = v1usermfaauthysms_with_http_info(opts)
      return data
    end

    # Authy Sms Code
    # Disables users Authy
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Login Token or any Apikey to be added as Authorization in header
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfaauthysms_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfaauthysms ..."
      end
      # resource path
      local_var_path = "/v1/mfa/authy/sms".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfaauthysms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable Google Authenticator
    # Disables users Google Authenticator 2FA
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfagadisable_code(code, opts = {})
      data, _status_code, _headers = v1usermfagadisable_code_with_http_info(code, opts)
      return data
    end

    # Disable Google Authenticator
    # Disables users Google Authenticator 2FA
    # @param code 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfagadisable_code_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfagadisable_code ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling SecurityActionsApi.v1usermfagadisable_code" if code.nil?
      # resource path
      local_var_path = "/v1/user/mfa/ga/disable/{code}".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfagadisable_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable Google Authenticator
    # Enables Google Authenticator 2FA with the code from /v1/mfa/ga/initiate.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1usermfagainitiateenable(body, opts = {})
      data, _status_code, _headers = v1usermfagainitiateenable_with_http_info(body, opts)
      return data
    end

    # Enable Google Authenticator
    # Enables Google Authenticator 2FA with the code from /v1/mfa/ga/initiate.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1usermfagainitiateenable_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1usermfagainitiateenable ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SecurityActionsApi.v1usermfagainitiateenable" if body.nil?
      # resource path
      local_var_path = "/v1/user/mfa/ga/initiate/enable".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1usermfagainitiateenable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change Password.
    # Changes an account Password.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userpasswordchange(body, opts = {})
      data, _status_code, _headers = v1userpasswordchange_with_http_info(body, opts)
      return data
    end

    # Change Password.
    # Changes an account Password.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userpasswordchange_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1userpasswordchange ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SecurityActionsApi.v1userpasswordchange" if body.nil?
      # resource path
      local_var_path = "/v1/user/password/change".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1userpasswordchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset Password.
    # Resets an account Password. Use forgotPassword to generate a token.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userpasswordreset(body, opts = {})
      data, _status_code, _headers = v1userpasswordreset_with_http_info(body, opts)
      return data
    end

    # Reset Password.
    # Resets an account Password. Use forgotPassword to generate a token.
    # @param body Please Send Valid Json as below.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userpasswordreset_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityActionsApi.v1userpasswordreset ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling SecurityActionsApi.v1userpasswordreset" if body.nil?
      # resource path
      local_var_path = "/v1/user/password/reset".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityActionsApi#v1userpasswordreset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
