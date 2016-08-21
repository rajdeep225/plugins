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

import java.util.Objects;
import com.google.gson.annotations.SerializedName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


/**
 * WalletsData
 */
@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen", date = "2016-08-21T18:38:01.890Z")
public class WalletsData   {
  @SerializedName("walletID")
  private String walletID = null;

  @SerializedName("name")
  private String name = null;

  @SerializedName("coinBalance")
  private Long coinBalance = null;

  @SerializedName("time")
  private Long time = null;

  @SerializedName("info")
  private String info = null;

  @SerializedName("netki")
  private String netki = null;

  public WalletsData walletID(String walletID) {
    this.walletID = walletID;
    return this;
  }

   /**
   * Get walletID
   * @return walletID
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getWalletID() {
    return walletID;
  }

  public void setWalletID(String walletID) {
    this.walletID = walletID;
  }

  public WalletsData name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public WalletsData coinBalance(Long coinBalance) {
    this.coinBalance = coinBalance;
    return this;
  }

   /**
   * Get coinBalance
   * @return coinBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getCoinBalance() {
    return coinBalance;
  }

  public void setCoinBalance(Long coinBalance) {
    this.coinBalance = coinBalance;
  }

  public WalletsData time(Long time) {
    this.time = time;
    return this;
  }

   /**
   * Get time
   * @return time
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getTime() {
    return time;
  }

  public void setTime(Long time) {
    this.time = time;
  }

  public WalletsData info(String info) {
    this.info = info;
    return this;
  }

   /**
   * Get info
   * @return info
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }

  public WalletsData netki(String netki) {
    this.netki = netki;
    return this;
  }

   /**
   * Get netki
   * @return netki
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getNetki() {
    return netki;
  }

  public void setNetki(String netki) {
    this.netki = netki;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WalletsData walletsData = (WalletsData) o;
    return Objects.equals(this.walletID, walletsData.walletID) &&
        Objects.equals(this.name, walletsData.name) &&
        Objects.equals(this.coinBalance, walletsData.coinBalance) &&
        Objects.equals(this.time, walletsData.time) &&
        Objects.equals(this.info, walletsData.info) &&
        Objects.equals(this.netki, walletsData.netki);
  }

  @Override
  public int hashCode() {
    return Objects.hash(walletID, name, coinBalance, time, info, netki);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WalletsData {\n");
    
    sb.append("    walletID: ").append(toIndentedString(walletID)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    coinBalance: ").append(toIndentedString(coinBalance)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    info: ").append(toIndentedString(info)).append("\n");
    sb.append("    netki: ").append(toIndentedString(netki)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

