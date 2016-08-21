<?php
/**
 * BlockchainToolsApi
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

namespace Swagger\Client\Api;

use \Swagger\Client\Configuration;
use \Swagger\Client\ApiClient;
use \Swagger\Client\ApiException;
use \Swagger\Client\ObjectSerializer;

/**
 * BlockchainToolsApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class BlockchainToolsApi
{

    /**
     * API Client
     *
     * @var \Swagger\Client\ApiClient instance of the ApiClient
     */
    protected $apiClient;

    /**
     * Constructor
     *
     * @param \Swagger\Client\ApiClient|null $apiClient The api client to use
     */
    public function __construct(\Swagger\Client\ApiClient $apiClient = null)
    {
        if ($apiClient == null) {
            $apiClient = new ApiClient();
            $apiClient->getConfig()->setHost('https://api.coinsecure.in');
        }

        $this->apiClient = $apiClient;
    }

    /**
     * Get API client
     *
     * @return \Swagger\Client\ApiClient get the API client
     */
    public function getApiClient()
    {
        return $this->apiClient;
    }

    /**
     * Set the API client
     *
     * @param \Swagger\Client\ApiClient $apiClient set the API client
     *
     * @return BlockchainToolsApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation v1bitcoinsearchAddress
     *
     * Search Bitcoin Blockchain
     *
     * @param string $any  (required)
     * @param string $accept JSON, XML or CSV can be returned (Optional) (optional)
     * @return \Swagger\Client\Model\ValidAddressSearchDataResponse
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function v1bitcoinsearchAddress($any, $accept = null)
    {
        list($response) = $this->v1bitcoinsearchAddressWithHttpInfo($any, $accept);
        return $response;
    }

    /**
     * Operation v1bitcoinsearchAddressWithHttpInfo
     *
     * Search Bitcoin Blockchain
     *
     * @param string $any  (required)
     * @param string $accept JSON, XML or CSV can be returned (Optional) (optional)
     * @return Array of \Swagger\Client\Model\ValidAddressSearchDataResponse, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function v1bitcoinsearchAddressWithHttpInfo($any, $accept = null)
    {
        // verify the required parameter 'any' is set
        if ($any === null) {
            throw new \InvalidArgumentException('Missing the required parameter $any when calling v1bitcoinsearchAddress');
        }
        // parse inputs
        $resourcePath = "/v1/bitcoin/search/{any}";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json', 'application/xml', 'application/csv'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // header params
        if ($accept !== null) {
            $headerParams['accept'] = $this->apiClient->getSerializer()->toHeaderValue($accept);
        }
        // path params
        if ($any !== null) {
            $resourcePath = str_replace(
                "{" . "any" . "}",
                $this->apiClient->getSerializer()->toPathValue($any),
                $resourcePath
            );
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\ValidAddressSearchDataResponse',
                '/v1/bitcoin/search/{any}'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\ValidAddressSearchDataResponse', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ValidAddressSearchDataResponse', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 400:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\FailResult', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation v1bitcoinsearchTxid
     *
     * Get Confirmations
     *
     * @param string $txid  (required)
     * @param string $accept JSON, XML or CSV can be returned (Optional) (optional)
     * @return \Swagger\Client\Model\ConfirmDataResponse
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function v1bitcoinsearchTxid($txid, $accept = null)
    {
        list($response) = $this->v1bitcoinsearchTxidWithHttpInfo($txid, $accept);
        return $response;
    }

    /**
     * Operation v1bitcoinsearchTxidWithHttpInfo
     *
     * Get Confirmations
     *
     * @param string $txid  (required)
     * @param string $accept JSON, XML or CSV can be returned (Optional) (optional)
     * @return Array of \Swagger\Client\Model\ConfirmDataResponse, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function v1bitcoinsearchTxidWithHttpInfo($txid, $accept = null)
    {
        // verify the required parameter 'txid' is set
        if ($txid === null) {
            throw new \InvalidArgumentException('Missing the required parameter $txid when calling v1bitcoinsearchTxid');
        }
        // parse inputs
        $resourcePath = "/v1/bitcoin/search/confirmation/{txid}";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json', 'application/xml', 'application/csv'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // header params
        if ($accept !== null) {
            $headerParams['accept'] = $this->apiClient->getSerializer()->toHeaderValue($accept);
        }
        // path params
        if ($txid !== null) {
            $resourcePath = str_replace(
                "{" . "txid" . "}",
                $this->apiClient->getSerializer()->toPathValue($txid),
                $resourcePath
            );
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\ConfirmDataResponse',
                '/v1/bitcoin/search/confirmation/{txid}'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\ConfirmDataResponse', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ConfirmDataResponse', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 400:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\FailResult', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

}
