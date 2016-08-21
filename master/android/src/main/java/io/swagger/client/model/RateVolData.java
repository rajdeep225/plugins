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
public class RateVolData  {
  
  @SerializedName("rate")
  private Long rate = null;
  @SerializedName("vol")
  private Long vol = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getRate() {
    return rate;
  }
  public void setRate(Long rate) {
    this.rate = rate;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getVol() {
    return vol;
  }
  public void setVol(Long vol) {
    this.vol = vol;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RateVolData rateVolData = (RateVolData) o;
    return (rate == null ? rateVolData.rate == null : rate.equals(rateVolData.rate)) &&
        (vol == null ? rateVolData.vol == null : vol.equals(rateVolData.vol));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (rate == null ? 0: rate.hashCode());
    result = 31 * result + (vol == null ? 0: vol.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RateVolData {\n");
    
    sb.append("  rate: ").append(rate).append("\n");
    sb.append("  vol: ").append(vol).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
