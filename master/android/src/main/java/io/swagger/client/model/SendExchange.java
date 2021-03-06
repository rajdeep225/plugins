/**
 * Coinsecure Api Documentation
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: beta
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.swagger.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class SendExchange  {
  
  @SerializedName("amt")
  private Long amt = null;
  @SerializedName("walletID")
  private String walletID = null;
  @SerializedName("msg")
  private String msg = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getAmt() {
    return amt;
  }
  public void setAmt(Long amt) {
    this.amt = amt;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getWalletID() {
    return walletID;
  }
  public void setWalletID(String walletID) {
    this.walletID = walletID;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMsg() {
    return msg;
  }
  public void setMsg(String msg) {
    this.msg = msg;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SendExchange sendExchange = (SendExchange) o;
    return (amt == null ? sendExchange.amt == null : amt.equals(sendExchange.amt)) &&
        (walletID == null ? sendExchange.walletID == null : walletID.equals(sendExchange.walletID)) &&
        (msg == null ? sendExchange.msg == null : msg.equals(sendExchange.msg));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (amt == null ? 0: amt.hashCode());
    result = 31 * result + (walletID == null ? 0: walletID.hashCode());
    result = 31 * result + (msg == null ? 0: msg.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendExchange {\n");
    
    sb.append("  amt: ").append(amt).append("\n");
    sb.append("  walletID: ").append(walletID).append("\n");
    sb.append("  msg: ").append(msg).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
