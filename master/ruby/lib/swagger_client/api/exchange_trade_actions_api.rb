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
  class ExchangeTradeActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel Open Sell Order
    # Cancels a BTC Sell Order. Orders can only be cancelled if they are in a pending state.
    # @param order_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @return [SuccessCancelDataResponse]
    def v1userexchangeaskcancel_order_id(order_id, opts = {})
      data, _status_code, _headers = v1userexchangeaskcancel_order_id_with_http_info(order_id, opts)
      return data
    end

    # Cancel Open Sell Order
    # Cancels a BTC Sell Order. Orders can only be cancelled if they are in a pending state.
    # @param order_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @return [Array<(SuccessCancelDataResponse, Fixnum, Hash)>] SuccessCancelDataResponse data, response status code and response headers
    def v1userexchangeaskcancel_order_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangeaskcancel_order_id ..."
      end
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling ExchangeTradeActionsApi.v1userexchangeaskcancel_order_id" if order_id.nil?
      # resource path
      local_var_path = "/v1/user/exchange/ask/cancel/{orderID}".sub('{format}','json').sub('{' + 'orderID' + '}', order_id.to_s)

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
        :return_type => 'SuccessCancelDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangeaskcancel_order_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BTC Sell Order
    # Creates a BTC Sell Order. If the order cannot be fulfilled completely, data can be found in allAsks and wil be added as a pending order.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessOrderDataResponse]
    def v1userexchangeasknew(body, opts = {})
      data, _status_code, _headers = v1userexchangeasknew_with_http_info(body, opts)
      return data
    end

    # BTC Sell Order
    # Creates a BTC Sell Order. If the order cannot be fulfilled completely, data can be found in allAsks and wil be added as a pending order.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessOrderDataResponse, Fixnum, Hash)>] SuccessOrderDataResponse data, response status code and response headers
    def v1userexchangeasknew_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangeasknew ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeTradeActionsApi.v1userexchangeasknew" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/ask/new".sub('{format}','json')

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
        :return_type => 'SuccessOrderDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangeasknew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel Open Buy Order
    # Cancels a BTC Buy Order. Orders can only be cancelled if they are in a pending state.
    # @param order_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @return [SuccessCancelDataResponse]
    def v1userexchangebidcancel_order_id(order_id, opts = {})
      data, _status_code, _headers = v1userexchangebidcancel_order_id_with_http_info(order_id, opts)
      return data
    end

    # Cancel Open Buy Order
    # Cancels a BTC Buy Order. Orders can only be cancelled if they are in a pending state.
    # @param order_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @return [Array<(SuccessCancelDataResponse, Fixnum, Hash)>] SuccessCancelDataResponse data, response status code and response headers
    def v1userexchangebidcancel_order_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangebidcancel_order_id ..."
      end
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling ExchangeTradeActionsApi.v1userexchangebidcancel_order_id" if order_id.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bid/cancel/{orderID}".sub('{format}','json').sub('{' + 'orderID' + '}', order_id.to_s)

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
        :return_type => 'SuccessCancelDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangebidcancel_order_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BTC Buy Order
    # Creates a BTC Buy Order. If the order cannot be fulfilled completely, data can be found in allAsks and wil be added as a pending order.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessOrderDataResponse]
    def v1userexchangebidnew(body, opts = {})
      data, _status_code, _headers = v1userexchangebidnew_with_http_info(body, opts)
      return data
    end

    # BTC Buy Order
    # Creates a BTC Buy Order. If the order cannot be fulfilled completely, data can be found in allAsks and wil be added as a pending order.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessOrderDataResponse, Fixnum, Hash)>] SuccessOrderDataResponse data, response status code and response headers
    def v1userexchangebidnew_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangebidnew ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeTradeActionsApi.v1userexchangebidnew" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/bid/new".sub('{format}','json')

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
        :return_type => 'SuccessOrderDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangebidnew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Instantly Buy BTC
    # Instantly buys BTC at the closest rate found. This tool will sell at any rate needed to complete the order. It will never exceed the amount, but may fall below.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessOrderDataResponse]
    def v1userexchangeinstantbuy(body, opts = {})
      data, _status_code, _headers = v1userexchangeinstantbuy_with_http_info(body, opts)
      return data
    end

    # Instantly Buy BTC
    # Instantly buys BTC at the closest rate found. This tool will sell at any rate needed to complete the order. It will never exceed the amount, but may fall below.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessOrderDataResponse, Fixnum, Hash)>] SuccessOrderDataResponse data, response status code and response headers
    def v1userexchangeinstantbuy_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangeinstantbuy ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeTradeActionsApi.v1userexchangeinstantbuy" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/instant/buy".sub('{format}','json')

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
        :return_type => 'SuccessOrderDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangeinstantbuy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Instantly Sell BTC
    # Instantly sells BTC at the closest rate found. This tool will sell at any rate needed to complete the order. It will never exceed the amount, but may fall below.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [SuccessOrderDataResponse]
    def v1userexchangeinstantsell(body, opts = {})
      data, _status_code, _headers = v1userexchangeinstantsell_with_http_info(body, opts)
      return data
    end

    # Instantly Sell BTC
    # Instantly sells BTC at the closest rate found. This tool will sell at any rate needed to complete the order. It will never exceed the amount, but may fall below.
    # @param body Please send the form with valid inputs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Enter a valid Api Key.
    # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
    # @return [Array<(SuccessOrderDataResponse, Fixnum, Hash)>] SuccessOrderDataResponse data, response status code and response headers
    def v1userexchangeinstantsell_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExchangeTradeActionsApi.v1userexchangeinstantsell ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ExchangeTradeActionsApi.v1userexchangeinstantsell" if body.nil?
      # resource path
      local_var_path = "/v1/user/exchange/instant/sell".sub('{format}','json')

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
        :return_type => 'SuccessOrderDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeTradeActionsApi#v1userexchangeinstantsell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
