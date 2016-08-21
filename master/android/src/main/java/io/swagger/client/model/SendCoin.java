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
public class SendCoin  {
  
  @SerializedName("satoshis")
  private Long satoshis = null;
  @SerializedName("toAddr")
  private String toAddr = null;
  @SerializedName("msg")
  private String msg = null;
  @SerializedName("pin")
  private String pin = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getSatoshis() {
    return satoshis;
  }
  public void setSatoshis(Long satoshis) {
    this.satoshis = satoshis;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getToAddr() {
    return toAddr;
  }
  public void setToAddr(String toAddr) {
    this.toAddr = toAddr;
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
    SendCoin sendCoin = (SendCoin) o;
    return (satoshis == null ? sendCoin.satoshis == null : satoshis.equals(sendCoin.satoshis)) &&
        (toAddr == null ? sendCoin.toAddr == null : toAddr.equals(sendCoin.toAddr)) &&
        (msg == null ? sendCoin.msg == null : msg.equals(sendCoin.msg)) &&
        (pin == null ? sendCoin.pin == null : pin.equals(sendCoin.pin));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (satoshis == null ? 0: satoshis.hashCode());
    result = 31 * result + (toAddr == null ? 0: toAddr.hashCode());
    result = 31 * result + (msg == null ? 0: msg.hashCode());
    result = 31 * result + (pin == null ? 0: pin.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendCoin {\n");
    
    sb.append("  satoshis: ").append(satoshis).append("\n");
    sb.append("  toAddr: ").append(toAddr).append("\n");
    sb.append("  msg: ").append(msg).append("\n");
    sb.append("  pin: ").append(pin).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
