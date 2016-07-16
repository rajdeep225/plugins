<?php
/**
 * SuccessInitiateLoginResponse
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * Coinsecure Api Documentation
 *
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: 1.0b
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;

/**
 * SuccessInitiateLoginResponse Class Doc Comment
 *
 * @category    Class
 * @package     Swagger\Client
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class SuccessInitiateLoginResponse implements ArrayAccess
{
    /**
      * The original name of the model.
      * @var string
      */
    protected static $swaggerModelName = 'SuccessInitiateLoginResponse';

    /**
      * Array of property to type mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerTypes = array(
        'info' => 'string',
        'valid_till' => 'int',
        'mfa' => 'string',
        'token' => 'string'
    );

    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of attributes where the key is the local name, and the value is the original name
     * @var string[]
     */
    protected static $attributeMap = array(
        'info' => 'info',
        'valid_till' => 'validTill',
        'mfa' => 'mfa',
        'token' => 'token'
    );

    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     * @var string[]
     */
    protected static $setters = array(
        'info' => 'setInfo',
        'valid_till' => 'setValidTill',
        'mfa' => 'setMfa',
        'token' => 'setToken'
    );

    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     * @var string[]
     */
    protected static $getters = array(
        'info' => 'getInfo',
        'valid_till' => 'getValidTill',
        'mfa' => 'getMfa',
        'token' => 'getToken'
    );

    public static function getters()
    {
        return self::$getters;
    }

    

    

    /**
     * Associative array for storing property values
     * @var mixed[]
     */
    protected $container = array();

    /**
     * Constructor
     * @param mixed[] $data Associated array of property value initalizing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['info'] = isset($data['info']) ? $data['info'] : null;
        $this->container['valid_till'] = isset($data['valid_till']) ? $data['valid_till'] : null;
        $this->container['mfa'] = isset($data['mfa']) ? $data['mfa'] : null;
        $this->container['token'] = isset($data['token']) ? $data['token'] : null;
    }

    /**
     * show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalid_properties = array();
        if ($this->container['info'] === null) {
            $invalid_properties[] = "'info' can't be null";
        }
        if ($this->container['valid_till'] === null) {
            $invalid_properties[] = "'valid_till' can't be null";
        }
        if ($this->container['mfa'] === null) {
            $invalid_properties[] = "'mfa' can't be null";
        }
        if ($this->container['token'] === null) {
            $invalid_properties[] = "'token' can't be null";
        }
        return $invalid_properties;
    }

    /**
     * validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properteis are valid
     */
    public function valid()
    {
        if ($this->container['info'] === null) {
            return false;
        }
        if ($this->container['valid_till'] === null) {
            return false;
        }
        if ($this->container['mfa'] === null) {
            return false;
        }
        if ($this->container['token'] === null) {
            return false;
        }
        return true;
    }


    /**
     * Gets info
     * @return string
     */
    public function getInfo()
    {
        return $this->container['info'];
    }

    /**
     * Sets info
     * @param string $info
     * @return $this
     */
    public function setInfo($info)
    {
        $this->container['info'] = $info;

        return $this;
    }

    /**
     * Gets valid_till
     * @return int
     */
    public function getValidTill()
    {
        return $this->container['valid_till'];
    }

    /**
     * Sets valid_till
     * @param int $valid_till
     * @return $this
     */
    public function setValidTill($valid_till)
    {
        $this->container['valid_till'] = $valid_till;

        return $this;
    }

    /**
     * Gets mfa
     * @return string
     */
    public function getMfa()
    {
        return $this->container['mfa'];
    }

    /**
     * Sets mfa
     * @param string $mfa
     * @return $this
     */
    public function setMfa($mfa)
    {
        $this->container['mfa'] = $mfa;

        return $this;
    }

    /**
     * Gets token
     * @return string
     */
    public function getToken()
    {
        return $this->container['token'];
    }

    /**
     * Sets token
     * @param string $token
     * @return $this
     */
    public function setToken($token)
    {
        $this->container['token'] = $token;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     * @param  integer $offset Offset
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     * @param  integer $offset Offset
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     * @param  integer $offset Offset
     * @param  mixed   $value  Value to be set
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     * @param  integer $offset Offset
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(\Swagger\Client\ObjectSerializer::sanitizeForSerialization($this), JSON_PRETTY_PRINT);
        }

        return json_encode(\Swagger\Client\ObjectSerializer::sanitizeForSerialization($this));
    }
}