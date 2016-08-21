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


class SuccessOrderData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, time=None, vol=None, rate=None, order_id=None, status=None, human_time=None):
        """
        SuccessOrderData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'time': 'int',
            'vol': 'int',
            'rate': 'int',
            'order_id': 'str',
            'status': 'str',
            'human_time': 'str'
        }

        self.attribute_map = {
            'time': 'time',
            'vol': 'vol',
            'rate': 'rate',
            'order_id': 'orderID',
            'status': 'status',
            'human_time': 'human_time'
        }

        self._time = time
        self._vol = vol
        self._rate = rate
        self._order_id = order_id
        self._status = status
        self._human_time = human_time

    @property
    def time(self):
        """
        Gets the time of this SuccessOrderData.


        :return: The time of this SuccessOrderData.
        :rtype: int
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this SuccessOrderData.


        :param time: The time of this SuccessOrderData.
        :type: int
        """

        self._time = time

    @property
    def vol(self):
        """
        Gets the vol of this SuccessOrderData.


        :return: The vol of this SuccessOrderData.
        :rtype: int
        """
        return self._vol

    @vol.setter
    def vol(self, vol):
        """
        Sets the vol of this SuccessOrderData.


        :param vol: The vol of this SuccessOrderData.
        :type: int
        """

        self._vol = vol

    @property
    def rate(self):
        """
        Gets the rate of this SuccessOrderData.


        :return: The rate of this SuccessOrderData.
        :rtype: int
        """
        return self._rate

    @rate.setter
    def rate(self, rate):
        """
        Sets the rate of this SuccessOrderData.


        :param rate: The rate of this SuccessOrderData.
        :type: int
        """

        self._rate = rate

    @property
    def order_id(self):
        """
        Gets the order_id of this SuccessOrderData.


        :return: The order_id of this SuccessOrderData.
        :rtype: str
        """
        return self._order_id

    @order_id.setter
    def order_id(self, order_id):
        """
        Sets the order_id of this SuccessOrderData.


        :param order_id: The order_id of this SuccessOrderData.
        :type: str
        """

        self._order_id = order_id

    @property
    def status(self):
        """
        Gets the status of this SuccessOrderData.


        :return: The status of this SuccessOrderData.
        :rtype: str
        """
        return self._status

    @status.setter
    def status(self, status):
        """
        Sets the status of this SuccessOrderData.


        :param status: The status of this SuccessOrderData.
        :type: str
        """

        self._status = status

    @property
    def human_time(self):
        """
        Gets the human_time of this SuccessOrderData.


        :return: The human_time of this SuccessOrderData.
        :rtype: str
        """
        return self._human_time

    @human_time.setter
    def human_time(self, human_time):
        """
        Sets the human_time of this SuccessOrderData.


        :param human_time: The human_time of this SuccessOrderData.
        :type: str
        """

        self._human_time = human_time

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