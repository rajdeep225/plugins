/* 
 * coinMerchant Api Documentation
 *
 * To generate an API key, please visit <a href='https://pay.coinsecure.in/payment-tools/api' target='_new' class='homeapi'>https://pay.coinsecure.in/payment-tools/api</a>.<br>Guidelines for use can be accessed at <a href='https://pay.coinsecure.in/api/guidelines'>https://pay.coinsecure.in/api/guidelines</a>.
 *
 * OpenAPI spec version: 1.0B
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
    ///  Class for testing InvoiceDataApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class InvoiceDataApiTests
    {
        private InvoiceDataApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new InvoiceDataApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of InvoiceDataApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            Assert.IsInstanceOf<InvoiceDataApi> (instance, "instance is a InvoiceDataApi");
        }

        
        /// <summary>
        /// Test GetCancInvoices
        /// </summary>
        [Test]
        public void GetCancInvoicesTest()
        {
            // TODO: add unit test for the method 'GetCancInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetCancInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
        /// <summary>
        /// Test GetCompleteInvoices
        /// </summary>
        [Test]
        public void GetCompleteInvoicesTest()
        {
            // TODO: add unit test for the method 'GetCompleteInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetCompleteInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
        /// <summary>
        /// Test GetConfInvoices
        /// </summary>
        [Test]
        public void GetConfInvoicesTest()
        {
            // TODO: add unit test for the method 'GetConfInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetConfInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
        /// <summary>
        /// Test GetInvoiceFromID
        /// </summary>
        [Test]
        public void GetInvoiceFromIDTest()
        {
            // TODO: add unit test for the method 'GetInvoiceFromID'
            string invoiceID = null; // TODO: replace null with proper value
            string apikey = null; // TODO: replace null with proper value
            var response = instance.GetInvoiceFromID(invoiceID, apikey);
            Assert.IsInstanceOf<SuccessInvoice> (response, "response is SuccessInvoice");
        }
        
        /// <summary>
        /// Test GetPaidInvoices
        /// </summary>
        [Test]
        public void GetPaidInvoicesTest()
        {
            // TODO: add unit test for the method 'GetPaidInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetPaidInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
        /// <summary>
        /// Test GetRefundInvoices
        /// </summary>
        [Test]
        public void GetRefundInvoicesTest()
        {
            // TODO: add unit test for the method 'GetRefundInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetRefundInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
        /// <summary>
        /// Test GetUnprocessedInvoices
        /// </summary>
        [Test]
        public void GetUnprocessedInvoicesTest()
        {
            // TODO: add unit test for the method 'GetUnprocessedInvoices'
            string apikey = null; // TODO: replace null with proper value
            InvoiceIDFull body = null; // TODO: replace null with proper value
            var response = instance.GetUnprocessedInvoices(apikey, body);
            Assert.IsInstanceOf<SuccessInvoices> (response, "response is SuccessInvoices");
        }
        
    }

}
