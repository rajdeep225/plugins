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
public class TimeKYCData  {
  
  @SerializedName("time")
  private Long time = null;
  @SerializedName("updateTime")
  private Long updateTime = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getTime() {
    return time;
  }
  public void setTime(Long time) {
    this.time = time;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Long getUpdateTime() {
    return updateTime;
  }
  public void setUpdateTime(Long updateTime) {
    this.updateTime = updateTime;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TimeKYCData timeKYCData = (TimeKYCData) o;
    return (time == null ? timeKYCData.time == null : time.equals(timeKYCData.time)) &&
        (updateTime == null ? timeKYCData.updateTime == null : updateTime.equals(timeKYCData.updateTime));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (time == null ? 0: time.hashCode());
    result = 31 * result + (updateTime == null ? 0: updateTime.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TimeKYCData {\n");
    
    sb.append("  time: ").append(time).append("\n");
    sb.append("  updateTime: ").append(updateTime).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
