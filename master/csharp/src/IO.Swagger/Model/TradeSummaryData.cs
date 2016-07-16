/* 
 * Coinsecure Api Documentation
 *
 * To generate an API key, please visit <a href='https://coinsecure.in/api' target='_new' class='homeapi'>https://coinsecure.in/api</a>.<br>Guidelines for use can be accessed at <a href='https://api.coinsecure.in/v1/guidelines'>https://api.coinsecure.in/v1/guidelines</a>.<br>Programming Language Libraries for use can be accessed at <a href='https://api.coinsecure.in/v1/code-libraries'>https://api.coinsecure.in/v1/code-libraries</a>.
 *
 * OpenAPI spec version: 1.0b
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
    /// TradeSummaryData
    /// </summary>
    [DataContract]
    public partial class TradeSummaryData :  IEquatable<TradeSummaryData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TradeSummaryData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected TradeSummaryData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="TradeSummaryData" /> class.
        /// </summary>
        /// <param name="CompletedAsksSum">CompletedAsksSum (required).</param>
        /// <param name="CompletedBidsSum">CompletedBidsSum (required).</param>
        /// <param name="CompletedAsksCount">CompletedAsksCount (required).</param>
        /// <param name="CompletedBidsCount">CompletedBidsCount (required).</param>
        /// <param name="PendingAsksCount">PendingAsksCount (required).</param>
        /// <param name="PendingBidsCount">PendingBidsCount (required).</param>
        public TradeSummaryData(long? CompletedAsksSum = null, long? CompletedBidsSum = null, long? CompletedAsksCount = null, long? CompletedBidsCount = null, long? PendingAsksCount = null, long? PendingBidsCount = null)
        {
            // to ensure "CompletedAsksSum" is required (not null)
            if (CompletedAsksSum == null)
            {
                throw new InvalidDataException("CompletedAsksSum is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.CompletedAsksSum = CompletedAsksSum;
            }
            // to ensure "CompletedBidsSum" is required (not null)
            if (CompletedBidsSum == null)
            {
                throw new InvalidDataException("CompletedBidsSum is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.CompletedBidsSum = CompletedBidsSum;
            }
            // to ensure "CompletedAsksCount" is required (not null)
            if (CompletedAsksCount == null)
            {
                throw new InvalidDataException("CompletedAsksCount is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.CompletedAsksCount = CompletedAsksCount;
            }
            // to ensure "CompletedBidsCount" is required (not null)
            if (CompletedBidsCount == null)
            {
                throw new InvalidDataException("CompletedBidsCount is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.CompletedBidsCount = CompletedBidsCount;
            }
            // to ensure "PendingAsksCount" is required (not null)
            if (PendingAsksCount == null)
            {
                throw new InvalidDataException("PendingAsksCount is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.PendingAsksCount = PendingAsksCount;
            }
            // to ensure "PendingBidsCount" is required (not null)
            if (PendingBidsCount == null)
            {
                throw new InvalidDataException("PendingBidsCount is a required property for TradeSummaryData and cannot be null");
            }
            else
            {
                this.PendingBidsCount = PendingBidsCount;
            }
        }
        
        /// <summary>
        /// Gets or Sets CompletedAsksSum
        /// </summary>
        [DataMember(Name="completedAsksSum", EmitDefaultValue=false)]
        public long? CompletedAsksSum { get; set; }
        /// <summary>
        /// Gets or Sets CompletedBidsSum
        /// </summary>
        [DataMember(Name="completedBidsSum", EmitDefaultValue=false)]
        public long? CompletedBidsSum { get; set; }
        /// <summary>
        /// Gets or Sets CompletedAsksCount
        /// </summary>
        [DataMember(Name="completedAsksCount", EmitDefaultValue=false)]
        public long? CompletedAsksCount { get; set; }
        /// <summary>
        /// Gets or Sets CompletedBidsCount
        /// </summary>
        [DataMember(Name="completedBidsCount", EmitDefaultValue=false)]
        public long? CompletedBidsCount { get; set; }
        /// <summary>
        /// Gets or Sets PendingAsksCount
        /// </summary>
        [DataMember(Name="pendingAsksCount", EmitDefaultValue=false)]
        public long? PendingAsksCount { get; set; }
        /// <summary>
        /// Gets or Sets PendingBidsCount
        /// </summary>
        [DataMember(Name="pendingBidsCount", EmitDefaultValue=false)]
        public long? PendingBidsCount { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class TradeSummaryData {\n");
            sb.Append("  CompletedAsksSum: ").Append(CompletedAsksSum).Append("\n");
            sb.Append("  CompletedBidsSum: ").Append(CompletedBidsSum).Append("\n");
            sb.Append("  CompletedAsksCount: ").Append(CompletedAsksCount).Append("\n");
            sb.Append("  CompletedBidsCount: ").Append(CompletedBidsCount).Append("\n");
            sb.Append("  PendingAsksCount: ").Append(PendingAsksCount).Append("\n");
            sb.Append("  PendingBidsCount: ").Append(PendingBidsCount).Append("\n");
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
            return this.Equals(obj as TradeSummaryData);
        }

        /// <summary>
        /// Returns true if TradeSummaryData instances are equal
        /// </summary>
        /// <param name="other">Instance of TradeSummaryData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(TradeSummaryData other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.CompletedAsksSum == other.CompletedAsksSum ||
                    this.CompletedAsksSum != null &&
                    this.CompletedAsksSum.Equals(other.CompletedAsksSum)
                ) && 
                (
                    this.CompletedBidsSum == other.CompletedBidsSum ||
                    this.CompletedBidsSum != null &&
                    this.CompletedBidsSum.Equals(other.CompletedBidsSum)
                ) && 
                (
                    this.CompletedAsksCount == other.CompletedAsksCount ||
                    this.CompletedAsksCount != null &&
                    this.CompletedAsksCount.Equals(other.CompletedAsksCount)
                ) && 
                (
                    this.CompletedBidsCount == other.CompletedBidsCount ||
                    this.CompletedBidsCount != null &&
                    this.CompletedBidsCount.Equals(other.CompletedBidsCount)
                ) && 
                (
                    this.PendingAsksCount == other.PendingAsksCount ||
                    this.PendingAsksCount != null &&
                    this.PendingAsksCount.Equals(other.PendingAsksCount)
                ) && 
                (
                    this.PendingBidsCount == other.PendingBidsCount ||
                    this.PendingBidsCount != null &&
                    this.PendingBidsCount.Equals(other.PendingBidsCount)
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
                if (this.CompletedAsksSum != null)
                    hash = hash * 59 + this.CompletedAsksSum.GetHashCode();
                if (this.CompletedBidsSum != null)
                    hash = hash * 59 + this.CompletedBidsSum.GetHashCode();
                if (this.CompletedAsksCount != null)
                    hash = hash * 59 + this.CompletedAsksCount.GetHashCode();
                if (this.CompletedBidsCount != null)
                    hash = hash * 59 + this.CompletedBidsCount.GetHashCode();
                if (this.PendingAsksCount != null)
                    hash = hash * 59 + this.PendingAsksCount.GetHashCode();
                if (this.PendingBidsCount != null)
                    hash = hash * 59 + this.PendingBidsCount.GetHashCode();
                return hash;
            }
        }
    }

}