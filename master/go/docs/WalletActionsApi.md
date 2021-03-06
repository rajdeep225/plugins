# \WalletActionsApi

All URIs are relative to *https://api.coinsecure.in*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1userwalletcoinaddressnew**](WalletActionsApi.md#V1userwalletcoinaddressnew) | **Put** /v1/user/wallet/coin/address/new | New Bitcoin Address
[**V1userwalletcoinnew**](WalletActionsApi.md#V1userwalletcoinnew) | **Put** /v1/user/wallet/coin/new | Create New Wallet
[**V1userwalletcoinwithdrawinitiate**](WalletActionsApi.md#V1userwalletcoinwithdrawinitiate) | **Post** /v1/user/wallet/coin/withdraw/initiate | Initiate Bitcoin Withdrawal
[**V1userwalletcoinwithdrawsendToExchange**](WalletActionsApi.md#V1userwalletcoinwithdrawsendToExchange) | **Put** /v1/user/wallet/coin/withdraw/sendToExchange | Send to Exchange
[**V1userwalletcoinwithdrawunverifiedcancelWithdrawID**](WalletActionsApi.md#V1userwalletcoinwithdrawunverifiedcancelWithdrawID) | **Delete** /v1/user/wallet/coin/withdraw/unverified/cancel/{withdrawID} | Cancel Bitcoin Withdrawal
[**V1userwalletcoinwithdrawverify**](WalletActionsApi.md#V1userwalletcoinwithdrawverify) | **Put** /v1/user/wallet/coin/withdraw/verify | Verify Bitcoin Withdrawal
[**V1walletcoinwithdrawnewVerifycode**](WalletActionsApi.md#V1walletcoinwithdrawnewVerifycode) | **Post** /v1/wallet/coin/withdraw/newVerifycode | Gets a Verification Code


# **V1userwalletcoinaddressnew**
> WalletAddressDataResponse V1userwalletcoinaddressnew($body, $authorization, $accept)

New Bitcoin Address

Generates a New Bitcoin Address to store coins.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewAddress**](NewAddress.md)|  | 
 **authorization** | **string**| Enter a valid Api Key. | [optional] 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**WalletAddressDataResponse**](WalletAddressDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1userwalletcoinnew**
> WalletAddressDataResponse V1userwalletcoinnew($body, $authorization, $accept)

Create New Wallet

Creates a New wallet to store addresses. This method also creates a single default address in each new wallet.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewWallet**](NewWallet.md)|  | 
 **authorization** | **string**| Enter a valid Api Key. | [optional] 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**WalletAddressDataResponse**](WalletAddressDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1userwalletcoinwithdrawinitiate**
> SuccessResult V1userwalletcoinwithdrawinitiate($body, $authorization, $accept)

Initiate Bitcoin Withdrawal

The code for verifying the withdrawal can be called from /v1/wallet/withdrawVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendCoinWallet**](SendCoinWallet.md)|  | 
 **authorization** | **string**| Enter a valid Api Key. | [optional] 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**SuccessResult**](SuccessResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1userwalletcoinwithdrawsendToExchange**
> SuccessResult V1userwalletcoinwithdrawsendToExchange($body, $authorization, $accept)

Send to Exchange

This function transfers funds to yout Exchange Balance without the need for any confirmations.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendExchange**](SendExchange.md)|  | 
 **authorization** | **string**| Enter a valid Api Key. | [optional] 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**SuccessResult**](SuccessResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1userwalletcoinwithdrawunverifiedcancelWithdrawID**
> SuccessResult V1userwalletcoinwithdrawunverifiedcancelWithdrawID($withdrawID, $authorization, $accept)

Cancel Bitcoin Withdrawal

Cancels an unverified withdrawal. You can get the code from /wallet/unverifiedWithdraws.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withdrawID** | **string**|  | 
 **authorization** | **string**| Enter a valid Api Key. | 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**SuccessResult**](SuccessResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1userwalletcoinwithdrawverify**
> SuccessResult V1userwalletcoinwithdrawverify($authorization, $body, $accept)

Verify Bitcoin Withdrawal

Verifies an unverified withdrawal. You can get the code from /v1/wallet/coin/withdraw/newVerifycode.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **string**| Enter a valid Api Key. | 
 **body** | [**Code**](Code.md)|  | 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**SuccessResult**](SuccessResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **V1walletcoinwithdrawnewVerifycode**
> SuccessResult V1walletcoinwithdrawnewVerifycode($body, $authorization, $accept)

Gets a Verification Code

Gets Coin Unverified Withdraws Codes to call and apply on /v1/wallet/coin/withdraw/unverified.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WithdrawId**](WithdrawId.md)| You can get unverified withdraw ID&#39;s from /v1/exchange/bank/coin/withdrawVerifycode | 
 **authorization** | **string**| API object to be added | [optional] 
 **accept** | **string**| JSON, XML or CSV can be returned (Optional) | [optional] 

### Return type

[**SuccessResult**](SuccessResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

