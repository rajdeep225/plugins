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
 * NewBankForm
 */
@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen", date = "2016-08-21T18:38:01.890Z")
public class NewBankForm   {
  @SerializedName("acct_nick")
  private String acctNick = null;

  @SerializedName("name")
  private String name = null;

  @SerializedName("ban")
  private String ban = null;

  @SerializedName("ifsc")
  private String ifsc = null;

  @SerializedName("message")
  private String message = null;

  @SerializedName("banType")
  private String banType = null;

  @SerializedName("phone")
  private String phone = null;

  @SerializedName("otp")
  private String otp = null;

  public NewBankForm acctNick(String acctNick) {
    this.acctNick = acctNick;
    return this;
  }

   /**
   * Get acctNick
   * @return acctNick
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getAcctNick() {
    return acctNick;
  }

  public void setAcctNick(String acctNick) {
    this.acctNick = acctNick;
  }

  public NewBankForm name(String name) {
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

  public NewBankForm ban(String ban) {
    this.ban = ban;
    return this;
  }

   /**
   * Get ban
   * @return ban
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getBan() {
    return ban;
  }

  public void setBan(String ban) {
    this.ban = ban;
  }

  public NewBankForm ifsc(String ifsc) {
    this.ifsc = ifsc;
    return this;
  }

   /**
   * Get ifsc
   * @return ifsc
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getIfsc() {
    return ifsc;
  }

  public void setIfsc(String ifsc) {
    this.ifsc = ifsc;
  }

  public NewBankForm message(String message) {
    this.message = message;
    return this;
  }

   /**
   * Get message
   * @return message
  **/
  @ApiModelProperty(example = "null", value = "")
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public NewBankForm banType(String banType) {
    this.banType = banType;
    return this;
  }

   /**
   * Get banType
   * @return banType
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getBanType() {
    return banType;
  }

  public void setBanType(String banType) {
    this.banType = banType;
  }

  public NewBankForm phone(String phone) {
    this.phone = phone;
    return this;
  }

   /**
   * Get phone
   * @return phone
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public NewBankForm otp(String otp) {
    this.otp = otp;
    return this;
  }

   /**
   * Get otp
   * @return otp
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getOtp() {
    return otp;
  }

  public void setOtp(String otp) {
    this.otp = otp;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NewBankForm newBankForm = (NewBankForm) o;
    return Objects.equals(this.acctNick, newBankForm.acctNick) &&
        Objects.equals(this.name, newBankForm.name) &&
        Objects.equals(this.ban, newBankForm.ban) &&
        Objects.equals(this.ifsc, newBankForm.ifsc) &&
        Objects.equals(this.message, newBankForm.message) &&
        Objects.equals(this.banType, newBankForm.banType) &&
        Objects.equals(this.phone, newBankForm.phone) &&
        Objects.equals(this.otp, newBankForm.otp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(acctNick, name, ban, ifsc, message, banType, phone, otp);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NewBankForm {\n");
    
    sb.append("    acctNick: ").append(toIndentedString(acctNick)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ban: ").append(toIndentedString(ban)).append("\n");
    sb.append("    ifsc: ").append(toIndentedString(ifsc)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    banType: ").append(toIndentedString(banType)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    otp: ").append(toIndentedString(otp)).append("\n");
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

