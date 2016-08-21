<?php
/**
 * SuccRefData
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
 * SuccRefData Class Doc Comment
 *
 * @category    Class */
/** 
 * @package     Swagger\Client
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class SuccRefData implements ArrayAccess
{
    /**
      * The original name of the model.
      * @var string
      */
    protected static $swaggerModelName = 'SuccRefData';

    /**
      * Array of property to type mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerTypes = array(
        'ref_percent' => 'double',
        'time' => 'int',
        'ref_id' => 'string',
        'email_verified' => 'bool',
        'kyc_complete' => 'bool',
        'btc_earned' => 'int',
        'fiat_earned' => 'int'
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
        'ref_percent' => 'refPercent',
        'time' => 'time',
        'ref_id' => 'refID',
        'email_verified' => 'emailVerified',
        'kyc_complete' => 'kycComplete',
        'btc_earned' => 'btcEarned',
        'fiat_earned' => 'fiatEarned'
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
        'ref_percent' => 'setRefPercent',
        'time' => 'setTime',
        'ref_id' => 'setRefId',
        'email_verified' => 'setEmailVerified',
        'kyc_complete' => 'setKycComplete',
        'btc_earned' => 'setBtcEarned',
        'fiat_earned' => 'setFiatEarned'
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
        'ref_percent' => 'getRefPercent',
        'time' => 'getTime',
        'ref_id' => 'getRefId',
        'email_verified' => 'getEmailVerified',
        'kyc_complete' => 'getKycComplete',
        'btc_earned' => 'getBtcEarned',
        'fiat_earned' => 'getFiatEarned'
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
        $this->container['ref_percent'] = isset($data['ref_percent']) ? $data['ref_percent'] : null;
        $this->container['time'] = isset($data['time']) ? $data['time'] : null;
        $this->container['ref_id'] = isset($data['ref_id']) ? $data['ref_id'] : null;
        $this->container['email_verified'] = isset($data['email_verified']) ? $data['email_verified'] : false;
        $this->container['kyc_complete'] = isset($data['kyc_complete']) ? $data['kyc_complete'] : false;
        $this->container['btc_earned'] = isset($data['btc_earned']) ? $data['btc_earned'] : null;
        $this->container['fiat_earned'] = isset($data['fiat_earned']) ? $data['fiat_earned'] : null;
    }

    /**
     * show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalid_properties = array();
        if ($this->container['ref_percent'] === null) {
            $invalid_properties[] = "'ref_percent' can't be null";
        }
        if ($this->container['time'] === null) {
            $invalid_properties[] = "'time' can't be null";
        }
        if ($this->container['ref_id'] === null) {
            $invalid_properties[] = "'ref_id' can't be null";
        }
        if ($this->container['email_verified'] === null) {
            $invalid_properties[] = "'email_verified' can't be null";
        }
        if ($this->container['kyc_complete'] === null) {
            $invalid_properties[] = "'kyc_complete' can't be null";
        }
        if ($this->container['btc_earned'] === null) {
            $invalid_properties[] = "'btc_earned' can't be null";
        }
        if ($this->container['fiat_earned'] === null) {
            $invalid_properties[] = "'fiat_earned' can't be null";
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
        if ($this->container['ref_percent'] === null) {
            return false;
        }
        if ($this->container['time'] === null) {
            return false;
        }
        if ($this->container['ref_id'] === null) {
            return false;
        }
        if ($this->container['email_verified'] === null) {
            return false;
        }
        if ($this->container['kyc_complete'] === null) {
            return false;
        }
        if ($this->container['btc_earned'] === null) {
            return false;
        }
        if ($this->container['fiat_earned'] === null) {
            return false;
        }
        return true;
    }


    /**
     * Gets ref_percent
     * @return double
     */
    public function getRefPercent()
    {
        return $this->container['ref_percent'];
    }

    /**
     * Sets ref_percent
     * @param double $ref_percent
     * @return $this
     */
    public function setRefPercent($ref_percent)
    {
        $this->container['ref_percent'] = $ref_percent;

        return $this;
    }

    /**
     * Gets time
     * @return int
     */
    public function getTime()
    {
        return $this->container['time'];
    }

    /**
     * Sets time
     * @param int $time
     * @return $this
     */
    public function setTime($time)
    {
        $this->container['time'] = $time;

        return $this;
    }

    /**
     * Gets ref_id
     * @return string
     */
    public function getRefId()
    {
        return $this->container['ref_id'];
    }

    /**
     * Sets ref_id
     * @param string $ref_id
     * @return $this
     */
    public function setRefId($ref_id)
    {
        $this->container['ref_id'] = $ref_id;

        return $this;
    }

    /**
     * Gets email_verified
     * @return bool
     */
    public function getEmailVerified()
    {
        return $this->container['email_verified'];
    }

    /**
     * Sets email_verified
     * @param bool $email_verified
     * @return $this
     */
    public function setEmailVerified($email_verified)
    {
        $this->container['email_verified'] = $email_verified;

        return $this;
    }

    /**
     * Gets kyc_complete
     * @return bool
     */
    public function getKycComplete()
    {
        return $this->container['kyc_complete'];
    }

    /**
     * Sets kyc_complete
     * @param bool $kyc_complete
     * @return $this
     */
    public function setKycComplete($kyc_complete)
    {
        $this->container['kyc_complete'] = $kyc_complete;

        return $this;
    }

    /**
     * Gets btc_earned
     * @return int
     */
    public function getBtcEarned()
    {
        return $this->container['btc_earned'];
    }

    /**
     * Sets btc_earned
     * @param int $btc_earned
     * @return $this
     */
    public function setBtcEarned($btc_earned)
    {
        $this->container['btc_earned'] = $btc_earned;

        return $this;
    }

    /**
     * Gets fiat_earned
     * @return int
     */
    public function getFiatEarned()
    {
        return $this->container['fiat_earned'];
    }

    /**
     * Sets fiat_earned
     * @param int $fiat_earned
     * @return $this
     */
    public function setFiatEarned($fiat_earned)
    {
        $this->container['fiat_earned'] = $fiat_earned;

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


