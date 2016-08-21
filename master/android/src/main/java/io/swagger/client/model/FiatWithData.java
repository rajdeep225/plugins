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

import io.swagger.client.model.TimeDataCoin;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class FiatWithData  {
  
  @SerializedName("timeDetails")
  private TimeDataCoin timeDetails = null;
  @SerializedName("withdrawID")
  private String withdrawID = null;
  @SerializedName("value")
  private Long value = null;
  @SerializedName("account")
  private String account = null;
  @SerializedName("reason")
  private String reason = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public TimeDataCoin getTimeDetails() {
    return timeDetails;
  }
  public void setTimeDetails(TimeDataCoin timeDetails) {
    this.timeDetails = timeDetails;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getWithdrawID() {
    return withdrawID;
  }
  public void setWithdrawID(String withdrawID) {
    this.withdrawID = withdrawID;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getValue() {
    return value;
  }
  public void setValue(Long value) {
    this.value = value;
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
  @ApiModelProperty(required = true, value = "")
  public String getReason() {
    return reason;
  }
  public void setReason(String reason) {
    this.reason = reason;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FiatWithData fiatWithData = (FiatWithData) o;
    return (timeDetails == null ? fiatWithData.timeDetails == null : timeDetails.equals(fiatWithData.timeDetails)) &&
        (withdrawID == null ? fiatWithData.withdrawID == null : withdrawID.equals(fiatWithData.withdrawID)) &&
        (value == null ? fiatWithData.value == null : value.equals(fiatWithData.value)) &&
        (account == null ? fiatWithData.account == null : account.equals(fiatWithData.account)) &&
        (reason == null ? fiatWithData.reason == null : reason.equals(fiatWithData.reason));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (timeDetails == null ? 0: timeDetails.hashCode());
    result = 31 * result + (withdrawID == null ? 0: withdrawID.hashCode());
    result = 31 * result + (value == null ? 0: value.hashCode());
    result = 31 * result + (account == null ? 0: account.hashCode());
    result = 31 * result + (reason == null ? 0: reason.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FiatWithData {\n");
    
    sb.append("  timeDetails: ").append(timeDetails).append("\n");
    sb.append("  withdrawID: ").append(withdrawID).append("\n");
    sb.append("  value: ").append(value).append("\n");
    sb.append("  account: ").append(account).append("\n");
    sb.append("  reason: ").append(reason).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
