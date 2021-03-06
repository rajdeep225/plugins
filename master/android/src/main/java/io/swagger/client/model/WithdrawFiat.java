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
public class WithdrawFiat  {
  
  @SerializedName("fiat")
  private Long fiat = null;
  @SerializedName("account")
  private String account = null;
  @SerializedName("msg")
  private String msg = null;
  @SerializedName("pin")
  private String pin = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getFiat() {
    return fiat;
  }
  public void setFiat(Long fiat) {
    this.fiat = fiat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAccount() {
    return account;
  }
  public void setAccount(String account) {
    this.account = account;
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

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPin() {
    return pin;
  }
  public void setPin(String pin) {
    this.pin = pin;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WithdrawFiat withdrawFiat = (WithdrawFiat) o;
    return (fiat == null ? withdrawFiat.fiat == null : fiat.equals(withdrawFiat.fiat)) &&
        (account == null ? withdrawFiat.account == null : account.equals(withdrawFiat.account)) &&
        (msg == null ? withdrawFiat.msg == null : msg.equals(withdrawFiat.msg)) &&
        (pin == null ? withdrawFiat.pin == null : pin.equals(withdrawFiat.pin));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (fiat == null ? 0: fiat.hashCode());
    result = 31 * result + (account == null ? 0: account.hashCode());
    result = 31 * result + (msg == null ? 0: msg.hashCode());
    result = 31 * result + (pin == null ? 0: pin.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WithdrawFiat {\n");
    
    sb.append("  fiat: ").append(fiat).append("\n");
    sb.append("  account: ").append(account).append("\n");
    sb.append("  msg: ").append(msg).append("\n");
    sb.append("  pin: ").append(pin).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
