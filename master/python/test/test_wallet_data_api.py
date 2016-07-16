# coding: utf-8

"""
    Coinsecure Api Documentation

    To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.

    OpenAPI spec version: 1.0b
    
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
from swagger_client.apis.wallet_data_api import WalletDataApi


class TestWalletDataApi(unittest.TestCase):
    """ WalletDataApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.wallet_data_api.WalletDataApi()

    def tearDown(self):
        pass

    def test_v1userwalletcoinaddress_wallet_id(self):
        """
        Test case for v1userwalletcoinaddress_wallet_id

        Wallet Bitcoin Addresses
        """
        pass

    def test_v1userwalletcoindepositconfirmed_wallet_id(self):
        """
        Test case for v1userwalletcoindepositconfirmed_wallet_id

        Confirmed Wallet Transactions
        """
        pass

    def test_v1userwalletcoindepositconfirmedall(self):
        """
        Test case for v1userwalletcoindepositconfirmedall

        Confirmed Wallet Deposit
        """
        pass

    def test_v1userwalletcoindepositunconfirmed_wallet_id(self):
        """
        Test case for v1userwalletcoindepositunconfirmed_wallet_id

        Unconfirmed Transactions in Wallet
        """
        pass

    def test_v1userwalletcoindepositunconfirmedall(self):
        """
        Test case for v1userwalletcoindepositunconfirmedall

        All Unconfirmed Deposits
        """
        pass

    def test_v1userwalletcoinwallets(self):
        """
        Test case for v1userwalletcoinwallets

        Wallet Details
        """
        pass

    def test_v1walletwithdrawcancelled(self):
        """
        Test case for v1walletwithdrawcancelled

        Cancelled Coin Withdrawals
        """
        pass

    def test_v1walletwithdrawcompleted(self):
        """
        Test case for v1walletwithdrawcompleted

        Completed Coin Withdrawals
        """
        pass

    def test_v1walletwithdrawunverified(self):
        """
        Test case for v1walletwithdrawunverified

        Unverified Coin Withdrawals
        """
        pass

    def test_v1walletwithdrawverified(self):
        """
        Test case for v1walletwithdrawverified

        Verified Coin Withdrawals
        """
        pass


if __name__ == '__main__':
    unittest.main()