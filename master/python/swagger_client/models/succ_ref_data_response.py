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


class SuccRefDataResponse(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, success=False, message=None, method=None, title=None, time=None):
        """
        SuccRefDataResponse - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'success': 'bool',
            'message': 'list[SuccRefData]',
            'method': 'str',
            'title': 'str',
            'time': 'datetime'
        }

        self.attribute_map = {
            'success': 'success',
            'message': 'message',
            'method': 'method',
            'title': 'title',
            'time': 'time'
        }

        self._success = success
        self._message = message
        self._method = method
        self._title = title
        self._time = time

    @property
    def success(self):
        """
        Gets the success of this SuccRefDataResponse.
        true

        :return: The success of this SuccRefDataResponse.
        :rtype: bool
        """
        return self._success

    @success.setter
    def success(self, success):
        """
        Sets the success of this SuccRefDataResponse.
        true

        :param success: The success of this SuccRefDataResponse.
        :type: bool
        """

        self._success = success

    @property
    def message(self):
        """
        Gets the message of this SuccRefDataResponse.


        :return: The message of this SuccRefDataResponse.
        :rtype: list[SuccRefData]
        """
        return self._message

    @message.setter
    def message(self, message):
        """
        Sets the message of this SuccRefDataResponse.


        :param message: The message of this SuccRefDataResponse.
        :type: list[SuccRefData]
        """

        self._message = message

    @property
    def method(self):
        """
        Gets the method of this SuccRefDataResponse.


        :return: The method of this SuccRefDataResponse.
        :rtype: str
        """
        return self._method

    @method.setter
    def method(self, method):
        """
        Sets the method of this SuccRefDataResponse.


        :param method: The method of this SuccRefDataResponse.
        :type: str
        """

        self._method = method

    @property
    def title(self):
        """
        Gets the title of this SuccRefDataResponse.


        :return: The title of this SuccRefDataResponse.
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """
        Sets the title of this SuccRefDataResponse.


        :param title: The title of this SuccRefDataResponse.
        :type: str
        """

        self._title = title

    @property
    def time(self):
        """
        Gets the time of this SuccRefDataResponse.


        :return: The time of this SuccRefDataResponse.
        :rtype: datetime
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this SuccRefDataResponse.


        :param time: The time of this SuccRefDataResponse.
        :type: datetime
        """

        self._time = time

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
