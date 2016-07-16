/* 
 * Coinsecure Api Documentation
 *
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: 1.0b
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package swagger

import (
	"strings"
	"fmt"
	"errors"
	"net/url"
	"encoding/json"
)

type WalletActionsApi struct {
	Configuration Configuration
}

func NewWalletActionsApi() *WalletActionsApi {
	configuration := NewConfiguration()
	return &WalletActionsApi{
		Configuration: *configuration,
	}
}

func NewWalletActionsApiWithBasePath(basePath string) *WalletActionsApi {
	configuration := NewConfiguration()
	configuration.BasePath = basePath

	return &WalletActionsApi{
		Configuration: *configuration,
	}
}

/**
 * New Bitcoin Address
 * Generates a New Bitcoin Address to store coins.
 *
 * @param body 
 * @param authorization Enter a valid Api Key.
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *WalletAddressDataResponse
 */
func (a WalletActionsApi) V1UserWalletCoinAddressNew(body NewAddress, authorization string, accept string) (*WalletAddressDataResponse, *APIResponse, error) {

	var httpMethod = "Put"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/address/new"

	// verify the required parameter 'body' is set
	if &body == nil {
		return new(WalletAddressDataResponse), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinAddressNew")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(WalletAddressDataResponse)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Create New Wallet
 * Creates a New wallet to store addresses. This method also creates a single default address in each new wallet.
 *
 * @param body 
 * @param authorization Enter a valid Api Key.
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *WalletAddressDataResponse
 */
func (a WalletActionsApi) V1UserWalletCoinNew(body NewWallet, authorization string, accept string) (*WalletAddressDataResponse, *APIResponse, error) {

	var httpMethod = "Put"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/new"

	// verify the required parameter 'body' is set
	if &body == nil {
		return new(WalletAddressDataResponse), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinNew")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(WalletAddressDataResponse)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Initiate Bitcoin Withdrawal
 * The code for verifying the withdrawal can be called from /v1/wallet/withdrawVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
 *
 * @param body 
 * @param authorization Enter a valid Api Key.
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *SuccessResult
 */
func (a WalletActionsApi) V1UserWalletCoinWithdrawInitiate(body SendCoinWallet, authorization string, accept string) (*SuccessResult, *APIResponse, error) {

	var httpMethod = "Post"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/withdraw/initiate"

	// verify the required parameter 'body' is set
	if &body == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinWithdrawInitiate")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(SuccessResult)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Send to Exchange
 * This function transfers funds to yout Exchange Balance without the need for any confirmations.
 *
 * @param body 
 * @param authorization Enter a valid Api Key.
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *SuccessResult
 */
func (a WalletActionsApi) V1UserWalletCoinWithdrawSendToExchange(body SendExchange, authorization string, accept string) (*SuccessResult, *APIResponse, error) {

	var httpMethod = "Put"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/withdraw/sendToExchange"

	// verify the required parameter 'body' is set
	if &body == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinWithdrawSendToExchange")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(SuccessResult)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Cancel Bitcoin Withdrawal
 * Cancels an unverified withdrawal. You can get the code from /wallet/unverifiedWithdraws.
 *
 * @param authorization Enter a valid Api Key.
 * @param body 
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *SuccessResult
 */
func (a WalletActionsApi) V1UserWalletCoinWithdrawUnverifiedCancel(authorization string, body WithdrawId, accept string) (*SuccessResult, *APIResponse, error) {

	var httpMethod = "Delete"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/withdraw/unverified/cancel"

	// verify the required parameter 'authorization' is set
	if &authorization == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'authorization' when calling WalletActionsApi->V1UserWalletCoinWithdrawUnverifiedCancel")
	}
	// verify the required parameter 'body' is set
	if &body == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinWithdrawUnverifiedCancel")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(SuccessResult)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Verify Bitcoin Withdrawal
 * Verifies an unverified withdrawal. You can get the code from /v1/wallet/coin/withdraw/newVerifycode.
 *
 * @param authorization Enter a valid Api Key.
 * @param body 
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *SuccessResult
 */
func (a WalletActionsApi) V1UserWalletCoinWithdrawVerify(authorization string, body Code, accept string) (*SuccessResult, *APIResponse, error) {

	var httpMethod = "Put"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/user/wallet/coin/withdraw/verify"

	// verify the required parameter 'authorization' is set
	if &authorization == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'authorization' when calling WalletActionsApi->V1UserWalletCoinWithdrawVerify")
	}
	// verify the required parameter 'body' is set
	if &body == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1UserWalletCoinWithdrawVerify")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(SuccessResult)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}

/**
 * Gets a Verification Code
 * Gets Coin Unverified Withdraws Codes to call and apply on /v1/wallet/coin/withdraw/unverified.
 *
 * @param body You can get unverified withdraw ID&#39;s from /v1/exchange/bank/coin/withdrawVerifycode
 * @param authorization API object to be added
 * @param accept JSON, XML or CSV can be returned (Optional)
 * @return *SuccessResult
 */
func (a WalletActionsApi) V1WalletCoinWithdrawNewVerifycode(body WithdrawId, authorization string, accept string) (*SuccessResult, *APIResponse, error) {

	var httpMethod = "Post"
	// create path and map variables
	path := a.Configuration.BasePath + "/v1/wallet/coin/withdraw/newVerifycode"

	// verify the required parameter 'body' is set
	if &body == nil {
		return new(SuccessResult), nil, errors.New("Missing required parameter 'body' when calling WalletActionsApi->V1WalletCoinWithdrawNewVerifycode")
	}

	headerParams := make(map[string]string)
	queryParams := url.Values{}
	formParams := make(map[string]string)
	var postBody interface{}
	var fileName string
	var fileBytes []byte

	// add default headers if any
	for key := range a.Configuration.DefaultHeader {
		headerParams[key] = a.Configuration.DefaultHeader[key]
	}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/json",  }

	// set Content-Type header
	localVarHttpContentType := a.Configuration.APIClient.SelectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		headerParams["Content-Type"] = localVarHttpContentType
	}
	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
"application/xml",
"application/csv",
	}

	// set Accept header
	localVarHttpHeaderAccept := a.Configuration.APIClient.SelectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		headerParams["Accept"] = localVarHttpHeaderAccept
	}

	// header params "Authorization"
	headerParams["Authorization"] = authorization
	// header params "accept"
	headerParams["accept"] = accept

	// body params
	postBody = &body

	var successPayload = new(SuccessResult)
	httpResponse, err := a.Configuration.APIClient.CallAPI(path, httpMethod, postBody, headerParams, queryParams, formParams, fileName, fileBytes)
	if err != nil {
		return successPayload, NewAPIResponse(httpResponse.RawResponse), err
	}
	err = json.Unmarshal(httpResponse.Body(), &successPayload)
	return successPayload, NewAPIResponse(httpResponse.RawResponse), err
}
