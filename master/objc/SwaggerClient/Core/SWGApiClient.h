#import <Foundation/Foundation.h>
#import <ISO8601/ISO8601.h>
#import <AFNetworking/AFNetworking.h>
#import "SWGJSONResponseSerializer.h"
#import "SWGJSONRequestSerializer.h"
#import "SWGQueryParamCollection.h"
#import "SWGConfiguration.h"
#import "SWGResponseDeserializer.h"
#import "SWGSanitizer.h"
#import "SWGLogger.h"

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

#import "SWGAddress.h"
#import "SWGAllRefData.h"
#import "SWGAllRefDataResponse.h"
#import "SWGBankSummaryData.h"
#import "SWGBankSummaryDataResponse.h"
#import "SWGChangePassword.h"
#import "SWGCode.h"
#import "SWGCodeCountryMobile.h"
#import "SWGCoinDepData.h"
#import "SWGCoinDepDataResponse.h"
#import "SWGConfirmData.h"
#import "SWGConfirmDataResponse.h"
#import "SWGDoubleData.h"
#import "SWGDoubleDataResponse.h"
#import "SWGEmail.h"
#import "SWGFailResult.h"
#import "SWGFiatBankData.h"
#import "SWGFiatBankDataResponse.h"
#import "SWGFiatDepData.h"
#import "SWGFiatDepDataResponse.h"
#import "SWGFiatWithData.h"
#import "SWGFiatWithDataResponse.h"
#import "SWGJsValue.h"
#import "SWGKYCData.h"
#import "SWGKYCDataResponse.h"
#import "SWGLastTradeData.h"
#import "SWGLastTradeDataResponse.h"
#import "SWGLoginFormNew.h"
#import "SWGLoginId.h"
#import "SWGMaxVol.h"
#import "SWGMethodCountryMobile.h"
#import "SWGMinFiat.h"
#import "SWGNetkiNameAddress.h"
#import "SWGNewAddress.h"
#import "SWGNewBankForm.h"
#import "SWGNewFiatBankDeposit.h"
#import "SWGNewWallet.h"
#import "SWGNumberOtp.h"
#import "SWGOrderData.h"
#import "SWGOrderDataResponse.h"
#import "SWGRateData.h"
#import "SWGRateDataResponse.h"
#import "SWGRateDiffData.h"
#import "SWGRateDiffDataResponse.h"
#import "SWGRateVolData.h"
#import "SWGRateVolDataResponse.h"
#import "SWGResetPassword.h"
#import "SWGSendCoin.h"
#import "SWGSendCoinWallet.h"
#import "SWGSendExchange.h"
#import "SWGSignupForm.h"
#import "SWGStandardInitiateLoginResultData.h"
#import "SWGStandardLoginResultData.h"
#import "SWGStandardTickerResultData.h"
#import "SWGSuccCoinRefData.h"
#import "SWGSuccCoinRefDataResponse.h"
#import "SWGSuccRefData.h"
#import "SWGSuccRefDataResponse.h"
#import "SWGSuccessCancelData.h"
#import "SWGSuccessCancelDataResponse.h"
#import "SWGSuccessInitiateLoginResponse.h"
#import "SWGSuccessLoginResponse.h"
#import "SWGSuccessOrderData.h"
#import "SWGSuccessOrderDataResponse.h"
#import "SWGSuccessResult.h"
#import "SWGSuccessTickerResponse.h"
#import "SWGTimeData.h"
#import "SWGTimeDataCoin.h"
#import "SWGTimeKYCData.h"
#import "SWGTradeAddressData.h"
#import "SWGTradeAddressDataResponse.h"
#import "SWGTradeCoinWithdrawData.h"
#import "SWGTradeCoinWithdrawDataResponse.h"
#import "SWGTradeSummaryData.h"
#import "SWGTradeSummaryDataResponse.h"
#import "SWGUserSummaryData.h"
#import "SWGUserSummaryDataResponse.h"
#import "SWGValidAddressSearchData.h"
#import "SWGValidAddressSearchDataResponse.h"
#import "SWGVolData.h"
#import "SWGVolDataResponse.h"
#import "SWGWalletAddressData.h"
#import "SWGWalletAddressDataResponse.h"
#import "SWGWalletCoinWithdrawData.h"
#import "SWGWalletCoinWithdrawDataResponse.h"
#import "SWGWalletSummaryData.h"
#import "SWGWalletSummaryDataResponse.h"
#import "SWGWalletsData.h"
#import "SWGWalletsDataResponse.h"
#import "SWGWithdrawFiat.h"
#import "SWGWithdrawID.h"



