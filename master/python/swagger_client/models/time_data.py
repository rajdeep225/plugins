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


class TimeData(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, time=None, verified_time=None, completed_time=None):
        """
        TimeData - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'time': 'int',
            'verified_time': 'int',
            'completed_time': 'int'
        }

        self.attribute_map = {
            'time': 'time',
            'verified_time': 'verifiedTime',
            'completed_time': 'completedTime'
        }

        self._time = time
        self._verified_time = verified_time
        self._completed_time = completed_time

    @property
    def time(self):
        """
        Gets the time of this TimeData.


        :return: The time of this TimeData.
        :rtype: int
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this TimeData.


        :param time: The time of this TimeData.
        :type: int
        """

        self._time = time

    @property
    def verified_time(self):
        """
        Gets the verified_time of this TimeData.


        :return: The verified_time of this TimeData.
        :rtype: int
        """
        return self._verified_time

    @verified_time.setter
    def verified_time(self, verified_time):
        """
        Sets the verified_time of this TimeData.


        :param verified_time: The verified_time of this TimeData.
        :type: int
        """

        self._verified_time = verified_time

    @property
    def completed_time(self):
        """
        Gets the completed_time of this TimeData.


        :return: The completed_time of this TimeData.
        :rtype: int
        """
        return self._completed_time

    @completed_time.setter
    def completed_time(self, completed_time):
        """
        Sets the completed_time of this TimeData.


        :param completed_time: The completed_time of this TimeData.
        :type: int
        """

        self._completed_time = completed_time

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
