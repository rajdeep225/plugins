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
    /// NewFiatBankDeposit
    /// </summary>
    [DataContract]
    public partial class NewFiatBankDeposit :  IEquatable<NewFiatBankDeposit>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="NewFiatBankDeposit" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected NewFiatBankDeposit() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="NewFiatBankDeposit" /> class.
        /// </summary>
        /// <param name="Amount">Amount (required).</param>
        /// <param name="Message">Message (required).</param>
        /// <param name="Bank">Bank (required).</param>
        /// <param name="DepType">DepType (required).</param>
        public NewFiatBankDeposit(long? Amount = null, string Message = null, string Bank = null, string DepType = null)
        {
            // to ensure "Amount" is required (not null)
            if (Amount == null)
            {
                throw new InvalidDataException("Amount is a required property for NewFiatBankDeposit and cannot be null");
            }
            else
            {
                this.Amount = Amount;
            }
            // to ensure "Message" is required (not null)
            if (Message == null)
            {
                throw new InvalidDataException("Message is a required property for NewFiatBankDeposit and cannot be null");
            }
            else
            {
                this.Message = Message;
            }
            // to ensure "Bank" is required (not null)
            if (Bank == null)
            {
                throw new InvalidDataException("Bank is a required property for NewFiatBankDeposit and cannot be null");
            }
            else
            {
                this.Bank = Bank;
            }
            // to ensure "DepType" is required (not null)
            if (DepType == null)
            {
                throw new InvalidDataException("DepType is a required property for NewFiatBankDeposit and cannot be null");
            }
            else
            {
                this.DepType = DepType;
            }
        }
        
        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name="amount", EmitDefaultValue=false)]
        public long? Amount { get; set; }
        /// <summary>
        /// Gets or Sets Message
        /// </summary>
        [DataMember(Name="message", EmitDefaultValue=false)]
        public string Message { get; set; }
        /// <summary>
        /// Gets or Sets Bank
        /// </summary>
        [DataMember(Name="bank", EmitDefaultValue=false)]
        public string Bank { get; set; }
        /// <summary>
        /// Gets or Sets DepType
        /// </summary>
        [DataMember(Name="depType", EmitDefaultValue=false)]
        public string DepType { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class NewFiatBankDeposit {\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Message: ").Append(Message).Append("\n");
            sb.Append("  Bank: ").Append(Bank).Append("\n");
            sb.Append("  DepType: ").Append(DepType).Append("\n");
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
            return this.Equals(obj as NewFiatBankDeposit);
        }

        /// <summary>
        /// Returns true if NewFiatBankDeposit instances are equal
        /// </summary>
        /// <param name="other">Instance of NewFiatBankDeposit to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(NewFiatBankDeposit other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Amount == other.Amount ||
                    this.Amount != null &&
                    this.Amount.Equals(other.Amount)
                ) && 
                (
                    this.Message == other.Message ||
                    this.Message != null &&
                    this.Message.Equals(other.Message)
                ) && 
                (
                    this.Bank == other.Bank ||
                    this.Bank != null &&
                    this.Bank.Equals(other.Bank)
                ) && 
                (
                    this.DepType == other.DepType ||
                    this.DepType != null &&
                    this.DepType.Equals(other.DepType)
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
                if (this.Amount != null)
                    hash = hash * 59 + this.Amount.GetHashCode();
                if (this.Message != null)
                    hash = hash * 59 + this.Message.GetHashCode();
                if (this.Bank != null)
                    hash = hash * 59 + this.Bank.GetHashCode();
                if (this.DepType != null)
                    hash = hash * 59 + this.DepType.GetHashCode();
                return hash;
            }
        }
    }

}