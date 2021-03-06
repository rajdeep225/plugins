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


#include "SWGNewFiatBankDeposit.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGNewFiatBankDeposit::SWGNewFiatBankDeposit(QString* json) {
    init();
    this->fromJson(*json);
}

SWGNewFiatBankDeposit::SWGNewFiatBankDeposit() {
    init();
}

SWGNewFiatBankDeposit::~SWGNewFiatBankDeposit() {
    this->cleanup();
}

void
SWGNewFiatBankDeposit::init() {
    amount = 0L;
message = new QString("");
bank = new QString("");
depType = new QString("");
}

void
SWGNewFiatBankDeposit::cleanup() {
    
if(message != NULL) {
        delete message;
    }
if(bank != NULL) {
        delete bank;
    }
if(depType != NULL) {
        delete depType;
    }
}

SWGNewFiatBankDeposit*
SWGNewFiatBankDeposit::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGNewFiatBankDeposit::fromJsonObject(QJsonObject &pJson) {
    setValue(&amount, pJson["amount"], "qint64", "");
setValue(&message, pJson["message"], "QString", "QString");
setValue(&bank, pJson["bank"], "QString", "QString");
setValue(&depType, pJson["depType"], "QString", "QString");
}

QString
SWGNewFiatBankDeposit::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGNewFiatBankDeposit::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("amount", QJsonValue(amount));

    
    toJsonValue(QString("message"), message, obj, QString("QString"));
    
        

    
    toJsonValue(QString("bank"), bank, obj, QString("QString"));
    
        

    
    toJsonValue(QString("depType"), depType, obj, QString("QString"));
    
        

    return obj;
}

qint64
SWGNewFiatBankDeposit::getAmount() {
    return amount;
}
void
SWGNewFiatBankDeposit::setAmount(qint64 amount) {
    this->amount = amount;
}

QString*
SWGNewFiatBankDeposit::getMessage() {
    return message;
}
void
SWGNewFiatBankDeposit::setMessage(QString* message) {
    this->message = message;
}

QString*
SWGNewFiatBankDeposit::getBank() {
    return bank;
}
void
SWGNewFiatBankDeposit::setBank(QString* bank) {
    this->bank = bank;
}

QString*
SWGNewFiatBankDeposit::getDepType() {
    return depType;
}
void
SWGNewFiatBankDeposit::setDepType(QString* depType) {
    this->depType = depType;
}



} /* namespace Swagger */

