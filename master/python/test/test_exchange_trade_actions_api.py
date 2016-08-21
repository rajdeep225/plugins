# coding: utf-8

"""
    Coinsecure Api Documentation

    To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.

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
"""

from __future__ import absolute_import

import os
import sys
import unittest

import swagger_client
from swagger_client.rest import ApiException
from swagger_client.apis.exchange_trade_actions_api import ExchangeTradeActionsApi


class TestExchangeTradeActionsApi(unittest.TestCase):
    """ ExchangeTradeActionsApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.exchange_trade_actions_api.ExchangeTradeActionsApi()

    def tearDown(self):
        pass

    def test_v1userexchangeaskcancel_order_id(self):
        """
        Test case for v1userexchangeaskcancel_order_id

        Cancel Open Sell Order
        """
        pass

    def test_v1userexchangeasknew(self):
        """
        Test case for v1userexchangeasknew

        BTC Sell Order
        """
        pass

    def test_v1userexchangebidcancel_order_id(self):
        """
        Test case for v1userexchangebidcancel_order_id

        Cancel Open Buy Order
        """
        pass

    def test_v1userexchangebidnew(self):
        """
        Test case for v1userexchangebidnew

        BTC Buy Order
        """
        pass

    def test_v1userexchangeinstantbuy(self):
        """
        Test case for v1userexchangeinstantbuy

        Instantly Buy BTC
        """
        pass

    def test_v1userexchangeinstantsell(self):
        """
        Test case for v1userexchangeinstantsell

        Instantly Sell BTC
        """
        pass


if __name__ == '__main__':
    unittest.main()
