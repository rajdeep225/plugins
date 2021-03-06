<?php
/**
 * TradeCoinWithdrawData
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
 * OpenAPI spec version: beta
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
 * TradeCoinWithdrawData Class Doc Comment
 *
 * @category    Class */
/** 
 * @package     Swagger\Client
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class TradeCoinWithdrawData implements ArrayAccess
{
    /**
      * The original name of the model.
      * @var string
      */
    protected static $swaggerModelName = 'TradeCoinWithdrawData';

    /**
      * Array of property to type mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerTypes = array(
        'time_details' => '\Swagger\Client\Model\TimeData',
        'address' => 'string',
        'value' => 'int',
        'fees' => 'int',
        'withdraw_id' => 'string',
        'tx_hash' => 'string'
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
        'time_details' => 'timeDetails',
        'address' => 'address',
        'value' => 'value',
        'fees' => 'fees',
        'withdraw_id' => 'withdrawID',
        'tx_hash' => 'txHash'
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
        'time_details' => 'setTimeDetails',
        'address' => 'setAddress',
        'value' => 'setValue',
        'fees' => 'setFees',
        'withdraw_id' => 'setWithdrawId',
        'tx_hash' => 'setTxHash'
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
        'time_details' => 'getTimeDetails',
        'address' => 'getAddress',
        'value' => 'getValue',
        'fees' => 'getFees',
        'withdraw_id' => 'getWithdrawId',
        'tx_hash' => 'getTxHash'
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
        $this->container['time_details'] = isset($data['time_details']) ? $data['time_details'] : null;
        $this->container['address'] = isset($data['address']) ? $data['address'] : null;
        $this->container['value'] = isset($data['value']) ? $data['value'] : null;
        $this->container['fees'] = isset($data['fees']) ? $data['fees'] : null;
        $this->container['withdraw_id'] = isset($data['withdraw_id']) ? $data['withdraw_id'] : null;
        $this->container['tx_hash'] = isset($data['tx_hash']) ? $data['tx_hash'] : null;
    }

    /**
     * show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalid_properties = array();
        if ($this->container['time_details'] === null) {
            $invalid_properties[] = "'time_details' can't be null";
        }
        if ($this->container['address'] === null) {
            $invalid_properties[] = "'address' can't be null";
        }
        if ($this->container['value'] === null) {
            $invalid_properties[] = "'value' can't be null";
        }
        if ($this->container['fees'] === null) {
            $invalid_properties[] = "'fees' can't be null";
        }
        if ($this->container['withdraw_id'] === null) {
            $invalid_properties[] = "'withdraw_id' can't be null";
        }
        if ($this->container['tx_hash'] === null) {
            $invalid_properties[] = "'tx_hash' can't be null";
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
        if ($this->container['time_details'] === null) {
            return false;
        }
        if ($this->container['address'] === null) {
            return false;
        }
        if ($this->container['value'] === null) {
            return false;
        }
        if ($this->container['fees'] === null) {
            return false;
        }
        if ($this->container['withdraw_id'] === null) {
            return false;
        }
        if ($this->container['tx_hash'] === null) {
            return false;
        }
        return true;
    }


    /**
     * Gets time_details
     * @return \Swagger\Client\Model\TimeData
     */
    public function getTimeDetails()
    {
        return $this->container['time_details'];
    }

    /**
     * Sets time_details
     * @param \Swagger\Client\Model\TimeData $time_details
     * @return $this
     */
    public function setTimeDetails($time_details)
    {
        $this->container['time_details'] = $time_details;

        return $this;
    }

    /**
     * Gets address
     * @return string
     */
    public function getAddress()
    {
        return $this->container['address'];
    }

    /**
     * Sets address
     * @param string $address
     * @return $this
     */
    public function setAddress($address)
    {
        $this->container['address'] = $address;

        return $this;
    }

    /**
     * Gets value
     * @return int
     */
    public function getValue()
    {
        return $this->container['value'];
    }

    /**
     * Sets value
     * @param int $value
     * @return $this
     */
    public function setValue($value)
    {
        $this->container['value'] = $value;

        return $this;
    }

    /**
     * Gets fees
     * @return int
     */
    public function getFees()
    {
        return $this->container['fees'];
    }

    /**
     * Sets fees
     * @param int $fees
     * @return $this
     */
    public function setFees($fees)
    {
        $this->container['fees'] = $fees;

        return $this;
    }

    /**
     * Gets withdraw_id
     * @return string
     */
    public function getWithdrawId()
    {
        return $this->container['withdraw_id'];
    }

    /**
     * Sets withdraw_id
     * @param string $withdraw_id
     * @return $this
     */
    public function setWithdrawId($withdraw_id)
    {
        $this->container['withdraw_id'] = $withdraw_id;

        return $this;
    }

    /**
     * Gets tx_hash
     * @return string
     */
    public function getTxHash()
    {
        return $this->container['tx_hash'];
    }

    /**
     * Sets tx_hash
     * @param string $tx_hash
     * @return $this
     */
    public function setTxHash($tx_hash)
    {
        $this->container['tx_hash'] = $tx_hash;

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


