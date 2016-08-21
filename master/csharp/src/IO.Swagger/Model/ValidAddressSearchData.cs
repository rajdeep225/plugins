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
    /// ValidAddressSearchData
    /// </summary>
    [DataContract]
    public partial class ValidAddressSearchData :  IEquatable<ValidAddressSearchData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ValidAddressSearchData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ValidAddressSearchData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ValidAddressSearchData" /> class.
        /// </summary>
        /// <param name="Address">Address (required).</param>
        /// <param name="Balance">Balance (required).</param>
        /// <param name="TotalReceived">TotalReceived (required).</param>
        /// <param name="UnconfirmedBalance">UnconfirmedBalance (required).</param>
        /// <param name="UnconfirmedTxApperances">UnconfirmedTxApperances (required).</param>
        /// <param name="TxApperances">TxApperances (required).</param>
        /// <param name="Transactions">Transactions (required).</param>
        public ValidAddressSearchData(string Address = null, long? Balance = null, long? TotalReceived = null, long? UnconfirmedBalance = null, int? UnconfirmedTxApperances = null, int? TxApperances = null, List<string> Transactions = null)
        {
            // to ensure "Address" is required (not null)
            if (Address == null)
            {
                throw new InvalidDataException("Address is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.Address = Address;
            }
            // to ensure "Balance" is required (not null)
            if (Balance == null)
            {
                throw new InvalidDataException("Balance is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.Balance = Balance;
            }
            // to ensure "TotalReceived" is required (not null)
            if (TotalReceived == null)
            {
                throw new InvalidDataException("TotalReceived is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.TotalReceived = TotalReceived;
            }
            // to ensure "UnconfirmedBalance" is required (not null)
            if (UnconfirmedBalance == null)
            {
                throw new InvalidDataException("UnconfirmedBalance is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.UnconfirmedBalance = UnconfirmedBalance;
            }
            // to ensure "UnconfirmedTxApperances" is required (not null)
            if (UnconfirmedTxApperances == null)
            {
                throw new InvalidDataException("UnconfirmedTxApperances is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.UnconfirmedTxApperances = UnconfirmedTxApperances;
            }
            // to ensure "TxApperances" is required (not null)
            if (TxApperances == null)
            {
                throw new InvalidDataException("TxApperances is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.TxApperances = TxApperances;
            }
            // to ensure "Transactions" is required (not null)
            if (Transactions == null)
            {
                throw new InvalidDataException("Transactions is a required property for ValidAddressSearchData and cannot be null");
            }
            else
            {
                this.Transactions = Transactions;
            }
        }
        
        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name="address", EmitDefaultValue=false)]
        public string Address { get; set; }
        /// <summary>
        /// Gets or Sets Balance
        /// </summary>
        [DataMember(Name="balance", EmitDefaultValue=false)]
        public long? Balance { get; set; }
        /// <summary>
        /// Gets or Sets TotalReceived
        /// </summary>
        [DataMember(Name="totalReceived", EmitDefaultValue=false)]
        public long? TotalReceived { get; set; }
        /// <summary>
        /// Gets or Sets UnconfirmedBalance
        /// </summary>
        [DataMember(Name="unconfirmedBalance", EmitDefaultValue=false)]
        public long? UnconfirmedBalance { get; set; }
        /// <summary>
        /// Gets or Sets UnconfirmedTxApperances
        /// </summary>
        [DataMember(Name="unconfirmedTxApperances", EmitDefaultValue=false)]
        public int? UnconfirmedTxApperances { get; set; }
        /// <summary>
        /// Gets or Sets TxApperances
        /// </summary>
        [DataMember(Name="txApperances", EmitDefaultValue=false)]
        public int? TxApperances { get; set; }
        /// <summary>
        /// Gets or Sets Transactions
        /// </summary>
        [DataMember(Name="transactions", EmitDefaultValue=false)]
        public List<string> Transactions { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ValidAddressSearchData {\n");
            sb.Append("  Address: ").Append(Address).Append("\n");
            sb.Append("  Balance: ").Append(Balance).Append("\n");
            sb.Append("  TotalReceived: ").Append(TotalReceived).Append("\n");
            sb.Append("  UnconfirmedBalance: ").Append(UnconfirmedBalance).Append("\n");
            sb.Append("  UnconfirmedTxApperances: ").Append(UnconfirmedTxApperances).Append("\n");
            sb.Append("  TxApperances: ").Append(TxApperances).Append("\n");
            sb.Append("  Transactions: ").Append(Transactions).Append("\n");
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
            return this.Equals(obj as ValidAddressSearchData);
        }

        /// <summary>
        /// Returns true if ValidAddressSearchData instances are equal
        /// </summary>
        /// <param name="other">Instance of ValidAddressSearchData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ValidAddressSearchData other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Address == other.Address ||
                    this.Address != null &&
                    this.Address.Equals(other.Address)
                ) && 
                (
                    this.Balance == other.Balance ||
                    this.Balance != null &&
                    this.Balance.Equals(other.Balance)
                ) && 
                (
                    this.TotalReceived == other.TotalReceived ||
                    this.TotalReceived != null &&
                    this.TotalReceived.Equals(other.TotalReceived)
                ) && 
                (
                    this.UnconfirmedBalance == other.UnconfirmedBalance ||
                    this.UnconfirmedBalance != null &&
                    this.UnconfirmedBalance.Equals(other.UnconfirmedBalance)
                ) && 
                (
                    this.UnconfirmedTxApperances == other.UnconfirmedTxApperances ||
                    this.UnconfirmedTxApperances != null &&
                    this.UnconfirmedTxApperances.Equals(other.UnconfirmedTxApperances)
                ) && 
                (
                    this.TxApperances == other.TxApperances ||
                    this.TxApperances != null &&
                    this.TxApperances.Equals(other.TxApperances)
                ) && 
                (
                    this.Transactions == other.Transactions ||
                    this.Transactions != null &&
                    this.Transactions.SequenceEqual(other.Transactions)
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
                if (this.Address != null)
                    hash = hash * 59 + this.Address.GetHashCode();
                if (this.Balance != null)
                    hash = hash * 59 + this.Balance.GetHashCode();
                if (this.TotalReceived != null)
                    hash = hash * 59 + this.TotalReceived.GetHashCode();
                if (this.UnconfirmedBalance != null)
                    hash = hash * 59 + this.UnconfirmedBalance.GetHashCode();
                if (this.UnconfirmedTxApperances != null)
                    hash = hash * 59 + this.UnconfirmedTxApperances.GetHashCode();
                if (this.TxApperances != null)
                    hash = hash * 59 + this.TxApperances.GetHashCode();
                if (this.Transactions != null)
                    hash = hash * 59 + this.Transactions.GetHashCode();
                return hash;
            }
        }
    }

}
