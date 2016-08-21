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
    ///  Class for testing ExchangeBankActionsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class ExchangeBankActionsApiTests
    {
        private ExchangeBankActionsApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new ExchangeBankActionsApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of ExchangeBankActionsApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' ExchangeBankActionsApi
            //Assert.IsInstanceOfType(typeof(ExchangeBankActionsApi), instance, "instance is a ExchangeBankActionsApi");
        }

        
        /// <summary>
        /// Test V1userexchangebankcoinwithdrawinitiate
        /// </summary>
        [Test]
        public void V1userexchangebankcoinwithdrawinitiateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //SendCoin body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankcoinwithdrawinitiate(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankcoinwithdrawnewVerifycode
        /// </summary>
        [Test]
        public void V1userexchangebankcoinwithdrawnewVerifycodeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //WithdrawID body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankcoinwithdrawnewVerifycode(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankcoinwithdrawunverifiedcancelWithdrawID
        /// </summary>
        [Test]
        public void V1userexchangebankcoinwithdrawunverifiedcancelWithdrawIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string withdrawID = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankcoinwithdrawunverifiedcancelWithdrawID(withdrawID, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankcoinwithdrawverify
        /// </summary>
        [Test]
        public void V1userexchangebankcoinwithdrawverifyTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Code body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankcoinwithdrawverify(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiataccountnew
        /// </summary>
        [Test]
        public void V1userexchangebankfiataccountnewTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //NewBankForm body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiataccountnew(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatdepositcancelDepositID
        /// </summary>
        [Test]
        public void V1userexchangebankfiatdepositcancelDepositIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string depositID = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatdepositcancelDepositID(depositID, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatdepositnew
        /// </summary>
        [Test]
        public void V1userexchangebankfiatdepositnewTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //NewFiatBankDeposit body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatdepositnew(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatwithdrawinitiate
        /// </summary>
        [Test]
        public void V1userexchangebankfiatwithdrawinitiateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //WithdrawFiat body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatwithdrawinitiate(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatwithdrawnewVerifycode
        /// </summary>
        [Test]
        public void V1userexchangebankfiatwithdrawnewVerifycodeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //WithdrawID body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatwithdrawnewVerifycode(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatwithdrawunverifiedcancelWithdrawID
        /// </summary>
        [Test]
        public void V1userexchangebankfiatwithdrawunverifiedcancelWithdrawIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string withdrawID = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatwithdrawunverifiedcancelWithdrawID(withdrawID, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
        /// <summary>
        /// Test V1userexchangebankfiatwithdrawverify
        /// </summary>
        [Test]
        public void V1userexchangebankfiatwithdrawverifyTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Code body = null;
            //string authorization = null;
            //string accept = null;
            //var response = instance.V1userexchangebankfiatwithdrawverify(body, authorization, accept);
            //Assert.IsInstanceOf<SuccessResult> (response, "response is SuccessResult");
        }
        
    }

}
