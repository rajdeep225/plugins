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
    /// OrderData
    /// </summary>
    [DataContract]
    public partial class OrderData :  IEquatable<OrderData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrderData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderData" /> class.
        /// </summary>
        /// <param name="Time">Time (required).</param>
        /// <param name="Rate">Rate (required).</param>
        /// <param name="Vol">Vol (required).</param>
        /// <param name="OrderID">OrderID (required).</param>
        /// <param name="Status">Status (required).</param>
        public OrderData(long? Time = null, long? Rate = null, long? Vol = null, string OrderID = null, string Status = null)
        {
            // to ensure "Time" is required (not null)
            if (Time == null)
            {
                throw new InvalidDataException("Time is a required property for OrderData and cannot be null");
            }
            else
            {
                this.Time = Time;
            }
            // to ensure "Rate" is required (not null)
            if (Rate == null)
            {
                throw new InvalidDataException("Rate is a required property for OrderData and cannot be null");
            }
            else
            {
                this.Rate = Rate;
            }
            // to ensure "Vol" is required (not null)
            if (Vol == null)
            {
                throw new InvalidDataException("Vol is a required property for OrderData and cannot be null");
            }
            else
            {
                this.Vol = Vol;
            }
            // to ensure "OrderID" is required (not null)
            if (OrderID == null)
            {
                throw new InvalidDataException("OrderID is a required property for OrderData and cannot be null");
            }
            else
            {
                this.OrderID = OrderID;
            }
            // to ensure "Status" is required (not null)
            if (Status == null)
            {
                throw new InvalidDataException("Status is a required property for OrderData and cannot be null");
            }
            else
            {
                this.Status = Status;
            }
        }
        
        /// <summary>
        /// Gets or Sets Time
        /// </summary>
        [DataMember(Name="time", EmitDefaultValue=false)]
        public long? Time { get; set; }
        /// <summary>
        /// Gets or Sets Rate
        /// </summary>
        [DataMember(Name="rate", EmitDefaultValue=false)]
        public long? Rate { get; set; }
        /// <summary>
        /// Gets or Sets Vol
        /// </summary>
        [DataMember(Name="vol", EmitDefaultValue=false)]
        public long? Vol { get; set; }
        /// <summary>
        /// Gets or Sets OrderID
        /// </summary>
        [DataMember(Name="orderID", EmitDefaultValue=false)]
        public string OrderID { get; set; }
        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name="status", EmitDefaultValue=false)]
        public string Status { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OrderData {\n");
            sb.Append("  Time: ").Append(Time).Append("\n");
            sb.Append("  Rate: ").Append(Rate).Append("\n");
            sb.Append("  Vol: ").Append(Vol).Append("\n");
            sb.Append("  OrderID: ").Append(OrderID).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
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
            return this.Equals(obj as OrderData);
        }

        /// <summary>
        /// Returns true if OrderData instances are equal
        /// </summary>
        /// <param name="other">Instance of OrderData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrderData other)
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
                    this.Rate == other.Rate ||
                    this.Rate != null &&
                    this.Rate.Equals(other.Rate)
                ) && 
                (
                    this.Vol == other.Vol ||
                    this.Vol != null &&
                    this.Vol.Equals(other.Vol)
                ) && 
                (
                    this.OrderID == other.OrderID ||
                    this.OrderID != null &&
                    this.OrderID.Equals(other.OrderID)
                ) && 
                (
                    this.Status == other.Status ||
                    this.Status != null &&
                    this.Status.Equals(other.Status)
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
                if (this.Rate != null)
                    hash = hash * 59 + this.Rate.GetHashCode();
                if (this.Vol != null)
                    hash = hash * 59 + this.Vol.GetHashCode();
                if (this.OrderID != null)
                    hash = hash * 59 + this.OrderID.GetHashCode();
                if (this.Status != null)
                    hash = hash * 59 + this.Status.GetHashCode();
                return hash;
            }
        }
    }

}
