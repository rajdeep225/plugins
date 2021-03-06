/**
 * Coinsecure Api Documentation
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: beta
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.swagger.client.api

import io.swagger.client.model.WalletAddressDataResponse
import io.swagger.client.model.NewAddress
import io.swagger.client.model.FailResult
import io.swagger.client.model.NewWallet
import io.swagger.client.model.SendCoinWallet
import io.swagger.client.model.SuccessResult
import io.swagger.client.model.SendExchange
import io.swagger.client.model.Code
import io.swagger.client.model.WithdrawID
import io.swagger.client.ApiInvoker
import io.swagger.client.ApiException

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date

import scala.collection.mutable.HashMap

class WalletActionsApi(val defBasePath: String = "https://api.coinsecure.in",
                        defApiInvoker: ApiInvoker = ApiInvoker) {
  var basePath = defBasePath
  var apiInvoker = defApiInvoker

  def addHeader(key: String, value: String) = apiInvoker.defaultHeaders += key -> value 

  /**
   * New Bitcoin Address
   * Generates a New Bitcoin Address to store coins.
   * @param body  
   * @param authorization Enter a valid Api Key. (optional)
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return WalletAddressDataResponse
   */
  def v1UserWalletCoinAddressNew (body: NewAddress, authorization: String, accept: String) : Option[WalletAddressDataResponse] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/address/new".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1UserWalletCoinAddressNew")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[WalletAddressDataResponse]).asInstanceOf[WalletAddressDataResponse])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Create New Wallet
   * Creates a New wallet to store addresses. This method also creates a single default address in each new wallet.
   * @param body  
   * @param authorization Enter a valid Api Key. (optional)
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return WalletAddressDataResponse
   */
  def v1UserWalletCoinNew (body: NewWallet, authorization: String, accept: String) : Option[WalletAddressDataResponse] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/new".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1UserWalletCoinNew")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[WalletAddressDataResponse]).asInstanceOf[WalletAddressDataResponse])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Initiate Bitcoin Withdrawal
   * The code for verifying the withdrawal can be called from /v1/wallet/withdrawVerifycode. May require a 2FA code if 2FA is enabled on the account. A mail is sent to the users email requesting confirmation of the withdrawal. This confirmation mail can be disabled on the Coinsecure Profile page.
   * @param body  
   * @param authorization Enter a valid Api Key. (optional)
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return SuccessResult
   */
  def v1UserWalletCoinWithdrawInitiate (body: SendCoinWallet, authorization: String, accept: String) : Option[SuccessResult] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/withdraw/initiate".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1UserWalletCoinWithdrawInitiate")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[SuccessResult]).asInstanceOf[SuccessResult])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Send to Exchange
   * This function transfers funds to yout Exchange Balance without the need for any confirmations.
   * @param body  
   * @param authorization Enter a valid Api Key. (optional)
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return SuccessResult
   */
  def v1UserWalletCoinWithdrawSendToExchange (body: SendExchange, authorization: String, accept: String) : Option[SuccessResult] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/withdraw/sendToExchange".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1UserWalletCoinWithdrawSendToExchange")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[SuccessResult]).asInstanceOf[SuccessResult])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Cancel Bitcoin Withdrawal
   * Cancels an unverified withdrawal. You can get the code from /wallet/unverifiedWithdraws.
   * @param withdrawID  
   * @param authorization Enter a valid Api Key. 
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return SuccessResult
   */
  def v1UserWalletCoinWithdrawUnverifiedCancelWithdrawID (withdrawID: String, authorization: String, accept: String) : Option[SuccessResult] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/withdraw/unverified/cancel/{withdrawID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "withdrawID" + "\\}",apiInvoker.escape(withdrawID))


    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = null

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "DELETE", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[SuccessResult]).asInstanceOf[SuccessResult])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Verify Bitcoin Withdrawal
   * Verifies an unverified withdrawal. You can get the code from /v1/wallet/coin/withdraw/newVerifycode.
   * @param authorization Enter a valid Api Key. 
   * @param body  
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return SuccessResult
   */
  def v1UserWalletCoinWithdrawVerify (authorization: String, body: Code, accept: String) : Option[SuccessResult] = {
    // create path and map variables
    val path = "/v1/user/wallet/coin/withdraw/verify".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1UserWalletCoinWithdrawVerify")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[SuccessResult]).asInstanceOf[SuccessResult])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Gets a Verification Code
   * Gets Coin Unverified Withdraws Codes to call and apply on /v1/wallet/coin/withdraw/unverified.
   * @param body You can get unverified withdraw ID&#39;s from /v1/exchange/bank/coin/withdrawVerifycode 
   * @param authorization API object to be added (optional)
   * @param accept JSON, XML or CSV can be returned (Optional) (optional)
   * @return SuccessResult
   */
  def v1WalletCoinWithdrawNewVerifycode (body: WithdrawID, authorization: String, accept: String) : Option[SuccessResult] = {
    // create path and map variables
    val path = "/v1/wallet/coin/withdraw/newVerifycode".replaceAll("\\{format\\}","json")
    val contentTypes = List("application/json", "application/json")
    val contentType = contentTypes(0)

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling WalletActionsApi->v1WalletCoinWithdrawNewVerifycode")

        
    headerParams += "Authorization" -> authorization
headerParams += "accept" -> accept

    var postBody: AnyRef = body

    if(contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart()
      
      postBody = mp
    }
    else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(ApiInvoker.deserialize(s, "", classOf[SuccessResult]).asInstanceOf[SuccessResult])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

}
