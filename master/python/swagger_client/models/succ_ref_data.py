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


class SuccRefData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, ref_percent=None, time=None, ref_id=None, email_verified=False, kyc_complete=False, btc_earned=None, fiat_earned=None):
        """
        SuccRefData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'ref_percent': 'float',
            'time': 'int',
            'ref_id': 'str',
            'email_verified': 'bool',
            'kyc_complete': 'bool',
            'btc_earned': 'int',
            'fiat_earned': 'int'
        }

        self.attribute_map = {
            'ref_percent': 'refPercent',
            'time': 'time',
            'ref_id': 'refID',
            'email_verified': 'emailVerified',
            'kyc_complete': 'kycComplete',
            'btc_earned': 'btcEarned',
            'fiat_earned': 'fiatEarned'
        }

        self._ref_percent = ref_percent
        self._time = time
        self._ref_id = ref_id
        self._email_verified = email_verified
        self._kyc_complete = kyc_complete
        self._btc_earned = btc_earned
        self._fiat_earned = fiat_earned

    @property
    def ref_percent(self):
        """
        Gets the ref_percent of this SuccRefData.


        :return: The ref_percent of this SuccRefData.
        :rtype: float
        """
        return self._ref_percent

    @ref_percent.setter
    def ref_percent(self, ref_percent):
        """
        Sets the ref_percent of this SuccRefData.


        :param ref_percent: The ref_percent of this SuccRefData.
        :type: float
        """

        self._ref_percent = ref_percent

    @property
    def time(self):
        """
        Gets the time of this SuccRefData.


        :return: The time of this SuccRefData.
        :rtype: int
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this SuccRefData.


        :param time: The time of this SuccRefData.
        :type: int
        """

        self._time = time

    @property
    def ref_id(self):
        """
        Gets the ref_id of this SuccRefData.


        :return: The ref_id of this SuccRefData.
        :rtype: str
        """
        return self._ref_id

    @ref_id.setter
    def ref_id(self, ref_id):
        """
        Sets the ref_id of this SuccRefData.


        :param ref_id: The ref_id of this SuccRefData.
        :type: str
        """

        self._ref_id = ref_id

    @property
    def email_verified(self):
        """
        Gets the email_verified of this SuccRefData.


        :return: The email_verified of this SuccRefData.
        :rtype: bool
        """
        return self._email_verified

    @email_verified.setter
    def email_verified(self, email_verified):
        """
        Sets the email_verified of this SuccRefData.


        :param email_verified: The email_verified of this SuccRefData.
        :type: bool
        """

        self._email_verified = email_verified

    @property
    def kyc_complete(self):
        """
        Gets the kyc_complete of this SuccRefData.


        :return: The kyc_complete of this SuccRefData.
        :rtype: bool
        """
        return self._kyc_complete

    @kyc_complete.setter
    def kyc_complete(self, kyc_complete):
        """
        Sets the kyc_complete of this SuccRefData.


        :param kyc_complete: The kyc_complete of this SuccRefData.
        :type: bool
        """

        self._kyc_complete = kyc_complete

    @property
    def btc_earned(self):
        """
        Gets the btc_earned of this SuccRefData.


        :return: The btc_earned of this SuccRefData.
        :rtype: int
        """
        return self._btc_earned

    @btc_earned.setter
    def btc_earned(self, btc_earned):
        """
        Sets the btc_earned of this SuccRefData.


        :param btc_earned: The btc_earned of this SuccRefData.
        :type: int
        """

        self._btc_earned = btc_earned

    @property
    def fiat_earned(self):
        """
        Gets the fiat_earned of this SuccRefData.


        :return: The fiat_earned of this SuccRefData.
        :rtype: int
        """
        return self._fiat_earned

    @fiat_earned.setter
    def fiat_earned(self, fiat_earned):
        """
        Sets the fiat_earned of this SuccRefData.


        :param fiat_earned: The fiat_earned of this SuccRefData.
        :type: int
        """

        self._fiat_earned = fiat_earned

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