@class SWGConfiguration;

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const SWGResponseObjectErrorKey;

@interface SWGApiClient : AFHTTPSessionManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, readonly) NSOperationQueue* queue;

/// In order to ensure the HTTPResponseHeaders are correct, it is recommended to initialize one SWGApiClient instance per thread.
@property(nonatomic, readonly) NSDictionary* HTTPResponseHeaders;

@property(nonatomic, strong) id<SWGResponseDeserializer> responseDeserializer;

@property(nonatomic, strong) id<SWGSanitizer> sanitizer;
/**
 * Clears Cache
 */
+(void)clearCache;

/**
 * Turns on cache
 *
 * @param enabled If the cached is enable, must be `YES` or `NO`
 */
+(void)setCacheEnabled:(BOOL) enabled;

/**
 * Gets the request queue size
 *
 * @return The size of `queuedRequests` static variable.
 */
+(NSUInteger)requestQueueSize;

/**
 * Sets the client unreachable
 *
 * @param state off line state, must be `YES` or `NO`
 */
+(void) setOfflineState:(BOOL) state;

/**
 * Gets if the client is unreachable
 *
 * @return The client offline state
 */
+(BOOL) getOfflineState;

/**
 * Sets the client reachability, this may be overridden by the reachability manager if reachability changes
 *
 * @param The client reachability.
 */
+(void) setReachabilityStatus:(AFNetworkReachabilityStatus) status;

/**
 * Gets the client reachability
 *
 * @return The client reachability.
 */
+(AFNetworkReachabilityStatus) getReachabilityStatus;

/**
 * Gets the next request id
 *
 * @return The next executed request id.
 */
+(NSNumber*) nextRequestId;

/**
 * Generates request id and add it to the queue
 *
 * @return The next executed request id.
 */
+(NSNumber*) queueRequest;

/**
 * Removes request id from the queue
 *
 * @param requestId The request which will be removed.
 */
+(void) cancelRequest:(NSNumber*)requestId;

/**
 * Customizes the behavior when the reachability changed
 *
 * @param changeBlock The block will be executed when the reachability changed.
 */
+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock;

/**
 * Sets the api client reachability strategy
 */
- (void)configureCacheReachibility;

/**
 * Sets header for request
 *
 * @param value The header value
 * @param forKey The header key
 */
-(void)setHeaderValue:(NSString*) value
               forKey:(NSString*) forKey;

/**
 * Updates header parameters and query parameters for authentication
 *
 * @param headers The header parameter will be udpated, passed by pointer to pointer.
 * @param querys The query parameters will be updated, passed by pointer to pointer.
 * @param authSettings The authentication names NSArray.
 */
- (void) updateHeaderParams:(NSDictionary **)headers
                queryParams:(NSDictionary **)querys
           WithAuthSettings:(NSArray *)authSettings;

/**
 * Performs request
 *
 * @param path Request url.
 * @param method Request method.
 * @param pathParams Request path parameters.
 * @param queryParams Request query parameters.
 * @param body Request body.
 * @param headerParams Request header parameters.
 * @param authSettings Request authentication names.
 * @param requestContentType Request content-type.
 * @param responseContentType Response content-type.
 * @param completionBlock The block will be executed when the request completed.
 *
 * @return The request id.
 */
-(NSNumber*) requestWithPath:(NSString*) path
                      method:(NSString*) method
                  pathParams:(NSDictionary *) pathParams
                 queryParams:(NSDictionary*) queryParams
                  formParams:(NSDictionary *) formParams
                       files:(NSDictionary *) files
                        body:(id) body
                headerParams:(NSDictionary*) headerParams
                authSettings:(NSArray *) authSettings
          requestContentType:(NSString*) requestContentType
         responseContentType:(NSString*) responseContentType
                responseType:(NSString *) responseType
             completionBlock:(void (^)(id, NSError *))completionBlock;

/**
 * Custom security policy
 *
 * @return AFSecurityPolicy
 */
- (AFSecurityPolicy *) customSecurityPolicy;

/**
 * SWGConfiguration return sharedConfig
 *
 * @return SWGConfiguration
 */
- (SWGConfiguration*) configuration;


@end
