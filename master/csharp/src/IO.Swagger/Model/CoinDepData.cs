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
    /// CoinDepData
    /// </summary>
    [DataContract]
    public partial class CoinDepData :  IEquatable<CoinDepData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CoinDepData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected CoinDepData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="CoinDepData" /> class.
        /// </summary>
        /// <param name="TimeDetails">TimeDetails (required).</param>
        /// <param name="Address">Address (required).</param>
        /// <param name="Value">Value (required).</param>
        /// <param name="TxHash">TxHash (required).</param>
        /// <param name="DepositID">DepositID (required).</param>
        /// <param name="Reason">Reason (required).</param>
        public CoinDepData(TimeDataCoin TimeDetails = null, string Address = null, long? Value = null, string TxHash = null, string DepositID = null, string Reason = null)
        {
            // to ensure "TimeDetails" is required (not null)
            if (TimeDetails == null)
            {
                throw new InvalidDataException("TimeDetails is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.TimeDetails = TimeDetails;
            }
            // to ensure "Address" is required (not null)
            if (Address == null)
            {
                throw new InvalidDataException("Address is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.Address = Address;
            }
            // to ensure "Value" is required (not null)
            if (Value == null)
            {
                throw new InvalidDataException("Value is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.Value = Value;
            }
            // to ensure "TxHash" is required (not null)
            if (TxHash == null)
            {
                throw new InvalidDataException("TxHash is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.TxHash = TxHash;
            }
            // to ensure "DepositID" is required (not null)
            if (DepositID == null)
            {
                throw new InvalidDataException("DepositID is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.DepositID = DepositID;
            }
            // to ensure "Reason" is required (not null)
            if (Reason == null)
            {
                throw new InvalidDataException("Reason is a required property for CoinDepData and cannot be null");
            }
            else
            {
                this.Reason = Reason;
            }
        }
        
        /// <summary>
        /// Gets or Sets TimeDetails
        /// </summary>
        [DataMember(Name="timeDetails", EmitDefaultValue=false)]
        public TimeDataCoin TimeDetails { get; set; }
        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name="address", EmitDefaultValue=false)]
        public string Address { get; set; }
        /// <summary>
        /// Gets or Sets Value
        /// </summary>
        [DataMember(Name="value", EmitDefaultValue=false)]
        public long? Value { get; set; }
        /// <summary>
        /// Gets or Sets TxHash
        /// </summary>
        [DataMember(Name="txHash", EmitDefaultValue=false)]
        public string TxHash { get; set; }
        /// <summary>
        /// Gets or Sets DepositID
        /// </summary>
        [DataMember(Name="depositID", EmitDefaultValue=false)]
        public string DepositID { get; set; }
        /// <summary>
        /// Gets or Sets Reason
        /// </summary>
        [DataMember(Name="reason", EmitDefaultValue=false)]
        public string Reason { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CoinDepData {\n");
            sb.Append("  TimeDetails: ").Append(TimeDetails).Append("\n");
            sb.Append("  Address: ").Append(Address).Append("\n");
            sb.Append("  Value: ").Append(Value).Append("\n");
            sb.Append("  TxHash: ").Append(TxHash).Append("\n");
            sb.Append("  DepositID: ").Append(DepositID).Append("\n");
            sb.Append("  Reason: ").Append(Reason).Append("\n");
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
            return this.Equals(obj as CoinDepData);
        }

        /// <summary>
        /// Returns true if CoinDepData instances are equal
        /// </summary>
        /// <param name="other">Instance of CoinDepData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CoinDepData other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.TimeDetails == other.TimeDetails ||
                    this.TimeDetails != null &&
                    this.TimeDetails.Equals(other.TimeDetails)
                ) && 
                (
                    this.Address == other.Address ||
                    this.Address != null &&
                    this.Address.Equals(other.Address)
                ) && 
                (
                    this.Value == other.Value ||
                    this.Value != null &&
                    this.Value.Equals(other.Value)
                ) && 
                (
                    this.TxHash == other.TxHash ||
                    this.TxHash != null &&
                    this.TxHash.Equals(other.TxHash)
                ) && 
                (
                    this.DepositID == other.DepositID ||
                    this.DepositID != null &&
                    this.DepositID.Equals(other.DepositID)
                ) && 
                (
                    this.Reason == other.Reason ||
                    this.Reason != null &&
                    this.Reason.Equals(other.Reason)
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
                if (this.TimeDetails != null)
                    hash = hash * 59 + this.TimeDetails.GetHashCode();
                if (this.Address != null)
                    hash = hash * 59 + this.Address.GetHashCode();
                if (this.Value != null)
                    hash = hash * 59 + this.Value.GetHashCode();
                if (this.TxHash != null)
                    hash = hash * 59 + this.TxHash.GetHashCode();
                if (this.DepositID != null)
                    hash = hash * 59 + this.DepositID.GetHashCode();
                if (this.Reason != null)
                    hash = hash * 59 + this.Reason.GetHashCode();
                return hash;
            }
        }
    }

}
