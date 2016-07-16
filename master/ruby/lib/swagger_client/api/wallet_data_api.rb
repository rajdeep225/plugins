=begin
Coinsecure Api Documentation

To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.

OpenAPI spec version: 1.0b

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
  class WalletDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Wallet Bitcoin Addresses
    # Gets a List of Users Bitcoin Deposit Addresses.
    # @param wallet_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletAddressDataResponse]
    def v1userwalletcoinaddress_wallet_id(wallet_id, opts = {})
      data, _status_code, _headers = v1userwalletcoinaddress_wallet_id_with_http_info(wallet_id, opts)
      return data
    end

    # Wallet Bitcoin Addresses
    # Gets a List of Users Bitcoin Deposit Addresses.
    # @param wallet_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletAddressDataResponse, Fixnum, Hash)>] WalletAddressDataResponse data, response status code and response headers
    def v1userwalletcoinaddress_wallet_id_with_http_info(wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoinaddress_wallet_id ..."
      end
      # verify the required parameter 'wallet_id' is set
      fail ArgumentError, "Missing the required parameter 'wallet_id' when calling WalletDataApi.v1userwalletcoinaddress_wallet_id" if wallet_id.nil?
      # resource path
      local_var_path = "/v1/user/wallet/coin/address/{walletID}".sub('{format}','json').sub('{' + 'walletID' + '}', wallet_id.to_s)

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
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletAddressDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoinaddress_wallet_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirmed Wallet Transactions
    # Gets your Confirmed Wallet Bitcoin Transactions.
    # @param wallet_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletAddressDataResponse]
    def v1userwalletcoindepositconfirmed_wallet_id(wallet_id, opts = {})
      data, _status_code, _headers = v1userwalletcoindepositconfirmed_wallet_id_with_http_info(wallet_id, opts)
      return data
    end

    # Confirmed Wallet Transactions
    # Gets your Confirmed Wallet Bitcoin Transactions.
    # @param wallet_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletAddressDataResponse, Fixnum, Hash)>] WalletAddressDataResponse data, response status code and response headers
    def v1userwalletcoindepositconfirmed_wallet_id_with_http_info(wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoindepositconfirmed_wallet_id ..."
      end
      # verify the required parameter 'wallet_id' is set
      fail ArgumentError, "Missing the required parameter 'wallet_id' when calling WalletDataApi.v1userwalletcoindepositconfirmed_wallet_id" if wallet_id.nil?
      # resource path
      local_var_path = "/v1/user/wallet/coin/deposit/confirmed/{walletID}".sub('{format}','json').sub('{' + 'walletID' + '}', wallet_id.to_s)

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
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletAddressDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoindepositconfirmed_wallet_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirmed Wallet Deposit
    # Gets the total confirmed transactions across all accounts and addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletAddressDataResponse]
    def v1userwalletcoindepositconfirmedall(opts = {})
      data, _status_code, _headers = v1userwalletcoindepositconfirmedall_with_http_info(opts)
      return data
    end

    # Confirmed Wallet Deposit
    # Gets the total confirmed transactions across all accounts and addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletAddressDataResponse, Fixnum, Hash)>] WalletAddressDataResponse data, response status code and response headers
    def v1userwalletcoindepositconfirmedall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoindepositconfirmedall ..."
      end
      # resource path
      local_var_path = "/v1/user/wallet/coin/deposit/confirmed/all".sub('{format}','json')

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
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletAddressDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoindepositconfirmedall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unconfirmed Transactions in Wallet
    # Gets the unconfirmed transactions on an account/ wallet.
    # @param wallet_id 
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [nil]
    def v1userwalletcoindepositunconfirmed_wallet_id(wallet_id, authorization, opts = {})
      v1userwalletcoindepositunconfirmed_wallet_id_with_http_info(wallet_id, authorization, opts)
      return nil
    end

    # Unconfirmed Transactions in Wallet
    # Gets the unconfirmed transactions on an account/ wallet.
    # @param wallet_id 
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1userwalletcoindepositunconfirmed_wallet_id_with_http_info(wallet_id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoindepositunconfirmed_wallet_id ..."
      end
      # verify the required parameter 'wallet_id' is set
      fail ArgumentError, "Missing the required parameter 'wallet_id' when calling WalletDataApi.v1userwalletcoindepositunconfirmed_wallet_id" if wallet_id.nil?
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling WalletDataApi.v1userwalletcoindepositunconfirmed_wallet_id" if authorization.nil?
      # resource path
      local_var_path = "/v1/user/wallet/coin/deposit/unconfirmed/{walletID}".sub('{format}','json').sub('{' + 'walletID' + '}', wallet_id.to_s)

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
      header_params[:'Authorization'] = authorization
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoindepositunconfirmed_wallet_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # All Unconfirmed Deposits
    # Gets the total unconfirmed transactions across all accounts and addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [nil]
    def v1userwalletcoindepositunconfirmedall(opts = {})
      v1userwalletcoindepositunconfirmedall_with_http_info(opts)
      return nil
    end

    # All Unconfirmed Deposits
    # Gets the total unconfirmed transactions across all accounts and addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1userwalletcoindepositunconfirmedall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoindepositunconfirmedall ..."
      end
      # resource path
      local_var_path = "/v1/user/wallet/coin/deposit/unconfirmed/all".sub('{format}','json')

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
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoindepositunconfirmedall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wallet Details
    # Gets a List of Users Wallets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletsDataResponse]
    def v1userwalletcoinwallets(opts = {})
      data, _status_code, _headers = v1userwalletcoinwallets_with_http_info(opts)
      return data
    end

    # Wallet Details
    # Gets a List of Users Wallets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization API object to be added
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletsDataResponse, Fixnum, Hash)>] WalletsDataResponse data, response status code and response headers
    def v1userwalletcoinwallets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1userwalletcoinwallets ..."
      end
      # resource path
      local_var_path = "/v1/user/wallet/coin/wallets".sub('{format}','json')

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
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletsDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1userwalletcoinwallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancelled Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletCoinWithdrawDataResponse]
    def v1walletwithdrawcancelled(authorization, opts = {})
      data, _status_code, _headers = v1walletwithdrawcancelled_with_http_info(authorization, opts)
      return data
    end

    # Cancelled Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletCoinWithdrawDataResponse, Fixnum, Hash)>] WalletCoinWithdrawDataResponse data, response status code and response headers
    def v1walletwithdrawcancelled_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1walletwithdrawcancelled ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling WalletDataApi.v1walletwithdrawcancelled" if authorization.nil?
      # resource path
      local_var_path = "/v1/wallet/coin/withdraw/cancelled".sub('{format}','json')

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
      header_params[:'Authorization'] = authorization
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletCoinWithdrawDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1walletwithdrawcancelled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Completed Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletCoinWithdrawDataResponse]
    def v1walletwithdrawcompleted(authorization, opts = {})
      data, _status_code, _headers = v1walletwithdrawcompleted_with_http_info(authorization, opts)
      return data
    end

    # Completed Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletCoinWithdrawDataResponse, Fixnum, Hash)>] WalletCoinWithdrawDataResponse data, response status code and response headers
    def v1walletwithdrawcompleted_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1walletwithdrawcompleted ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling WalletDataApi.v1walletwithdrawcompleted" if authorization.nil?
      # resource path
      local_var_path = "/v1/wallet/coin/withdraw/completed".sub('{format}','json')

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
      header_params[:'Authorization'] = authorization
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletCoinWithdrawDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1walletwithdrawcompleted\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unverified Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletCoinWithdrawDataResponse]
    def v1walletwithdrawunverified(authorization, opts = {})
      data, _status_code, _headers = v1walletwithdrawunverified_with_http_info(authorization, opts)
      return data
    end

    # Unverified Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletCoinWithdrawDataResponse, Fixnum, Hash)>] WalletCoinWithdrawDataResponse data, response status code and response headers
    def v1walletwithdrawunverified_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1walletwithdrawunverified ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling WalletDataApi.v1walletwithdrawunverified" if authorization.nil?
      # resource path
      local_var_path = "/v1/wallet/coin/withdraw/unverified".sub('{format}','json')

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
      header_params[:'Authorization'] = authorization
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletCoinWithdrawDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1walletwithdrawunverified\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verified Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [WalletCoinWithdrawDataResponse]
    def v1walletwithdrawverified(authorization, opts = {})
      data, _status_code, _headers = v1walletwithdrawverified_with_http_info(authorization, opts)
      return data
    end

    # Verified Coin Withdrawals
    # Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
    # @param authorization API object to be added
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(WalletCoinWithdrawDataResponse, Fixnum, Hash)>] WalletCoinWithdrawDataResponse data, response status code and response headers
    def v1walletwithdrawverified_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletDataApi.v1walletwithdrawverified ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling WalletDataApi.v1walletwithdrawverified" if authorization.nil?
      # resource path
      local_var_path = "/v1/wallet/coin/withdraw/verified".sub('{format}','json')

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
      header_params[:'Authorization'] = authorization
      header_params[:'accept'] = opts[:'accept'] if opts[:'accept']

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
        :return_type => 'WalletCoinWithdrawDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletDataApi#v1walletwithdrawverified\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
