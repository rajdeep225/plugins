/* 
 * Coinsecure Api Documentation
 *
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: beta
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace IO.Swagger.Model
{
    /// <summary>
    /// TimeKYCData
    /// </summary>
    [DataContract]
    public partial class TimeKYCData :  IEquatable<TimeKYCData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TimeKYCData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected TimeKYCData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="TimeKYCData" /> class.
        /// </summary>
        /// <param name="Time">Time (required).</param>
        /// <param name="UpdateTime">UpdateTime (required).</param>
        public TimeKYCData(long? Time = null, long? UpdateTime = null)
        {
            // to ensure "Time" is required (not null)
            if (Time == null)
            {
                throw new InvalidDataException("Time is a required property for TimeKYCData and cannot be null");
            }
            else
            {
                this.Time = Time;
            }
            // to ensure "UpdateTime" is required (not null)
            if (UpdateTime == null)
            {
                throw new InvalidDataException("UpdateTime is a required property for TimeKYCData and cannot be null");
            }
            else
            {
                this.UpdateTime = UpdateTime;
            }
        }
        
        /// <summary>
        /// Gets or Sets Time
        /// </summary>
        [DataMember(Name="time", EmitDefaultValue=false)]
        public long? Time { get; set; }
        /// <summary>
        /// Gets or Sets UpdateTime
        /// </summary>
        [DataMember(Name="updateTime", EmitDefaultValue=false)]
        public long? UpdateTime { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class TimeKYCData {\n");
            sb.Append("  Time: ").Append(Time).Append("\n");
            sb.Append("  UpdateTime: ").Append(UpdateTime).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as TimeKYCData);
        }

        /// <summary>
        /// Returns true if TimeKYCData instances are equal
        /// </summary>
        /// <param name="other">Instance of TimeKYCData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(TimeKYCData other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Time == other.Time ||
                    this.Time != null &&
                    this.Time.Equals(other.Time)
                ) && 
                (
                    this.UpdateTime == other.UpdateTime ||
                    this.UpdateTime != null &&
                    this.UpdateTime.Equals(other.UpdateTime)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.Time != null)
                    hash = hash * 59 + this.Time.GetHashCode();
                if (this.UpdateTime != null)
                    hash = hash * 59 + this.UpdateTime.GetHashCode();
                return hash;
            }
        }
    }

}
