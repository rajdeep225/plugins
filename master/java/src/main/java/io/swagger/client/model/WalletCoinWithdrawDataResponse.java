package io.swagger.client.model;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.client.model.WalletCoinWithdrawData;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * WalletCoinWithdrawDataResponse
 */
@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen", date = "2016-07-17T03:26:03.328Z")
public class WalletCoinWithdrawDataResponse   {
  
  private Boolean success = false;
  private List<WalletCoinWithdrawData> message = new ArrayList<WalletCoinWithdrawData>();
  private String method = null;
  private String title = null;
  private Date time = null;

  
  /**
   * true
   **/
  public WalletCoinWithdrawDataResponse success(Boolean success) {
    this.success = success;
    return this;
  }
  
  @ApiModelProperty(example = "true", required = true, value = "true")
  @JsonProperty("success")
  public Boolean getSuccess() {
    return success;
  }
  public void setSuccess(Boolean success) {
    this.success = success;
  }


  /**
   **/
  public WalletCoinWithdrawDataResponse message(List<WalletCoinWithdrawData> message) {
    this.message = message;
    return this;
  }
  
  @ApiModelProperty(example = "null", required = true, value = "")
  @JsonProperty("message")
  public List<WalletCoinWithdrawData> getMessage() {
    return message;
  }
  public void setMessage(List<WalletCoinWithdrawData> message) {
    this.message = message;
  }


  /**
   **/
  public WalletCoinWithdrawDataResponse method(String method) {
    this.method = method;
    return this;
  }
  
  @ApiModelProperty(example = "null", required = true, value = "")
  @JsonProperty("method")
  public String getMethod() {
    return method;
  }
  public void setMethod(String method) {
    this.method = method;
  }


  /**
   **/
  public WalletCoinWithdrawDataResponse title(String title) {
    this.title = title;
    return this;
  }
  
  @ApiModelProperty(example = "null", required = true, value = "")
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }


  /**
   **/
  public WalletCoinWithdrawDataResponse time(Date time) {
    this.time = time;
    return this;
  }
  
  @ApiModelProperty(example = "null", required = true, value = "")
  @JsonProperty("time")
  public Date getTime() {
    return time;
  }
  public void setTime(Date time) {
    this.time = time;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WalletCoinWithdrawDataResponse walletCoinWithdrawDataResponse = (WalletCoinWithdrawDataResponse) o;
    return Objects.equals(this.success, walletCoinWithdrawDataResponse.success) &&
        Objects.equals(this.message, walletCoinWithdrawDataResponse.message) &&
        Objects.equals(this.method, walletCoinWithdrawDataResponse.method) &&
        Objects.equals(this.title, walletCoinWithdrawDataResponse.title) &&
        Objects.equals(this.time, walletCoinWithdrawDataResponse.time);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, message, method, title, time);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WalletCoinWithdrawDataResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    method: ").append(toIndentedString(method)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
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

