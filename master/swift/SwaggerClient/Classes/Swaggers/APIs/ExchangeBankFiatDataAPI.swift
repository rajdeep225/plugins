//
// ExchangeBankFiatDataAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ExchangeBankFiatDataAPI: APIBase {
    /**
     Exchange Bitcoin Deposit Addresses
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiataccounts(completion: ((data: FiatBankDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiataccountsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Exchange Bitcoin Deposit Addresses
     - GET /v1/user/exchange/bank/fiat/accounts
     - Gets a List of Users Exchange Bitcoin Addresses.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "bankID" : "aeiou",
    "accountType" : "aeiou",
    "updateTime" : 123456789,
    "time" : 123456789,
    "accountNumber" : "aeiou",
    "accountNick" : "aeiou",
    "updateMessage" : "aeiou",
    "status" : "aeiou",
    "info" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "bankID" : "aeiou",
    "accountType" : "aeiou",
    "updateTime" : 123456789,
    "time" : 123456789,
    "accountNumber" : "aeiou",
    "accountNick" : "aeiou",
    "updateMessage" : "aeiou",
    "status" : "aeiou",
    "info" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]

     - returns: RequestBuilder<FiatBankDataResponse> 
     */
    public class func v1userexchangebankfiataccountsWithRequestBuilder() -> RequestBuilder<FiatBankDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/accounts"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatBankDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Available Exchange Fiat Balance
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatbalanceavailable(completion: ((data: RateDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatbalanceavailableWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Available Exchange Fiat Balance
     - GET /v1/user/exchange/bank/fiat/balance/total
     - Returns balance which is in Available for Trades. The response is in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]

     - returns: RequestBuilder<RateDataResponse> 
     */
    public class func v1userexchangebankfiatbalanceavailableWithRequestBuilder() -> RequestBuilder<RateDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/balance/total"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RateDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     In Trade Coin Balance
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatbalancepending(completion: ((data: RateDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatbalancependingWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     In Trade Coin Balance
     - GET /v1/user/exchange/bank/fiat/balance/pending
     - Returns in-trade or pending fiat balance in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]

     - returns: RequestBuilder<RateDataResponse> 
     */
    public class func v1userexchangebankfiatbalancependingWithRequestBuilder() -> RequestBuilder<RateDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/balance/pending"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RateDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Total Exchange Fiat Balance
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatbalancetotal(completion: ((data: RateDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatbalancetotalWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Total Exchange Fiat Balance
     - GET /v1/user/exchange/bank/fiat/balance/available
     - Returns users total fiat balance in paisa. Pending + Available
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : {
    "rate" : 123456789
  },
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]

     - returns: RequestBuilder<RateDataResponse> 
     */
    public class func v1userexchangebankfiatbalancetotalWithRequestBuilder() -> RequestBuilder<RateDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/balance/available"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RateDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Cancelled Exchange Fiat Deposits
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatdepositcancelled(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatDepDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatdepositcancelledWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Cancelled Exchange Fiat Deposits
     - GET /v1/user/exchange/bank/fiat/deposit/cancelled
     - Gets a List of Cancelled Exchange Fiat Deposits. The value and fees are in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatDepDataResponse> 
     */
    public class func v1userexchangebankfiatdepositcancelledWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatDepDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/deposit/cancelled"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatDepDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Unverified Exchange Fiat Deposits
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatdepositunverified(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatDepDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatdepositunverifiedWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Unverified Exchange Fiat Deposits
     - GET /v1/user/exchange/bank/fiat/deposit/unverified
     - Gets a List of Unverified Exchange Fiat Deposits. The value and fees are in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatDepDataResponse> 
     */
    public class func v1userexchangebankfiatdepositunverifiedWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatDepDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/deposit/unverified"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatDepDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Verified Exchange Fiat Deposits
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatdepositverified(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatDepDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatdepositverifiedWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Verified Exchange Fiat Deposits
     - GET /v1/user/exchange/bank/fiat/deposit/verified
     - Gets a List of Verified Exchange Fiat Deposits. The value and fees are in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "depositID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatDepDataResponse> 
     */
    public class func v1userexchangebankfiatdepositverifiedWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatDepDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/deposit/verified"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatDepDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Cancelled Exchange Fiat Withdrawals
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatwithdrawcancelled(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatWithDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatwithdrawcancelledWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Cancelled Exchange Fiat Withdrawals
     - GET /v1/user/exchange/bank/fiat/withdraw/cancelled
     - Gets a List of Cancelled Exchange Fiat Withdrawals. The fiat value is in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatWithDataResponse> 
     */
    public class func v1userexchangebankfiatwithdrawcancelledWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatWithDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/withdraw/cancelled"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatWithDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Completed Exchange Fiat Withdrawals
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatwithdrawcompleted(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatWithDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatwithdrawcompletedWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Completed Exchange Fiat Withdrawals
     - GET /v1/user/exchange/bank/fiat/withdraw/completed
     - Gets a List of Completed Exchange Fiat Withdrawals. The fiat value is in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatWithDataResponse> 
     */
    public class func v1userexchangebankfiatwithdrawcompletedWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatWithDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/withdraw/completed"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatWithDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Unverified Exchange Fiat Withdrawals
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatwithdrawunverified(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatWithDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatwithdrawunverifiedWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Unverified Exchange Fiat Withdrawals
     - GET /v1/user/exchange/bank/fiat/withdraw/unverified
     - Gets a List of Unverified Exchange Fiat Withdrawals. The fiat value is in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatWithDataResponse> 
     */
    public class func v1userexchangebankfiatwithdrawunverifiedWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatWithDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/withdraw/unverified"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatWithDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Verified Exchange Fiat Withdrawals
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1userexchangebankfiatwithdrawverified(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil, completion: ((data: FiatWithDataResponse?, error: ErrorType?) -> Void)) {
        v1userexchangebankfiatwithdrawverifiedWithRequestBuilder(from: from, to: to, max: max, offset: offset).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Verified Exchange Fiat Withdrawals
     - GET /v1/user/exchange/bank/fiat/withdraw/verified
     - Gets a List of Verified Exchange Fiat Withdrawals. The fiat value is in paisa.
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     - examples: [{contentType=application/json, example={
  "method" : "aeiou",
  "success" : true,
  "time" : "2000-01-23T04:56:07.000+0000",
  "message" : [ {
    "reason" : "aeiou",
    "withdrawID" : "aeiou",
    "value" : 123456789,
    "timeDetails" : {
      "time" : 123456789,
      "verifiedTime" : 123456789
    },
    "account" : "aeiou"
  } ],
  "title" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <success>true</success>
  <method>string</method>
  <title>string</title>
  <time>2000-01-23T04:56:07.000Z</time>
</null>}]
     
     - parameter from: (query) From date in Epoch, defaults to 0 if invalid input or greater than current time. (Optional) (optional, default to 0)
     - parameter to: (query) To Date in Epoch, defaults to current time if invalid input or greater than current time. (Optional) (optional, default to 9223372036854776000)
     - parameter max: (query) Max defaults to 10 if invalid input and defaults to 100 if greater than 100. (Optional) (optional, default to 10)
     - parameter offset: (query) Offset defaults to 0 if input is invalid. (Optional) (optional, default to 0)

     - returns: RequestBuilder<FiatWithDataResponse> 
     */
    public class func v1userexchangebankfiatwithdrawverifiedWithRequestBuilder(from from: Int64? = nil, to: Int64? = nil, max: Int32? = nil, offset: Int64? = nil) -> RequestBuilder<FiatWithDataResponse> {
        let path = "/v1/user/exchange/bank/fiat/withdraw/verified"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "from": from?.encodeToJSON(),
            "to": to?.encodeToJSON(),
            "max": max?.encodeToJSON(),
            "offset": offset?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FiatWithDataResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}