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


class LoginFormNew(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, email=None, token=None, password=None, gcm_code=None, pin=None):
        """
        LoginFormNew - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'email': 'str',
            'token': 'str',
            'password': 'str',
            'gcm_code': 'str',
            'pin': 'str'
        }

        self.attribute_map = {
            'email': 'email',
            'token': 'token',
            'password': 'password',
            'gcm_code': 'gcmCode',
            'pin': 'pin'
        }

        self._email = email
        self._token = token
        self._password = password
        self._gcm_code = gcm_code
        self._pin = pin

    @property
    def email(self):
        """
        Gets the email of this LoginFormNew.


        :return: The email of this LoginFormNew.
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email):
        """
        Sets the email of this LoginFormNew.


        :param email: The email of this LoginFormNew.
        :type: str
        """

        self._email = email

    @property
    def token(self):
        """
        Gets the token of this LoginFormNew.


        :return: The token of this LoginFormNew.
        :rtype: str
        """
        return self._token

    @token.setter
    def token(self, token):
        """
        Sets the token of this LoginFormNew.


        :param token: The token of this LoginFormNew.
        :type: str
        """

        self._token = token

    @property
    def password(self):
        """
        Gets the password of this LoginFormNew.


        :return: The password of this LoginFormNew.
        :rtype: str
        """
        return self._password

    @password.setter
    def password(self, password):
        """
        Sets the password of this LoginFormNew.


        :param password: The password of this LoginFormNew.
        :type: str
        """

        self._password = password

    @property
    def gcm_code(self):
        """
        Gets the gcm_code of this LoginFormNew.


        :return: The gcm_code of this LoginFormNew.
        :rtype: str
        """
        return self._gcm_code

    @gcm_code.setter
    def gcm_code(self, gcm_code):
        """
        Sets the gcm_code of this LoginFormNew.


        :param gcm_code: The gcm_code of this LoginFormNew.
        :type: str
        """

        self._gcm_code = gcm_code

    @property
    def pin(self):
        """
        Gets the pin of this LoginFormNew.


        :return: The pin of this LoginFormNew.
        :rtype: str
        """
        return self._pin

    @pin.setter
    def pin(self, pin):
        """
        Sets the pin of this LoginFormNew.


        :param pin: The pin of this LoginFormNew.
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
