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

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AccountDataApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountDataApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AccountDataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountDataApi' do
    it 'should create an instact of AccountDataApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AccountDataApi)
    end
  end

  # unit tests for v1exchangebanksummary
  # Exchange Bank Summary
  # Gets a Summary of Exchange Bank Data and Balances.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [BankSummaryDataResponse]
  describe 'v1exchangebanksummary test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1exchangeusercoinfee
  # Users Coin Fee Percentage
  # Returns the users coin fee percentage. The response is in percentage.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization API object to be added
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [DoubleDataResponse]
  describe 'v1exchangeusercoinfee test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1exchangeuserfiatfee
  # Users Fiat Fee Percentage
  # Returns the users fiat fee percentage. The response is in percentage.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [DoubleDataResponse]
  describe 'v1exchangeuserfiatfee test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1netkisearch_netki_name
  # Coinsecure.me Netki Lookup
  # Searches for a coinsecure.me Netki Wallet Name and responds with an Address model output.
  # @param netki_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [DoubleDataResponse]
  describe 'v1netkisearch_netki_name test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangekycs
  # Gets KYC Status Details
  # Gets Users KYC Status Details.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [KYCDataResponse]
  describe 'v1userexchangekycs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangereferralcoinpaid
  # Users Paid Fiat Referrals
  # Returns the Users Paid Coin Referrals.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [SuccCoinRefDataResponse]
  describe 'v1userexchangereferralcoinpaid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangereferralcoinsuccessful
  # Gets Users Successful Referral Links
  # Gets Users Successful Referral Links that can be used during signup.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [SuccRefDataResponse]
  describe 'v1userexchangereferralcoinsuccessful test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangereferralfiatpaid
  # Users Paid Fiat Referrals
  # Returns the Users Paid Fiat Referrals.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [SuccCoinRefDataResponse]
  describe 'v1userexchangereferralfiatpaid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangereferrals
  # Gets Users Referral Links
  # Gets Users Referral Links that can be used during signup.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [AllRefDataResponse]
  describe 'v1userexchangereferrals test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userexchangetradesummary
  # Exchange Trade Summary
  # Gets a Summary of Exchange Trade Data.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [TradeSummaryDataResponse]
  describe 'v1userexchangetradesummary test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userlogintoken_token
  # Login Token Email
  # Retrieves details of a Login Token
  # @param token 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [SuccessResult]
  describe 'v1userlogintoken_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1usersummary
  # Exchange Bank Summary
  # Gets a Summary of Exchange Bank Data and Balances.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [UserSummaryDataResponse]
  describe 'v1usersummary test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1userwalletsummary
  # Exchange Bank Summary
  # Gets a Summary of Exchange Bank Data and Balances.
  # @param authorization API object to be added
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept JSON, XML or CSV can be returned (Optional)
  # @return [WalletSummaryDataResponse]
  describe 'v1userwalletsummary test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
