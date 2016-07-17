package io.swagger.client.api;

import io.swagger.client.ApiInvoker;
import io.swagger.client.ApiException;
import io.swagger.client.Pair;

import io.swagger.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import io.swagger.client.model.WalletAddressDataResponse;
import io.swagger.client.model.FailResult;
import io.swagger.client.model.WalletsDataResponse;
import io.swagger.client.model.WalletCoinWithdrawDataResponse;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class WalletDataApi {
  String basePath = "https://api.coinsecure.in";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Wallet Bitcoin Addresses
  * Gets a List of Users Bitcoin Deposit Addresses.
   * @param walletID 
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletAddressDataResponse
  */
  public WalletAddressDataResponse v1userwalletcoinaddressWalletID (String walletID, String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'walletID' is set
      if (walletID == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoinaddressWalletID",
      new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoinaddressWalletID"));
      }
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/address/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletAddressDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Wallet Bitcoin Addresses
   * Gets a List of Users Bitcoin Deposit Addresses.
   * @param walletID    * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoinaddressWalletID (String walletID, String authorization, String accept, final Response.Listener<WalletAddressDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'walletID' is set
    if (walletID == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoinaddressWalletID",
         new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoinaddressWalletID"));
    }
    

    // create path and map variables
    String path = "/v1/user/wallet/coin/address/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletAddressDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Confirmed Wallet Transactions
  * Gets your Confirmed Wallet Bitcoin Transactions.
   * @param walletID 
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletAddressDataResponse
  */
  public WalletAddressDataResponse v1userwalletcoindepositconfirmedWalletID (String walletID, String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'walletID' is set
      if (walletID == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoindepositconfirmedWalletID",
      new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoindepositconfirmedWalletID"));
      }
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/deposit/confirmed/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletAddressDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Confirmed Wallet Transactions
   * Gets your Confirmed Wallet Bitcoin Transactions.
   * @param walletID    * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoindepositconfirmedWalletID (String walletID, String authorization, String accept, final Response.Listener<WalletAddressDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'walletID' is set
    if (walletID == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoindepositconfirmedWalletID",
         new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoindepositconfirmedWalletID"));
    }
    

    // create path and map variables
    String path = "/v1/user/wallet/coin/deposit/confirmed/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletAddressDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Confirmed Wallet Deposit
  * Gets the total confirmed transactions across all accounts and addresses
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletAddressDataResponse
  */
  public WalletAddressDataResponse v1userwalletcoindepositconfirmedall (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/deposit/confirmed/all".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletAddressDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Confirmed Wallet Deposit
   * Gets the total confirmed transactions across all accounts and addresses
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoindepositconfirmedall (String authorization, String accept, final Response.Listener<WalletAddressDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  

    // create path and map variables
    String path = "/v1/user/wallet/coin/deposit/confirmed/all".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletAddressDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletAddressDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Unconfirmed Transactions in Wallet
  * Gets the unconfirmed transactions on an account/ wallet.
   * @param walletID 
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return void
  */
  public void v1userwalletcoindepositunconfirmedWalletID (String walletID, String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'walletID' is set
      if (walletID == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoindepositunconfirmedWalletID",
      new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoindepositunconfirmedWalletID"));
      }
  
      // verify the required parameter 'authorization' is set
      if (authorization == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1userwalletcoindepositunconfirmedWalletID",
      new ApiException(400, "Missing the required parameter 'authorization' when calling v1userwalletcoindepositunconfirmedWalletID"));
      }
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/deposit/unconfirmed/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return ;
        } else {
           return ;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Unconfirmed Transactions in Wallet
   * Gets the unconfirmed transactions on an account/ wallet.
   * @param walletID    * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoindepositunconfirmedWalletID (String walletID, String authorization, String accept, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'walletID' is set
    if (walletID == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'walletID' when calling v1userwalletcoindepositunconfirmedWalletID",
         new ApiException(400, "Missing the required parameter 'walletID' when calling v1userwalletcoindepositunconfirmedWalletID"));
    }
    
    // verify the required parameter 'authorization' is set
    if (authorization == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1userwalletcoindepositunconfirmedWalletID",
         new ApiException(400, "Missing the required parameter 'authorization' when calling v1userwalletcoindepositunconfirmedWalletID"));
    }
    

    // create path and map variables
    String path = "/v1/user/wallet/coin/deposit/unconfirmed/{walletID}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "walletID" + "\\}", apiInvoker.escapeString(walletID.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * All Unconfirmed Deposits
  * Gets the total unconfirmed transactions across all accounts and addresses
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return void
  */
  public void v1userwalletcoindepositunconfirmedall (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/deposit/unconfirmed/all".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return ;
        } else {
           return ;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * All Unconfirmed Deposits
   * Gets the total unconfirmed transactions across all accounts and addresses
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoindepositunconfirmedall (String authorization, String accept, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  

    // create path and map variables
    String path = "/v1/user/wallet/coin/deposit/unconfirmed/all".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Wallet Details
  * Gets a List of Users Wallets.
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletsDataResponse
  */
  public WalletsDataResponse v1userwalletcoinwallets (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  

  // create path and map variables
  String path = "/v1/user/wallet/coin/wallets".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletsDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletsDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Wallet Details
   * Gets a List of Users Wallets.
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1userwalletcoinwallets (String authorization, String accept, final Response.Listener<WalletsDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  

    // create path and map variables
    String path = "/v1/user/wallet/coin/wallets".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletsDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletsDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Cancelled Coin Withdrawals
  * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletCoinWithdrawDataResponse
  */
  public WalletCoinWithdrawDataResponse v1walletwithdrawcancelled (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'authorization' is set
      if (authorization == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawcancelled",
      new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawcancelled"));
      }
  

  // create path and map variables
  String path = "/v1/wallet/coin/withdraw/cancelled".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletCoinWithdrawDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Cancelled Coin Withdrawals
   * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1walletwithdrawcancelled (String authorization, String accept, final Response.Listener<WalletCoinWithdrawDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'authorization' is set
    if (authorization == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawcancelled",
         new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawcancelled"));
    }
    

    // create path and map variables
    String path = "/v1/wallet/coin/withdraw/cancelled".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletCoinWithdrawDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Completed Coin Withdrawals
  * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletCoinWithdrawDataResponse
  */
  public WalletCoinWithdrawDataResponse v1walletwithdrawcompleted (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'authorization' is set
      if (authorization == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawcompleted",
      new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawcompleted"));
      }
  

  // create path and map variables
  String path = "/v1/wallet/coin/withdraw/completed".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletCoinWithdrawDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Completed Coin Withdrawals
   * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1walletwithdrawcompleted (String authorization, String accept, final Response.Listener<WalletCoinWithdrawDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'authorization' is set
    if (authorization == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawcompleted",
         new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawcompleted"));
    }
    

    // create path and map variables
    String path = "/v1/wallet/coin/withdraw/completed".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletCoinWithdrawDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Unverified Coin Withdrawals
  * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletCoinWithdrawDataResponse
  */
  public WalletCoinWithdrawDataResponse v1walletwithdrawunverified (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'authorization' is set
      if (authorization == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawunverified",
      new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawunverified"));
      }
  

  // create path and map variables
  String path = "/v1/wallet/coin/withdraw/unverified".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletCoinWithdrawDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Unverified Coin Withdrawals
   * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1walletwithdrawunverified (String authorization, String accept, final Response.Listener<WalletCoinWithdrawDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'authorization' is set
    if (authorization == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawunverified",
         new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawunverified"));
    }
    

    // create path and map variables
    String path = "/v1/wallet/coin/withdraw/unverified".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletCoinWithdrawDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Verified Coin Withdrawals
  * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added
   * @param accept JSON, XML or CSV can be returned (Optional)
   * @return WalletCoinWithdrawDataResponse
  */
  public WalletCoinWithdrawDataResponse v1walletwithdrawverified (String authorization, String accept) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
     Object postBody = null;
  
      // verify the required parameter 'authorization' is set
      if (authorization == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawverified",
      new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawverified"));
      }
  

  // create path and map variables
  String path = "/v1/wallet/coin/withdraw/verified".replaceAll("\\{format\\}","json");

  // query params
  List<Pair> queryParams = new ArrayList<Pair>();
      // header params
      Map<String, String> headerParams = new HashMap<String, String>();
      // form params
      Map<String, String> formParams = new HashMap<String, String>();


          headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
          headerParams.put("accept", ApiInvoker.parameterToString(accept));

      String[] contentTypes = {
  "application/json"
      };
      String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

      if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
  

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
      } else {
      // normal form params
        }

      String[] authNames = new String[] {  };

      try {
        String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
        if(localVarResponse != null){
           return (WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse, "", WalletCoinWithdrawDataResponse.class);
        } else {
           return null;
        }
      } catch (ApiException ex) {
         throw ex;
      } catch (InterruptedException ex) {
         throw ex;
      } catch (ExecutionException ex) {
         if(ex.getCause() instanceof VolleyError) {
	    VolleyError volleyError = (VolleyError)ex.getCause();
	    if (volleyError.networkResponse != null) {
	       throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
	    }
         }
         throw ex;
      } catch (TimeoutException ex) {
         throw ex;
      }
  }

      /**
   * Verified Coin Withdrawals
   * Gets a List of Unverified Coin Withdrawals. The value and fees are in satoshis.
   * @param authorization API object to be added   * @param accept JSON, XML or CSV can be returned (Optional)
  */
  public void v1walletwithdrawverified (String authorization, String accept, final Response.Listener<WalletCoinWithdrawDataResponse> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

  
    // verify the required parameter 'authorization' is set
    if (authorization == null) {
       VolleyError error = new VolleyError("Missing the required parameter 'authorization' when calling v1walletwithdrawverified",
         new ApiException(400, "Missing the required parameter 'authorization' when calling v1walletwithdrawverified"));
    }
    

    // create path and map variables
    String path = "/v1/wallet/coin/withdraw/verified".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Authorization", ApiInvoker.parameterToString(authorization));
    headerParams.put("accept", ApiInvoker.parameterToString(accept));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

      String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((WalletCoinWithdrawDataResponse) ApiInvoker.deserialize(localVarResponse,  "", WalletCoinWithdrawDataResponse.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
