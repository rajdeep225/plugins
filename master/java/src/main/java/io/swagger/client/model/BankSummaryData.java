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
 * BankSummaryData
 */
@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen", date = "2016-08-21T18:38:01.890Z")
public class BankSummaryData   {
  @SerializedName("pendingCoinBalance")
  private Long pendingCoinBalance = null;

  @SerializedName("pendingFiatBalance")
  private Long pendingFiatBalance = null;

  @SerializedName("availableCoinBalance")
  private Long availableCoinBalance = null;

  @SerializedName("availableFiatBalance")
  private Long availableFiatBalance = null;

  @SerializedName("totalCoinBalance")
  private Long totalCoinBalance = null;

  @SerializedName("totalFiatBalance")
  private Long totalFiatBalance = null;

  @SerializedName("coinFeePercentage")
  private Double coinFeePercentage = null;

  @SerializedName("fiatFeePercentage")
  private Double fiatFeePercentage = null;

  @SerializedName("bankLinkStatus")
  private String bankLinkStatus = null;

  @SerializedName("hasTradeNetki")
  private Boolean hasTradeNetki = false;

  @SerializedName("tradeNetkiName")
  private String tradeNetkiName = null;

  @SerializedName("tradeNetkiAddress")
  private String tradeNetkiAddress = null;

  public BankSummaryData pendingCoinBalance(Long pendingCoinBalance) {
    this.pendingCoinBalance = pendingCoinBalance;
    return this;
  }

   /**
   * Get pendingCoinBalance
   * @return pendingCoinBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getPendingCoinBalance() {
    return pendingCoinBalance;
  }

  public void setPendingCoinBalance(Long pendingCoinBalance) {
    this.pendingCoinBalance = pendingCoinBalance;
  }

  public BankSummaryData pendingFiatBalance(Long pendingFiatBalance) {
    this.pendingFiatBalance = pendingFiatBalance;
    return this;
  }

   /**
   * Get pendingFiatBalance
   * @return pendingFiatBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getPendingFiatBalance() {
    return pendingFiatBalance;
  }

  public void setPendingFiatBalance(Long pendingFiatBalance) {
    this.pendingFiatBalance = pendingFiatBalance;
  }

  public BankSummaryData availableCoinBalance(Long availableCoinBalance) {
    this.availableCoinBalance = availableCoinBalance;
    return this;
  }

   /**
   * Get availableCoinBalance
   * @return availableCoinBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getAvailableCoinBalance() {
    return availableCoinBalance;
  }

  public void setAvailableCoinBalance(Long availableCoinBalance) {
    this.availableCoinBalance = availableCoinBalance;
  }

  public BankSummaryData availableFiatBalance(Long availableFiatBalance) {
    this.availableFiatBalance = availableFiatBalance;
    return this;
  }

   /**
   * Get availableFiatBalance
   * @return availableFiatBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getAvailableFiatBalance() {
    return availableFiatBalance;
  }

  public void setAvailableFiatBalance(Long availableFiatBalance) {
    this.availableFiatBalance = availableFiatBalance;
  }

  public BankSummaryData totalCoinBalance(Long totalCoinBalance) {
    this.totalCoinBalance = totalCoinBalance;
    return this;
  }

   /**
   * Get totalCoinBalance
   * @return totalCoinBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getTotalCoinBalance() {
    return totalCoinBalance;
  }

  public void setTotalCoinBalance(Long totalCoinBalance) {
    this.totalCoinBalance = totalCoinBalance;
  }

  public BankSummaryData totalFiatBalance(Long totalFiatBalance) {
    this.totalFiatBalance = totalFiatBalance;
    return this;
  }

   /**
   * Get totalFiatBalance
   * @return totalFiatBalance
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Long getTotalFiatBalance() {
    return totalFiatBalance;
  }

  public void setTotalFiatBalance(Long totalFiatBalance) {
    this.totalFiatBalance = totalFiatBalance;
  }

  public BankSummaryData coinFeePercentage(Double coinFeePercentage) {
    this.coinFeePercentage = coinFeePercentage;
    return this;
  }

   /**
   * Get coinFeePercentage
   * @return coinFeePercentage
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Double getCoinFeePercentage() {
    return coinFeePercentage;
  }

  public void setCoinFeePercentage(Double coinFeePercentage) {
    this.coinFeePercentage = coinFeePercentage;
  }

  public BankSummaryData fiatFeePercentage(Double fiatFeePercentage) {
    this.fiatFeePercentage = fiatFeePercentage;
    return this;
  }

   /**
   * Get fiatFeePercentage
   * @return fiatFeePercentage
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Double getFiatFeePercentage() {
    return fiatFeePercentage;
  }

  public void setFiatFeePercentage(Double fiatFeePercentage) {
    this.fiatFeePercentage = fiatFeePercentage;
  }

  public BankSummaryData bankLinkStatus(String bankLinkStatus) {
    this.bankLinkStatus = bankLinkStatus;
    return this;
  }

   /**
   * Get bankLinkStatus
   * @return bankLinkStatus
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getBankLinkStatus() {
    return bankLinkStatus;
  }

  public void setBankLinkStatus(String bankLinkStatus) {
    this.bankLinkStatus = bankLinkStatus;
  }

  public BankSummaryData hasTradeNetki(Boolean hasTradeNetki) {
    this.hasTradeNetki = hasTradeNetki;
    return this;
  }

   /**
   * Get hasTradeNetki
   * @return hasTradeNetki
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public Boolean getHasTradeNetki() {
    return hasTradeNetki;
  }

  public void setHasTradeNetki(Boolean hasTradeNetki) {
    this.hasTradeNetki = hasTradeNetki;
  }

  public BankSummaryData tradeNetkiName(String tradeNetkiName) {
    this.tradeNetkiName = tradeNetkiName;
    return this;
  }

   /**
   * Get tradeNetkiName
   * @return tradeNetkiName
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getTradeNetkiName() {
    return tradeNetkiName;
  }

  public void setTradeNetkiName(String tradeNetkiName) {
    this.tradeNetkiName = tradeNetkiName;
  }

  public BankSummaryData tradeNetkiAddress(String tradeNetkiAddress) {
    this.tradeNetkiAddress = tradeNetkiAddress;
    return this;
  }

   /**
   * Get tradeNetkiAddress
   * @return tradeNetkiAddress
  **/
  @ApiModelProperty(example = "null", required = true, value = "")
  public String getTradeNetkiAddress() {
    return tradeNetkiAddress;
  }

