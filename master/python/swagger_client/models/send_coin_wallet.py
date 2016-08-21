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


class SendCoinWallet(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, wallet_id=None, amt=None, to_addr=None, msg=None, pin=None):
        """
        SendCoinWallet - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'wallet_id': 'str',
            'amt': 'int',
            'to_addr': 'str',
            'msg': 'str',
            'pin': 'str'
        }

        self.attribute_map = {
            'wallet_id': 'walletID',
            'amt': 'amt',
            'to_addr': 'toAddr',
            'msg': 'msg',
            'pin': 'pin'
        }

        self._wallet_id = wallet_id
        self._amt = amt
        self._to_addr = to_addr
        self._msg = msg
        self._pin = pin

    @property
    def wallet_id(self):
        """
        Gets the wallet_id of this SendCoinWallet.


        :return: The wallet_id of this SendCoinWallet.
        :rtype: str
        """
        return self._wallet_id

    @wallet_id.setter
    def wallet_id(self, wallet_id):
        """
        Sets the wallet_id of this SendCoinWallet.


        :param wallet_id: The wallet_id of this SendCoinWallet.
        :type: str
        """

        self._wallet_id = wallet_id

    @property
    def amt(self):
        """
        Gets the amt of this SendCoinWallet.


        :return: The amt of this SendCoinWallet.
        :rtype: int
        """
        return self._amt

    @amt.setter
    def amt(self, amt):
        """
        Sets the amt of this SendCoinWallet.


        :param amt: The amt of this SendCoinWallet.
        :type: int
        """

        self._amt = amt

    @property
    def to_addr(self):
        """
        Gets the to_addr of this SendCoinWallet.


        :return: The to_addr of this SendCoinWallet.
        :rtype: str
        """
        return self._to_addr

    @to_addr.setter
    def to_addr(self, to_addr):
        """
        Sets the to_addr of this SendCoinWallet.


        :param to_addr: The to_addr of this SendCoinWallet.
        :type: str
        """

        self._to_addr = to_addr

    @property
    def msg(self):
        """
        Gets the msg of this SendCoinWallet.


        :return: The msg of this SendCoinWallet.
        :rtype: str
        """
        return self._msg

    @msg.setter
    def msg(self, msg):
        """
        Sets the msg of this SendCoinWallet.


        :param msg: The msg of this SendCoinWallet.
        :type: str
        """

        self._msg = msg

    @property
    def pin(self):
        """
        Gets the pin of this SendCoinWallet.


        :return: The pin of this SendCoinWallet.
        :rtype: str
        """
        return self._pin

    @pin.setter
    def pin(self, pin):
        """
        Sets the pin of this SendCoinWallet.


        :param pin: The pin of this SendCoinWallet.
        :type: str
        """

        self._pin = pin

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
