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
    /// BankSummaryData
    /// </summary>
    [DataContract]
    public partial class BankSummaryData :  IEquatable<BankSummaryData>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BankSummaryData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected BankSummaryData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="BankSummaryData" /> class.
        /// </summary>
        /// <param name="PendingCoinBalance">PendingCoinBalance (required).</param>
        /// <param name="PendingFiatBalance">PendingFiatBalance (required).</param>
        /// <param name="AvailableCoinBalance">AvailableCoinBalance (required).</param>
        /// <param name="AvailableFiatBalance">AvailableFiatBalance (required).</param>
        /// <param name="TotalCoinBalance">TotalCoinBalance (required).</param>
        /// <param name="TotalFiatBalance">TotalFiatBalance (required).</param>
        /// <param name="CoinFeePercentage">CoinFeePercentage (required).</param>
        /// <param name="FiatFeePercentage">FiatFeePercentage (required).</param>
        /// <param name="BankLinkStatus">BankLinkStatus (required).</param>
        /// <param name="HasTradeNetki">HasTradeNetki (required) (default to false).</param>
        /// <param name="TradeNetkiName">TradeNetkiName (required).</param>
        /// <param name="TradeNetkiAddress">TradeNetkiAddress (required).</param>
        public BankSummaryData(long? PendingCoinBalance = null, long? PendingFiatBalance = null, long? AvailableCoinBalance = null, long? AvailableFiatBalance = null, long? TotalCoinBalance = null, long? TotalFiatBalance = null, double? CoinFeePercentage = null, double? FiatFeePercentage = null, string BankLinkStatus = null, bool? HasTradeNetki = null, string TradeNetkiName = null, string TradeNetkiAddress = null)
        {
            // to ensure "PendingCoinBalance" is required (not null)
            if (PendingCoinBalance == null)
            {
                throw new InvalidDataException("PendingCoinBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.PendingCoinBalance = PendingCoinBalance;
            }
            // to ensure "PendingFiatBalance" is required (not null)
            if (PendingFiatBalance == null)
            {
                throw new InvalidDataException("PendingFiatBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.PendingFiatBalance = PendingFiatBalance;
            }
            // to ensure "AvailableCoinBalance" is required (not null)
            if (AvailableCoinBalance == null)
            {
                throw new InvalidDataException("AvailableCoinBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.AvailableCoinBalance = AvailableCoinBalance;
            }
            // to ensure "AvailableFiatBalance" is required (not null)
            if (AvailableFiatBalance == null)
            {
                throw new InvalidDataException("AvailableFiatBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.AvailableFiatBalance = AvailableFiatBalance;
            }
            // to ensure "TotalCoinBalance" is required (not null)
            if (TotalCoinBalance == null)
            {
                throw new InvalidDataException("TotalCoinBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.TotalCoinBalance = TotalCoinBalance;
            }
            // to ensure "TotalFiatBalance" is required (not null)
            if (TotalFiatBalance == null)
            {
                throw new InvalidDataException("TotalFiatBalance is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.TotalFiatBalance = TotalFiatBalance;
            }
            // to ensure "CoinFeePercentage" is required (not null)
            if (CoinFeePercentage == null)
            {
                throw new InvalidDataException("CoinFeePercentage is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.CoinFeePercentage = CoinFeePercentage;
            }
            // to ensure "FiatFeePercentage" is required (not null)
            if (FiatFeePercentage == null)
            {
                throw new InvalidDataException("FiatFeePercentage is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.FiatFeePercentage = FiatFeePercentage;
            }
            // to ensure "BankLinkStatus" is required (not null)
            if (BankLinkStatus == null)
            {
                throw new InvalidDataException("BankLinkStatus is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.BankLinkStatus = BankLinkStatus;
            }
            // to ensure "HasTradeNetki" is required (not null)
            if (HasTradeNetki == null)
            {
                throw new InvalidDataException("HasTradeNetki is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.HasTradeNetki = HasTradeNetki;
            }
            // to ensure "TradeNetkiName" is required (not null)
            if (TradeNetkiName == null)
            {
                throw new InvalidDataException("TradeNetkiName is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.TradeNetkiName = TradeNetkiName;
            }
            // to ensure "TradeNetkiAddress" is required (not null)
            if (TradeNetkiAddress == null)
            {
                throw new InvalidDataException("TradeNetkiAddress is a required property for BankSummaryData and cannot be null");
            }
            else
            {
                this.TradeNetkiAddress = TradeNetkiAddress;
            }
        }
        
        /// <summary>
        /// Gets or Sets PendingCoinBalance
        /// </summary>
        [DataMember(Name="pendingCoinBalance", EmitDefaultValue=false)]
        public long? PendingCoinBalance { get; set; }
        /// <summary>
        /// Gets or Sets PendingFiatBalance
        /// </summary>
        [DataMember(Name="pendingFiatBalance", EmitDefaultValue=false)]
        public long? PendingFiatBalance { get; set; }
        /// <summary>
        /// Gets or Sets AvailableCoinBalance
        /// </summary>
        [DataMember(Name="availableCoinBalance", EmitDefaultValue=false)]
        public long? AvailableCoinBalance { get; set; }
        /// <summary>
        /// Gets or Sets AvailableFiatBalance
        /// </summary>
        [DataMember(Name="availableFiatBalance", EmitDefaultValue=false)]
        public long? AvailableFiatBalance { get; set; }
        /// <summary>
        /// Gets or Sets TotalCoinBalance
        /// </summary>
        [DataMember(Name="totalCoinBalance", EmitDefaultValue=false)]
        public long? TotalCoinBalance { get; set; }
        /// <summary>
        /// Gets or Sets TotalFiatBalance
        /// </summary>
        [DataMember(Name="totalFiatBalance", EmitDefaultValue=false)]
        public long? TotalFiatBalance { get; set; }
        /// <summary>
        /// Gets or Sets CoinFeePercentage
        /// </summary>
        [DataMember(Name="coinFeePercentage", EmitDefaultValue=false)]
        public double? CoinFeePercentage { get; set; }
        /// <summary>
        /// Gets or Sets FiatFeePercentage
        /// </summary>
        [DataMember(Name="fiatFeePercentage", EmitDefaultValue=false)]
        public double? FiatFeePercentage { get; set; }
        /// <summary>
        /// Gets or Sets BankLinkStatus
        /// </summary>
        [DataMember(Name="bankLinkStatus", EmitDefaultValue=false)]
        public string BankLinkStatus { get; set; }
        /// <summary>
        /// Gets or Sets HasTradeNetki
        /// </summary>
        [DataMember(Name="hasTradeNetki", EmitDefaultValue=false)]
        public bool? HasTradeNetki { get; set; }
        /// <summary>
        /// Gets or Sets TradeNetkiName
        /// </summary>
        [DataMember(Name="tradeNetkiName", EmitDefaultValue=false)]
        public string TradeNetkiName { get; set; }
        /// <summary>
        /// Gets or Sets TradeNetkiAddress
        /// </summary>
        [DataMember(Name="tradeNetkiAddress", EmitDefaultValue=false)]
        public string TradeNetkiAddress { get; set; }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class BankSummaryData {\n");
            sb.Append("  PendingCoinBalance: ").Append(PendingCoinBalance).Append("\n");
            sb.Append("  PendingFiatBalance: ").Append(PendingFiatBalance).Append("\n");
            sb.Append("  AvailableCoinBalance: ").Append(AvailableCoinBalance).Append("\n");
            sb.Append("  AvailableFiatBalance: ").Append(AvailableFiatBalance).Append("\n");
            sb.Append("  TotalCoinBalance: ").Append(TotalCoinBalance).Append("\n");
            sb.Append("  TotalFiatBalance: ").Append(TotalFiatBalance).Append("\n");
            sb.Append("  CoinFeePercentage: ").Append(CoinFeePercentage).Append("\n");
            sb.Append("  FiatFeePercentage: ").Append(FiatFeePercentage).Append("\n");
            sb.Append("  BankLinkStatus: ").Append(BankLinkStatus).Append("\n");
            sb.Append("  HasTradeNetki: ").Append(HasTradeNetki).Append("\n");
            sb.Append("  TradeNetkiName: ").Append(TradeNetkiName).Append("\n");
            sb.Append("  TradeNetkiAddress: ").Append(TradeNetkiAddress).Append("\n");
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
            return this.Equals(obj as BankSummaryData);
        }

        /// <summary>
        /// Returns true if BankSummaryData instances are equal
        /// </summary>
        /// <param name="other">Instance of BankSummaryData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(BankSummaryData other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.PendingCoinBalance == other.PendingCoinBalance ||
                    this.PendingCoinBalance != null &&
                    this.PendingCoinBalance.Equals(other.PendingCoinBalance)
                ) && 
                (
                    this.PendingFiatBalance == other.PendingFiatBalance ||
                    this.PendingFiatBalance != null &&
                    this.PendingFiatBalance.Equals(other.PendingFiatBalance)
                ) && 
                (
                    this.AvailableCoinBalance == other.AvailableCoinBalance ||
                    this.AvailableCoinBalance != null &&
                    this.AvailableCoinBalance.Equals(other.AvailableCoinBalance)
                ) && 
                (
                    this.AvailableFiatBalance == other.AvailableFiatBalance ||
                    this.AvailableFiatBalance != null &&
                    this.AvailableFiatBalance.Equals(other.AvailableFiatBalance)
                ) && 
                (
                    this.TotalCoinBalance == other.TotalCoinBalance ||
                    this.TotalCoinBalance != null &&
                    this.TotalCoinBalance.Equals(other.TotalCoinBalance)
                ) && 
                (
                    this.TotalFiatBalance == other.TotalFiatBalance ||
                    this.TotalFiatBalance != null &&
                    this.TotalFiatBalance.Equals(other.TotalFiatBalance)
                ) && 
                (
                    this.CoinFeePercentage == other.CoinFeePercentage ||
                    this.CoinFeePercentage != null &&
                    this.CoinFeePercentage.Equals(other.CoinFeePercentage)
                ) && 
                (
                    this.FiatFeePercentage == other.FiatFeePercentage ||
                    this.FiatFeePercentage != null &&
                    this.FiatFeePercentage.Equals(other.FiatFeePercentage)
                ) && 
                (
                    this.BankLinkStatus == other.BankLinkStatus ||
                    this.BankLinkStatus != null &&
                    this.BankLinkStatus.Equals(other.BankLinkStatus)
                ) && 
                (
                    this.HasTradeNetki == other.HasTradeNetki ||
                    this.HasTradeNetki != null &&
                    this.HasTradeNetki.Equals(other.HasTradeNetki)
                ) && 
                (
                    this.TradeNetkiName == other.TradeNetkiName ||
                    this.TradeNetkiName != null &&
                    this.TradeNetkiName.Equals(other.TradeNetkiName)
                ) && 
                (
                    this.TradeNetkiAddress == other.TradeNetkiAddress ||
                    this.TradeNetkiAddress != null &&
                    this.TradeNetkiAddress.Equals(other.TradeNetkiAddress)
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
                if (this.PendingCoinBalance != null)
                    hash = hash * 59 + this.PendingCoinBalance.GetHashCode();
                if (this.PendingFiatBalance != null)
                    hash = hash * 59 + this.PendingFiatBalance.GetHashCode();
                if (this.AvailableCoinBalance != null)
                    hash = hash * 59 + this.AvailableCoinBalance.GetHashCode();
                if (this.AvailableFiatBalance != null)
                    hash = hash * 59 + this.AvailableFiatBalance.GetHashCode();
                if (this.TotalCoinBalance != null)
                    hash = hash * 59 + this.TotalCoinBalance.GetHashCode();
                if (this.TotalFiatBalance != null)
                    hash = hash * 59 + this.TotalFiatBalance.GetHashCode();
                if (this.CoinFeePercentage != null)
                    hash = hash * 59 + this.CoinFeePercentage.GetHashCode();
                if (this.FiatFeePercentage != null)
                    hash = hash * 59 + this.FiatFeePercentage.GetHashCode();
                if (this.BankLinkStatus != null)
                    hash = hash * 59 + this.BankLinkStatus.GetHashCode();
                if (this.HasTradeNetki != null)
                    hash = hash * 59 + this.HasTradeNetki.GetHashCode();
                if (this.TradeNetkiName != null)
                    hash = hash * 59 + this.TradeNetkiName.GetHashCode();
                if (this.TradeNetkiAddress != null)
                    hash = hash * 59 + this.TradeNetkiAddress.GetHashCode();
                return hash;
            }
        }
    }

}
