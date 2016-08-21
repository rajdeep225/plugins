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


class ValidAddressSearchData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, address=None, balance=None, total_received=None, unconfirmed_balance=None, unconfirmed_tx_apperances=None, tx_apperances=None, transactions=None):
        """
        ValidAddressSearchData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'address': 'str',
            'balance': 'int',
            'total_received': 'int',
            'unconfirmed_balance': 'int',
            'unconfirmed_tx_apperances': 'int',
            'tx_apperances': 'int',
            'transactions': 'list[str]'
        }

        self.attribute_map = {
            'address': 'address',
            'balance': 'balance',
            'total_received': 'totalReceived',
            'unconfirmed_balance': 'unconfirmedBalance',
            'unconfirmed_tx_apperances': 'unconfirmedTxApperances',
            'tx_apperances': 'txApperances',
            'transactions': 'transactions'
        }

        self._address = address
        self._balance = balance
        self._total_received = total_received
        self._unconfirmed_balance = unconfirmed_balance
        self._unconfirmed_tx_apperances = unconfirmed_tx_apperances
        self._tx_apperances = tx_apperances
        self._transactions = transactions

    @property
    def address(self):
        """
        Gets the address of this ValidAddressSearchData.


        :return: The address of this ValidAddressSearchData.
        :rtype: str
        """
        return self._address

    @address.setter
    def address(self, address):
        """
        Sets the address of this ValidAddressSearchData.


        :param address: The address of this ValidAddressSearchData.
        :type: str
        """

        self._address = address

    @property
    def balance(self):
        """
        Gets the balance of this ValidAddressSearchData.


        :return: The balance of this ValidAddressSearchData.
        :rtype: int
        """
        return self._balance

    @balance.setter
    def balance(self, balance):
        """
        Sets the balance of this ValidAddressSearchData.


        :param balance: The balance of this ValidAddressSearchData.
        :type: int
        """

        self._balance = balance

    @property
    def total_received(self):
        """
        Gets the total_received of this ValidAddressSearchData.


        :return: The total_received of this ValidAddressSearchData.
        :rtype: int
        """
        return self._total_received

    @total_received.setter
    def total_received(self, total_received):
        """
        Sets the total_received of this ValidAddressSearchData.


        :param total_received: The total_received of this ValidAddressSearchData.
        :type: int
        """

        self._total_received = total_received

    @property
    def unconfirmed_balance(self):
        """
        Gets the unconfirmed_balance of this ValidAddressSearchData.


        :return: The unconfirmed_balance of this ValidAddressSearchData.
        :rtype: int
        """
        return self._unconfirmed_balance

    @unconfirmed_balance.setter
    def unconfirmed_balance(self, unconfirmed_balance):
        """
        Sets the unconfirmed_balance of this ValidAddressSearchData.


        :param unconfirmed_balance: The unconfirmed_balance of this ValidAddressSearchData.
        :type: int
        """

        self._unconfirmed_balance = unconfirmed_balance

    @property
    def unconfirmed_tx_apperances(self):
        """
        Gets the unconfirmed_tx_apperances of this ValidAddressSearchData.


        :return: The unconfirmed_tx_apperances of this ValidAddressSearchData.
        :rtype: int
        """
        return self._unconfirmed_tx_apperances

    @unconfirmed_tx_apperances.setter
    def unconfirmed_tx_apperances(self, unconfirmed_tx_apperances):
        """
        Sets the unconfirmed_tx_apperances of this ValidAddressSearchData.


        :param unconfirmed_tx_apperances: The unconfirmed_tx_apperances of this ValidAddressSearchData.
        :type: int
        """

        self._unconfirmed_tx_apperances = unconfirmed_tx_apperances

    @property
    def tx_apperances(self):
        """
        Gets the tx_apperances of this ValidAddressSearchData.


        :return: The tx_apperances of this ValidAddressSearchData.
        :rtype: int
        """
        return self._tx_apperances

    @tx_apperances.setter
    def tx_apperances(self, tx_apperances):
        """
        Sets the tx_apperances of this ValidAddressSearchData.


        :param tx_apperances: The tx_apperances of this ValidAddressSearchData.
        :type: int
        """

        self._tx_apperances = tx_apperances

    @property
    def transactions(self):
        """
        Gets the transactions of this ValidAddressSearchData.


        :return: The transactions of this ValidAddressSearchData.
        :rtype: list[str]
        """
        return self._transactions

    @transactions.setter
    def transactions(self, transactions):
        """
        Sets the transactions of this ValidAddressSearchData.


        :param transactions: The transactions of this ValidAddressSearchData.
        :type: list[str]
        """

        self._transactions = transactions

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
