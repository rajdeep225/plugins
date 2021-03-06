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

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/address'
require 'swagger_client/models/all_ref_data'
require 'swagger_client/models/all_ref_data_response'
require 'swagger_client/models/bank_summary_data'
require 'swagger_client/models/bank_summary_data_response'
require 'swagger_client/models/change_password'
require 'swagger_client/models/code'
require 'swagger_client/models/code_country_mobile'
require 'swagger_client/models/coin_dep_data'
require 'swagger_client/models/coin_dep_data_response'
require 'swagger_client/models/confirm_data'
require 'swagger_client/models/confirm_data_response'
require 'swagger_client/models/double_data'
require 'swagger_client/models/double_data_response'
require 'swagger_client/models/email'
require 'swagger_client/models/fail_result'
require 'swagger_client/models/fiat_bank_data'
require 'swagger_client/models/fiat_bank_data_response'
require 'swagger_client/models/fiat_dep_data'
require 'swagger_client/models/fiat_dep_data_response'
require 'swagger_client/models/fiat_with_data'
require 'swagger_client/models/fiat_with_data_response'
require 'swagger_client/models/js_value'
require 'swagger_client/models/kyc_data'
require 'swagger_client/models/kyc_data_response'
require 'swagger_client/models/last_trade_data'
require 'swagger_client/models/last_trade_data_response'
require 'swagger_client/models/login_form_new'
require 'swagger_client/models/login_id'
require 'swagger_client/models/max_vol'
require 'swagger_client/models/method_country_mobile'
require 'swagger_client/models/min_fiat'
require 'swagger_client/models/netki_name_address'
require 'swagger_client/models/new_address'
require 'swagger_client/models/new_bank_form'
require 'swagger_client/models/new_fiat_bank_deposit'
require 'swagger_client/models/new_wallet'
require 'swagger_client/models/number_otp'
require 'swagger_client/models/order_data'
require 'swagger_client/models/order_data_response'
require 'swagger_client/models/rate_data'
require 'swagger_client/models/rate_data_response'
require 'swagger_client/models/rate_diff_data'
require 'swagger_client/models/rate_diff_data_response'
require 'swagger_client/models/rate_vol_data'
require 'swagger_client/models/rate_vol_data_response'
require 'swagger_client/models/reset_password'
require 'swagger_client/models/send_coin'
require 'swagger_client/models/send_coin_wallet'
require 'swagger_client/models/send_exchange'
require 'swagger_client/models/signup_form'
require 'swagger_client/models/standard_initiate_login_result_data'
require 'swagger_client/models/standard_login_result_data'
require 'swagger_client/models/standard_ticker_result_data'
require 'swagger_client/models/succ_coin_ref_data'
require 'swagger_client/models/succ_coin_ref_data_response'
require 'swagger_client/models/succ_ref_data'
require 'swagger_client/models/succ_ref_data_response'
require 'swagger_client/models/success_cancel_data'
require 'swagger_client/models/success_cancel_data_response'
require 'swagger_client/models/success_initiate_login_response'
require 'swagger_client/models/success_login_response'
require 'swagger_client/models/success_order_data'
require 'swagger_client/models/success_order_data_response'
require 'swagger_client/models/success_result'
require 'swagger_client/models/success_ticker_response'
require 'swagger_client/models/time_data'
require 'swagger_client/models/time_data_coin'
require 'swagger_client/models/time_kyc_data'
require 'swagger_client/models/trade_address_data'
require 'swagger_client/models/trade_address_data_response'
require 'swagger_client/models/trade_coin_withdraw_data'
require 'swagger_client/models/trade_coin_withdraw_data_response'
require 'swagger_client/models/trade_summary_data'
require 'swagger_client/models/trade_summary_data_response'
require 'swagger_client/models/user_summary_data'
require 'swagger_client/models/user_summary_data_response'
require 'swagger_client/models/valid_address_search_data'
require 'swagger_client/models/valid_address_search_data_response'
require 'swagger_client/models/vol_data'
require 'swagger_client/models/vol_data_response'
require 'swagger_client/models/wallet_address_data'
require 'swagger_client/models/wallet_address_data_response'
require 'swagger_client/models/wallet_coin_withdraw_data'
require 'swagger_client/models/wallet_coin_withdraw_data_response'
require 'swagger_client/models/wallet_summary_data'
require 'swagger_client/models/wallet_summary_data_response'
require 'swagger_client/models/wallets_data'
require 'swagger_client/models/wallets_data_response'
require 'swagger_client/models/withdraw_fiat'
require 'swagger_client/models/withdraw_id'

# APIs
require 'swagger_client/api/account_actions_api'
require 'swagger_client/api/account_data_api'
require 'swagger_client/api/blockchain_tools_api'
require 'swagger_client/api/exchange_bank_actions_api'
require 'swagger_client/api/exchange_bank_coin_data_api'
require 'swagger_client/api/exchange_bank_fiat_data_api'
require 'swagger_client/api/exchange_trade_actions_api'
require 'swagger_client/api/exchange_trade_data_api'
require 'swagger_client/api/security_actions_api'
require 'swagger_client/api/wallet_actions_api'
require 'swagger_client/api/wallet_data_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