  public void setTradeNetkiAddress(String tradeNetkiAddress) {
    this.tradeNetkiAddress = tradeNetkiAddress;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BankSummaryData bankSummaryData = (BankSummaryData) o;
    return Objects.equals(this.pendingCoinBalance, bankSummaryData.pendingCoinBalance) &&
        Objects.equals(this.pendingFiatBalance, bankSummaryData.pendingFiatBalance) &&
        Objects.equals(this.availableCoinBalance, bankSummaryData.availableCoinBalance) &&
        Objects.equals(this.availableFiatBalance, bankSummaryData.availableFiatBalance) &&
        Objects.equals(this.totalCoinBalance, bankSummaryData.totalCoinBalance) &&
        Objects.equals(this.totalFiatBalance, bankSummaryData.totalFiatBalance) &&
        Objects.equals(this.coinFeePercentage, bankSummaryData.coinFeePercentage) &&
        Objects.equals(this.fiatFeePercentage, bankSummaryData.fiatFeePercentage) &&
        Objects.equals(this.bankLinkStatus, bankSummaryData.bankLinkStatus) &&
        Objects.equals(this.hasTradeNetki, bankSummaryData.hasTradeNetki) &&
        Objects.equals(this.tradeNetkiName, bankSummaryData.tradeNetkiName) &&
        Objects.equals(this.tradeNetkiAddress, bankSummaryData.tradeNetkiAddress);
  }

  @Override
  public int hashCode() {
    return Objects.hash(pendingCoinBalance, pendingFiatBalance, availableCoinBalance, availableFiatBalance, totalCoinBalance, totalFiatBalance, coinFeePercentage, fiatFeePercentage, bankLinkStatus, hasTradeNetki, tradeNetkiName, tradeNetkiAddress);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BankSummaryData {\n");
    
    sb.append("    pendingCoinBalance: ").append(toIndentedString(pendingCoinBalance)).append("\n");
    sb.append("    pendingFiatBalance: ").append(toIndentedString(pendingFiatBalance)).append("\n");
    sb.append("    availableCoinBalance: ").append(toIndentedString(availableCoinBalance)).append("\n");
    sb.append("    availableFiatBalance: ").append(toIndentedString(availableFiatBalance)).append("\n");
    sb.append("    totalCoinBalance: ").append(toIndentedString(totalCoinBalance)).append("\n");
    sb.append("    totalFiatBalance: ").append(toIndentedString(totalFiatBalance)).append("\n");
    sb.append("    coinFeePercentage: ").append(toIndentedString(coinFeePercentage)).append("\n");
    sb.append("    fiatFeePercentage: ").append(toIndentedString(fiatFeePercentage)).append("\n");
    sb.append("    bankLinkStatus: ").append(toIndentedString(bankLinkStatus)).append("\n");
    sb.append("    hasTradeNetki: ").append(toIndentedString(hasTradeNetki)).append("\n");
    sb.append("    tradeNetkiName: ").append(toIndentedString(tradeNetkiName)).append("\n");
    sb.append("    tradeNetkiAddress: ").append(toIndentedString(tradeNetkiAddress)).append("\n");
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

