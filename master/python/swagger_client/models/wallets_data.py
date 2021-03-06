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


class WalletsData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, wallet_id=None, name=None, coin_balance=None, time=None, info=None, netki=None):
        """
        WalletsData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'wallet_id': 'str',
            'name': 'str',
            'coin_balance': 'int',
            'time': 'int',
            'info': 'str',
            'netki': 'str'
        }

        self.attribute_map = {
            'wallet_id': 'walletID',
            'name': 'name',
            'coin_balance': 'coinBalance',
            'time': 'time',
            'info': 'info',
            'netki': 'netki'
        }

        self._wallet_id = wallet_id
        self._name = name
        self._coin_balance = coin_balance
        self._time = time
        self._info = info
        self._netki = netki

    @property
    def wallet_id(self):
        """
        Gets the wallet_id of this WalletsData.


        :return: The wallet_id of this WalletsData.
        :rtype: str
        """
        return self._wallet_id

    @wallet_id.setter
    def wallet_id(self, wallet_id):
        """
        Sets the wallet_id of this WalletsData.


        :param wallet_id: The wallet_id of this WalletsData.
        :type: str
        """

        self._wallet_id = wallet_id

    @property
    def name(self):
        """
        Gets the name of this WalletsData.


        :return: The name of this WalletsData.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """
        Sets the name of this WalletsData.


        :param name: The name of this WalletsData.
        :type: str
        """

        self._name = name

    @property
    def coin_balance(self):
        """
        Gets the coin_balance of this WalletsData.


        :return: The coin_balance of this WalletsData.
        :rtype: int
        """
        return self._coin_balance

    @coin_balance.setter
    def coin_balance(self, coin_balance):
        """
        Sets the coin_balance of this WalletsData.


        :param coin_balance: The coin_balance of this WalletsData.
        :type: int
        """

        self._coin_balance = coin_balance

    @property
    def time(self):
        """
        Gets the time of this WalletsData.


        :return: The time of this WalletsData.
        :rtype: int
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this WalletsData.


        :param time: The time of this WalletsData.
        :type: int
        """

        self._time = time

    @property
    def info(self):
        """
        Gets the info of this WalletsData.


        :return: The info of this WalletsData.
        :rtype: str
        """
        return self._info

    @info.setter
    def info(self, info):
        """
        Sets the info of this WalletsData.


        :param info: The info of this WalletsData.
        :type: str
        """

        self._info = info

    @property
    def netki(self):
        """
        Gets the netki of this WalletsData.


        :return: The netki of this WalletsData.
        :rtype: str
        """
        return self._netki

    @netki.setter
    def netki(self, netki):
        """
        Sets the netki of this WalletsData.


        :param netki: The netki of this WalletsData.
        :type: str
        """

        self._netki = netki

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
