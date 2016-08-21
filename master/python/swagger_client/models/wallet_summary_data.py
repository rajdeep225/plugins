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

from pprint import pformat
from six import iteritems
import re


class WalletSummaryData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, wallet_confirmed_balance=None, wallet_uncofirmed_balance=None, has_wallet_netki=False, wallet_netki=None, wallet_netki_address=None, wallet_netki_wallet_id=None):
        """
        WalletSummaryData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'wallet_confirmed_balance': 'int',
            'wallet_uncofirmed_balance': 'int',
            'has_wallet_netki': 'bool',
            'wallet_netki': 'str',
            'wallet_netki_address': 'str',
            'wallet_netki_wallet_id': 'str'
        }

        self.attribute_map = {
            'wallet_confirmed_balance': 'walletConfirmedBalance',
            'wallet_uncofirmed_balance': 'walletUncofirmedBalance',
            'has_wallet_netki': 'hasWalletNetki',
            'wallet_netki': 'walletNetki',
            'wallet_netki_address': 'walletNetkiAddress',
            'wallet_netki_wallet_id': 'walletNetkiWalletId'
        }

        self._wallet_confirmed_balance = wallet_confirmed_balance
        self._wallet_uncofirmed_balance = wallet_uncofirmed_balance
        self._has_wallet_netki = has_wallet_netki
        self._wallet_netki = wallet_netki
        self._wallet_netki_address = wallet_netki_address
        self._wallet_netki_wallet_id = wallet_netki_wallet_id

    @property
    def wallet_confirmed_balance(self):
        """
        Gets the wallet_confirmed_balance of this WalletSummaryData.


        :return: The wallet_confirmed_balance of this WalletSummaryData.
        :rtype: int
        """
        return self._wallet_confirmed_balance

    @wallet_confirmed_balance.setter
    def wallet_confirmed_balance(self, wallet_confirmed_balance):
        """
        Sets the wallet_confirmed_balance of this WalletSummaryData.


        :param wallet_confirmed_balance: The wallet_confirmed_balance of this WalletSummaryData.
        :type: int
        """

        self._wallet_confirmed_balance = wallet_confirmed_balance

    @property
    def wallet_uncofirmed_balance(self):
        """
        Gets the wallet_uncofirmed_balance of this WalletSummaryData.


        :return: The wallet_uncofirmed_balance of this WalletSummaryData.
        :rtype: int
        """
        return self._wallet_uncofirmed_balance

    @wallet_uncofirmed_balance.setter
    def wallet_uncofirmed_balance(self, wallet_uncofirmed_balance):
        """
        Sets the wallet_uncofirmed_balance of this WalletSummaryData.


        :param wallet_uncofirmed_balance: The wallet_uncofirmed_balance of this WalletSummaryData.
        :type: int
        """

        self._wallet_uncofirmed_balance = wallet_uncofirmed_balance

    @property
    def has_wallet_netki(self):
        """
        Gets the has_wallet_netki of this WalletSummaryData.


        :return: The has_wallet_netki of this WalletSummaryData.
        :rtype: bool
        """
        return self._has_wallet_netki

    @has_wallet_netki.setter
    def has_wallet_netki(self, has_wallet_netki):
        """
        Sets the has_wallet_netki of this WalletSummaryData.


        :param has_wallet_netki: The has_wallet_netki of this WalletSummaryData.
        :type: bool
        """

        self._has_wallet_netki = has_wallet_netki

    @property
    def wallet_netki(self):
        """
        Gets the wallet_netki of this WalletSummaryData.


        :return: The wallet_netki of this WalletSummaryData.
        :rtype: str
        """
        return self._wallet_netki

    @wallet_netki.setter
    def wallet_netki(self, wallet_netki):
        """
        Sets the wallet_netki of this WalletSummaryData.


        :param wallet_netki: The wallet_netki of this WalletSummaryData.
        :type: str
        """

        self._wallet_netki = wallet_netki

    @property
    def wallet_netki_address(self):
        """
        Gets the wallet_netki_address of this WalletSummaryData.


        :return: The wallet_netki_address of this WalletSummaryData.
        :rtype: str
        """
        return self._wallet_netki_address

    @wallet_netki_address.setter
    def wallet_netki_address(self, wallet_netki_address):
        """
        Sets the wallet_netki_address of this WalletSummaryData.


        :param wallet_netki_address: The wallet_netki_address of this WalletSummaryData.
        :type: str
        """

        self._wallet_netki_address = wallet_netki_address

    @property
    def wallet_netki_wallet_id(self):
        """
        Gets the wallet_netki_wallet_id of this WalletSummaryData.


        :return: The wallet_netki_wallet_id of this WalletSummaryData.
        :rtype: str
        """
        return self._wallet_netki_wallet_id

    @wallet_netki_wallet_id.setter
    def wallet_netki_wallet_id(self, wallet_netki_wallet_id):
        """
        Sets the wallet_netki_wallet_id of this WalletSummaryData.


        :param wallet_netki_wallet_id: The wallet_netki_wallet_id of this WalletSummaryData.
        :type: str
        """

        self._wallet_netki_wallet_id = wallet_netki_wallet_id

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other):
        """
        Returns true if both objects are equal
        """
        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
