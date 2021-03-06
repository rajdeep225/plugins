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

/*
 * SWGBankSummaryData.h
 * 
 * 
 */

#ifndef SWGBankSummaryData_H_
#define SWGBankSummaryData_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"


namespace Swagger {

class SWGBankSummaryData: public SWGObject {
public:
    SWGBankSummaryData();
    SWGBankSummaryData(QString* json);
    virtual ~SWGBankSummaryData();
    void init();
    void cleanup();

    QString asJson ();
    QJsonObject* asJsonObject();
    void fromJsonObject(QJsonObject &json);
    SWGBankSummaryData* fromJson(QString &jsonString);

    qint64 getPendingCoinBalance();
    void setPendingCoinBalance(qint64 pendingCoinBalance);
qint64 getPendingFiatBalance();
    void setPendingFiatBalance(qint64 pendingFiatBalance);
qint64 getAvailableCoinBalance();
    void setAvailableCoinBalance(qint64 availableCoinBalance);
qint64 getAvailableFiatBalance();
    void setAvailableFiatBalance(qint64 availableFiatBalance);
qint64 getTotalCoinBalance();
    void setTotalCoinBalance(qint64 totalCoinBalance);
qint64 getTotalFiatBalance();
    void setTotalFiatBalance(qint64 totalFiatBalance);
double getCoinFeePercentage();
    void setCoinFeePercentage(double coinFeePercentage);
double getFiatFeePercentage();
    void setFiatFeePercentage(double fiatFeePercentage);
QString* getBankLinkStatus();
    void setBankLinkStatus(QString* bankLinkStatus);
bool getHasTradeNetki();
    void setHasTradeNetki(bool hasTradeNetki);
QString* getTradeNetkiName();
    void setTradeNetkiName(QString* tradeNetkiName);
QString* getTradeNetkiAddress();
    void setTradeNetkiAddress(QString* tradeNetkiAddress);

private:
    qint64 pendingCoinBalance;
qint64 pendingFiatBalance;
qint64 availableCoinBalance;
qint64 availableFiatBalance;
qint64 totalCoinBalance;
qint64 totalFiatBalance;
double coinFeePercentage;
double fiatFeePercentage;
QString* bankLinkStatus;
bool hasTradeNetki;
QString* tradeNetkiName;
QString* tradeNetkiAddress;
};

} /* namespace Swagger */

#endif /* SWGBankSummaryData_H_ */
