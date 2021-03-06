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
  class ExchangeBankActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Initiate Bitcoin Withdrawal
    # The code for verifying the withdrawal can be called from /v1/exchange/bank/coin/withdrawVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankcoinwithdrawinitiate(body, opts = {})
      data, _status_code, _headers = v1userexchangebankcoinwithdrawinitiate_with_http_info(body, opts)
      return data
    end

    # Initiate Bitcoin Withdrawal
    # The code for verifying the withdrawal can be called from /v1/exchange/bank/coin/withdrawVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankcoinwithdrawinitiate_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankcoinwithdrawinitiate ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankcoinwithdrawinitiate" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/coin/withdraw/initiate".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankcoinwithdrawinitiate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Verification Code.
    # Gets Coin Unverified Withdraws Codes to call and apply on /v1/user/exchange/bank/coin/withdraw/verify.
    # @param body You can get unverified withdraw ID&#39;s from /v1/user/exchange/bank/coin/withdraw/unverified
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankcoinwithdrawnew_verifycode(body, opts = {})
      data, _status_code, _headers = v1userexchangebankcoinwithdrawnew_verifycode_with_http_info(body, opts)
      return data
    end

    # Gets a Verification Code.
    # Gets Coin Unverified Withdraws Codes to call and apply on /v1/user/exchange/bank/coin/withdraw/verify.
    # @param body You can get unverified withdraw ID&#39;s from /v1/user/exchange/bank/coin/withdraw/unverified
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankcoinwithdrawnew_verifycode_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankcoinwithdrawnew_verifycode ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankcoinwithdrawnew_verifycode" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/coin/withdraw/newVerifycode".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankcoinwithdrawnew_verifycode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel Bitcoin Withdrawal
    # Cancels an unverified withdrawal. You can get the WithdrawID from /v1/user/exchange/bank/coin/withdraw/unverified.
    # @param withdraw_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id(withdraw_id, opts = {})
      data, _status_code, _headers = v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id_with_http_info(withdraw_id, opts)
      return data
    end

    # Cancel Bitcoin Withdrawal
    # Cancels an unverified withdrawal. You can get the WithdrawID from /v1/user/exchange/bank/coin/withdraw/unverified.
    # @param withdraw_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id_with_http_info(withdraw_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id ..."
      end
      # verify the required parameter 'withdraw_id' is set
      fail ArgumentError, "Missing the required parameter 'withdraw_id' when calling ExchangeBankActionsApi.v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id" if withdraw_id.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/coin/withdraw/unverified/cancel/{withdrawID}".sub('{format}','json').sub('{' + 'withdrawID' + '}', withdraw_id.to_s)

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankcoinwithdrawunverifiedcancel_withdraw_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Bitcoin Withdrawal
    # Verifies an unverified withdrawal. You can get the code from /v1/user/exchange/bank/coin/withdraw/newVerifycode.
    # @param body You can get the code from /v1/user/exchange/bank/coin/withdraw/newVerifycode.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankcoinwithdrawverify(body, opts = {})
      data, _status_code, _headers = v1userexchangebankcoinwithdrawverify_with_http_info(body, opts)
      return data
    end

    # Verify Bitcoin Withdrawal
    # Verifies an unverified withdrawal. You can get the code from /v1/user/exchange/bank/coin/withdraw/newVerifycode.
    # @param body You can get the code from /v1/user/exchange/bank/coin/withdraw/newVerifycode.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankcoinwithdrawverify_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankcoinwithdrawverify ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankcoinwithdrawverify" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/coin/withdraw/verify".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankcoinwithdrawverify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # New Bank Link
    # Submits a New Bank Link on KYC Verified Accounts.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiataccountnew(body, opts = {})
      data, _status_code, _headers = v1userexchangebankfiataccountnew_with_http_info(body, opts)
      return data
    end

    # New Bank Link
    # Submits a New Bank Link on KYC Verified Accounts.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiataccountnew_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiataccountnew ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankfiataccountnew" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/account/new".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiataccountnew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel Unverified Exchange Fiat Deposit
    # Cancels an unverified Exchange Fiat Deposit.
    # @param deposit_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatdepositcancel_deposit_id(deposit_id, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatdepositcancel_deposit_id_with_http_info(deposit_id, opts)
      return data
    end

    # Cancel Unverified Exchange Fiat Deposit
    # Cancels an unverified Exchange Fiat Deposit.
    # @param deposit_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatdepositcancel_deposit_id_with_http_info(deposit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatdepositcancel_deposit_id ..."
      end
      # verify the required parameter 'deposit_id' is set
      fail ArgumentError, "Missing the required parameter 'deposit_id' when calling ExchangeBankActionsApi.v1userexchangebankfiatdepositcancel_deposit_id" if deposit_id.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/deposit/cancel/{depositID}".sub('{format}','json').sub('{' + 'depositID' + '}', deposit_id.to_s)

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatdepositcancel_deposit_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # New Exchange Fiat Deposit
    # Submits an unverified fiat deposit. No action will occur unless user cancels or bank notifies us of the payment.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatdepositnew(body, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatdepositnew_with_http_info(body, opts)
      return data
    end

    # New Exchange Fiat Deposit
    # Submits an unverified fiat deposit. No action will occur unless user cancels or bank notifies us of the payment.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatdepositnew_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatdepositnew ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankfiatdepositnew" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/deposit/new".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatdepositnew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate Fiat Withdrawal
    # The code for verifying the withdrawal can be called from /v1/user/exchange/bank/fiat/withdraw/newVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatwithdrawinitiate(body, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatwithdrawinitiate_with_http_info(body, opts)
      return data
    end

    # Initiate Fiat Withdrawal
    # The code for verifying the withdrawal can be called from /v1/user/exchange/bank/fiat/withdraw/newVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatwithdrawinitiate_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatwithdrawinitiate ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankfiatwithdrawinitiate" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/withdraw/initiate".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatwithdrawinitiate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Fiat Verification Code.
    # Gets Fiat Unverified Withdraws Codes to call and apply on /v1/user/exchange/bank/fiat/withdraw/verify.
    # @param body You can get unverified withdraw ID&#39;s from /v1/user/exchange/bank/fiat/withdraw/unverified
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatwithdrawnew_verifycode(body, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatwithdrawnew_verifycode_with_http_info(body, opts)
      return data
    end

    # Gets a Fiat Verification Code.
    # Gets Fiat Unverified Withdraws Codes to call and apply on /v1/user/exchange/bank/fiat/withdraw/verify.
    # @param body You can get unverified withdraw ID&#39;s from /v1/user/exchange/bank/fiat/withdraw/unverified
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatwithdrawnew_verifycode_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatwithdrawnew_verifycode ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankfiatwithdrawnew_verifycode" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/withdraw/newVerifycode".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatwithdrawnew_verifycode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel Fiat Withdrawal
    # Cancels an unverified withdrawal. You can get the WithdrawID from /v1/user/exchange/bank/fiat/withdraw/unverified.
    # @param withdraw_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id(withdraw_id, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id_with_http_info(withdraw_id, opts)
      return data
    end

    # Cancel Fiat Withdrawal
    # Cancels an unverified withdrawal. You can get the WithdrawID from /v1/user/exchange/bank/fiat/withdraw/unverified.
    # @param withdraw_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id_with_http_info(withdraw_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id ..."
      end
      # verify the required parameter 'withdraw_id' is set
      fail ArgumentError, "Missing the required parameter 'withdraw_id' when calling ExchangeBankActionsApi.v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id" if withdraw_id.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/withdraw/unverified/cancel/{withdrawID}".sub('{format}','json').sub('{' + 'withdrawID' + '}', withdraw_id.to_s)

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatwithdrawunverifiedcancel_withdraw_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Fiat Withdrawal
    # Verifies an unverified withdrawal. You can get the code from /v1/user/exchange/bank/fiat/withdraw/newVerifycode.
    # @param body You can get the code from /v1/user/exchange/bank/fiat/withdraw/newVerifycode
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessResult]
    def v1userexchangebankfiatwithdrawverify(body, opts = {})
      data, _status_code, _headers = v1userexchangebankfiatwithdrawverify_with_http_info(body, opts)
      return data
    end

    # Verify Fiat Withdrawal
    # Verifies an unverified withdrawal. You can get the code from /v1/user/exchange/bank/fiat/withdraw/newVerifycode.
    # @param body You can get the code from /v1/user/exchange/bank/fiat/withdraw/newVerifycode
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessResult, Fixnum, Hash)>] SuccessResult data, response status code and response headers
    def v1userexchangebankfiatwithdrawverify_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeBankActionsApi.v1userexchangebankfiatwithdrawverify ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeBankActionsApi.v1userexchangebankfiatwithdrawverify" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bank/fiat/withdraw/verify".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ExchangeBankActionsApi#v1userexchangebankfiatwithdrawverify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
