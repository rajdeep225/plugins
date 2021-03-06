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
    /// LoginFormNew
    /// </summary>
    [DataContract]
    public partial class LoginFormNew :  IEquatable<LoginFormNew>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="LoginFormNew" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected LoginFormNew() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="LoginFormNew" /> class.
        /// </summary>
        /// <param name="Email">Email (required).</param>
        /// <param name="Token">Token (required).</param>
        /// <param name="Password">Password (required).</param>
        /// <param name="GcmCode">GcmCode.</param>
        /// <param name="Pin">Pin.</param>
        public LoginFormNew(string Email = null, string Token = null, string Password = null, string GcmCode = null, string Pin = null)
        {
            // to ensure "Email" is required (not null)
            if (Email == null)
            {
                throw new InvalidDataException("Email is a required property for LoginFormNew and cannot be null");
            }
            else
            {
                this.Email = Email;
            }
            // to ensure "Token" is required (not null)
            if (Token == null)
            {
                throw new InvalidDataException("Token is a required property for LoginFormNew and cannot be null");
            }
            else
            {
                this.Token = Token;
            }
            // to ensure "Password" is required (not null)
            if (Password == null)
            {
                throw new InvalidDataException("Password is a required property for LoginFormNew and cannot be null");
            }
            else
            {
                this.Password = Password;
            }
            this.GcmCode = GcmCode;
            this.Pin = Pin;
        }
        
        /// <summary>
        /// Gets or Sets Email
        /// </summary>
        [DataMember(Name="email", EmitDefaultValue=false)]
        public string Email { get; set; }
        /// <summary>
        /// Gets or Sets Token
        /// </summary>
        [DataMember(Name="token", EmitDefaultValue=false)]
        public string Token { get; set; }
        /// <summary>
        /// Gets or Sets Password
        /// </summary>
        [DataMember(Name="password", EmitDefaultValue=false)]
        public string Password { get; set; }
        /// <summary>
        /// Gets or Sets GcmCode
        /// </summary>
        [DataMember(Name="gcmCode", EmitDefaultValue=false)]
        public string GcmCode { get; set; }
        /// <summary>
        /// Gets or Sets Pin
        /// </summary>
        [DataMember(Name="pin", EmitDefaultValue=false)]
        public string Pin { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class LoginFormNew {\n");
            sb.Append("  Email: ").Append(Email).Append("\n");
            sb.Append("  Token: ").Append(Token).Append("\n");
            sb.Append("  Password: ").Append(Password).Append("\n");
            sb.Append("  GcmCode: ").Append(GcmCode).Append("\n");
            sb.Append("  Pin: ").Append(Pin).Append("\n");
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
            return this.Equals(obj as LoginFormNew);
        }

        /// <summary>
        /// Returns true if LoginFormNew instances are equal
        /// </summary>
        /// <param name="other">Instance of LoginFormNew to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(LoginFormNew other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Email == other.Email ||
                    this.Email != null &&
                    this.Email.Equals(other.Email)
                ) && 
                (
                    this.Token == other.Token ||
                    this.Token != null &&
                    this.Token.Equals(other.Token)
                ) && 
                (
                    this.Password == other.Password ||
                    this.Password != null &&
                    this.Password.Equals(other.Password)
                ) && 
                (
                    this.GcmCode == other.GcmCode ||
                    this.GcmCode != null &&
                    this.GcmCode.Equals(other.GcmCode)
                ) && 
                (
                    this.Pin == other.Pin ||
                    this.Pin != null &&
                    this.Pin.Equals(other.Pin)
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
                if (this.Email != null)
                    hash = hash * 59 + this.Email.GetHashCode();
                if (this.Token != null)
                    hash = hash * 59 + this.Token.GetHashCode();
                if (this.Password != null)
                    hash = hash * 59 + this.Password.GetHashCode();
                if (this.GcmCode != null)
                    hash = hash * 59 + this.GcmCode.GetHashCode();
                if (this.Pin != null)
                    hash = hash * 59 + this.Pin.GetHashCode();
                return hash;
            }
        }
    }

}
