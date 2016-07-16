#import <Foundation/Foundation.h>
#import "SWGLoginFormNew.h"
#import "SWGFailResult.h"
#import "SWGStandardLoginResultData.h"
#import "SWGStandardInitiateLoginResultData.h"
#import "SWGLoginId.h"
#import "SWGSuccessResult.h"
#import "SWGEmail.h"
#import "SWGSignupForm.h"
#import "SWGNetkiNameAddress.h"
#import "SWGAddress.h"
#import "SWGNetkiName.h"
#import "SWGNumberOtp.h"
#import "SWGApi.h"

/**
* Coinsecure Api Documentation
* To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
*
* OpenAPI spec version: 1.0b
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


@interface SWGAccountActionsApi: NSObject <SWGApi>

extern NSString* kSWGAccountActionsApiErrorDomain;
extern NSInteger kSWGAccountActionsApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Creates a Login Instance and returns an API Key.
/// Creates a Login Instance and returns an API Key
///
/// @param body Please send the form with valid inputs.
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request"
///
/// @return SWGStandardLoginResultData*
-(NSNumber*) v1loginWithBody: (SWGLoginFormNew*) body
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGStandardLoginResultData* output, NSError* error)) handler;


/// Initiate Login
/// Sends an Email with a Verification Link.
///
/// @param body Enter a valid Login ID. This method will send an email with a token to be used for login.
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:500 message:"Server Error"
///
/// @return SWGStandardInitiateLoginResultData*
-(NSNumber*) v1logininitiateWithBody: (SWGLoginId*) body
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGStandardInitiateLoginResultData* output, NSError* error)) handler;


/// Sends an email with a password reset token
/// Sends an email with a password reset token
///
/// @param body Enter a valid and registered Email ID.
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1loginpasswordforgotWithBody: (SWGEmail*) body
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Creates a new Unverified Account.
/// Creates a new Unverified Account.
///
/// @param body Please send the form with valid inputs.
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1signupWithBody: (SWGSignupForm*) body
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Send OTP for Bank Link
/// Send OTP for an additional Bank Link.
///
/// @param number 
/// @param authorization API object to be added (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGStandardInitiateLoginResultData*
-(NSNumber*) v1userbankotpNumberWithNumber: (NSString*) number
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGStandardInitiateLoginResultData* output, NSError* error)) handler;


/// Submits a New Bank Link and initial KYC Documents.
/// Submits a New Bank Link and initial KYC Documents.
///
/// @param panNumber Please enter your Pan Card Number
/// @param acctNick Please enter an Account NickName
/// @param name Please enter your Name as it appears on your Bank account.
/// @param ban Please enter your Bank account number.
/// @param ifsc Please enter your IFSC Code.
/// @param acctType Please enter your Coinsecure account type. Allowable Values are Personal or Company.
/// @param banType Please enter your Bank account type. Allowable Values are Savings or Current.
/// @param phone Please enter your Valid Phone Number.
/// @param otp Please enter your OTP from SMS. The code can be requested from /v1/user/bank/otp/:number.
/// @param file Enter a valid image, pdf or zip file under 5 MB in size.
/// @param authorization Enter a valid Api Key. (optional)
/// @param message Please enter an optional message if needed. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userexchangekycWithPanNumber: (NSString*) panNumber
    acctNick: (NSString*) acctNick
    name: (NSString*) name
    ban: (NSString*) ban
    ifsc: (NSString*) ifsc
    acctType: (NSString*) acctType
    banType: (NSString*) banType
    phone: (NSString*) phone
    otp: (NSString*) otp
    file: (NSURL*) file
    authorization: (NSString*) authorization
    message: (NSString*) message
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Delete GCM Code
/// Delete GCM Code and associated API Key.
///
/// @param code 
/// @param authorization API object to be added (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1usergcmCodeWithCode: (NSString*) code
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Send OTP for KYC Link
/// Send OTP for KYC Link.
///
/// @param number 
/// @param authorization API object to be added (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userkycotpNumberWithNumber: (NSString*) number
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Logout User
/// Logs out user and Deletes the api key and associated session data.
///
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userlogoutWithAuthorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Create Neki Wallet Name
/// Creates a new Netki Wallet Name.
///
/// @param body Enter a valid Netki name and Bitcoin address from Wallet or Exchange.
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1usernetkicreateWithBody: (SWGNetkiNameAddress*) body
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Update Netki Address
/// Updates the address on an existing wallet name.
///
/// @param body Enter a valid Bitcoin address from Wallet or Exchange to update the wallet name.
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1usernetkiupdateWithBody: (SWGAddress*) body
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Delete Profile Image
/// Deletes a profile Image.
///
/// @param body Please enter a valid Netki name associated with your prfile Image.
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userprofileimagedeleteWithBody: (SWGNetkiName*) body
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Update Profile Image
/// Updates Profile Image and allows public or private options for netki profile page.
///
/// @param netkiName Please enter your Netki Wallet Name.
/// @param isPublic Please enter if this image can be public.
/// @param file Enter a valid image, pdf or zip file under 5 MB in size.
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userprofileimageupdateWithNetkiName: (NSString*) netkiName
    isPublic: (NSNumber*) isPublic
    file: (NSURL*) file
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// New Profile Phone
/// Set a New Profile Phone Number.
///
/// @param body You can get an otp to update your profile phone number from /v1/user/profile/phone/otp/:number
/// @param authorization Enter a valid Api Key. (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userprofilephoneWithBody: (SWGNumberOtp*) body
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Delete Profile Phone Number
/// Delete Profile Phone Number.
///
/// @param authorization API object to be added (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userprofilephoneNumberWithAuthorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;


/// Send OTP for Profile Phone
/// Send OTP for Profile Phone addition or updation.
///
/// @param number 
/// @param authorization API object to be added (optional)
/// @param accept JSON, XML or CSV can be returned (Optional) (optional)
/// 
///  code:200 message:"Successful Request",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:412 message:"Precondition Failed (Authorization Missing in header)",
///  code:500 message:"Server Error"
///
/// @return SWGSuccessResult*
-(NSNumber*) v1userprofilephoneotpNumberWithNumber: (NSString*) number
    authorization: (NSString*) authorization
    accept: (NSString*) accept
    completionHandler: (void (^)(SWGSuccessResult* output, NSError* error)) handler;



@end
