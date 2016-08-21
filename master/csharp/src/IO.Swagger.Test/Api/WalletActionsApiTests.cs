/* 
 * Coinsecure Api Documentation
 *
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: beta
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

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing WalletActionsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class WalletActionsApiTests
    {
        private WalletActionsApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new WalletActionsApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of WalletActionsApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' WalletActionsApi
            //Assert.IsInstanceOfType(typeof(WalletActionsApi), instance, "instance is a WalletActionsApi");
        }

        
        /// <summary>
        /// Test V1userwalletcoinaddressnew
        /// </summary>
        [Test]
        public void V1userwalletcoinaddressnewTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //NewAddress body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinaddressnew(body, authorization, accept);
            //Assert.IsInstanceOf<WalletAddressDataResponse> (response, "response is WalletAddressDataResponse");
        }
        
        /// <summary>
        /// Test V1userwalletcoinnew
        /// </summary>
        [Test]
        public void V1userwalletcoinnewTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //NewWallet body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinnew(body, authorization, accept);
            //Assert.IsInstanceOf<WalletAddressDataResponse> (response, "response is WalletAddressDataResponse");
        }
        
        /// <summary>
        /// Test V1userwalletcoinwithdrawinitiate
        /// </summary>
        [Test]
        public void V1userwalletcoinwithdrawinitiateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //SendCoinWallet body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinwithdrawinitiate(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userwalletcoinwithdrawsendToExchange
        /// </summary>
        [Test]
        public void V1userwalletcoinwithdrawsendToExchangeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //SendExchange body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinwithdrawsendToExchange(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userwalletcoinwithdrawunverifiedcancelWithdrawID
        /// </summary>
        [Test]
        public void V1userwalletcoinwithdrawunverifiedcancelWithdrawIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string withdrawID = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinwithdrawunverifiedcancelWithdrawID(withdrawID, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userwalletcoinwithdrawverify
        /// </summary>
        [Test]
        public void V1userwalletcoinwithdrawverifyTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string authorization = null;
            //Code body = null;
            //string accept = null;
            //var response = instance.V1userwalletcoinwithdrawverify(authorization, body, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1walletcoinwithdrawnewVerifycode
        /// </summary>
        [Test]
        public void V1walletcoinwithdrawnewVerifycodeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //WithdrawID body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1walletcoinwithdrawnewVerifycode(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
    }

}
