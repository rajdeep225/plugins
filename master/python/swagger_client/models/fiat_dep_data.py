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


class FiatDepData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, time_details=None, deposit_id=None, value=None, account=None, reason=None):
        """
        FiatDepData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'time_details': 'TimeDataCoin',
            'deposit_id': 'str',
            'value': 'int',
            'account': 'str',
            'reason': 'str'
        }

        self.attribute_map = {
            'time_details': 'timeDetails',
            'deposit_id': 'depositID',
            'value': 'value',
            'account': 'account',
            'reason': 'reason'
        }

        self._time_details = time_details
        self._deposit_id = deposit_id
        self._value = value
        self._account = account
        self._reason = reason

    @property
    def time_details(self):
        """
        Gets the time_details of this FiatDepData.


        :return: The time_details of this FiatDepData.
        :rtype: TimeDataCoin
        """
        return self._time_details

    @time_details.setter
    def time_details(self, time_details):
        """
        Sets the time_details of this FiatDepData.


        :param time_details: The time_details of this FiatDepData.
        :type: TimeDataCoin
        """

        self._time_details = time_details

    @property
    def deposit_id(self):
        """
        Gets the deposit_id of this FiatDepData.


        :return: The deposit_id of this FiatDepData.
        :rtype: str
        """
        return self._deposit_id

    @deposit_id.setter
    def deposit_id(self, deposit_id):
        """
        Sets the deposit_id of this FiatDepData.


        :param deposit_id: The deposit_id of this FiatDepData.
        :type: str
        """

        self._deposit_id = deposit_id

    @property
    def value(self):
        """
        Gets the value of this FiatDepData.


        :return: The value of this FiatDepData.
        :rtype: int
        """
        return self._value

    @value.setter
    def value(self, value):
        """
        Sets the value of this FiatDepData.


        :param value: The value of this FiatDepData.
        :type: int
        """

        self._value = value

    @property
    def account(self):
        """
        Gets the account of this FiatDepData.


        :return: The account of this FiatDepData.
        :rtype: str
        """
        return self._account

    @account.setter
    def account(self, account):
        """
        Sets the account of this FiatDepData.


        :param account: The account of this FiatDepData.
        :type: str
        """

        self._account = account

    @property
    def reason(self):
        """
        Gets the reason of this FiatDepData.


        :return: The reason of this FiatDepData.
        :rtype: str
        """
        return self._reason

    @reason.setter
    def reason(self, reason):
        """
        Sets the reason of this FiatDepData.


        :param reason: The reason of this FiatDepData.
        :type: str
        """

        self._reason = reason

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
