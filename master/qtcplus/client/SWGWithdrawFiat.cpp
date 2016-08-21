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


#include "SWGWithdrawFiat.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGWithdrawFiat::SWGWithdrawFiat(QString* json) {
    init();
    this->fromJson(*json);
}

SWGWithdrawFiat::SWGWithdrawFiat() {
    init();
}

SWGWithdrawFiat::~SWGWithdrawFiat() {
    this->cleanup();
}

void
SWGWithdrawFiat::init() {
    fiat = 0L;
account = new QString("");
msg = new QString("");
pin = new QString("");
}

void
SWGWithdrawFiat::cleanup() {
    
if(account != NULL) {
        delete account;
    }
if(msg != NULL) {
        delete msg;
    }
if(pin != NULL) {
        delete pin;
    }
}

SWGWithdrawFiat*
SWGWithdrawFiat::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGWithdrawFiat::fromJsonObject(QJsonObject &pJson) {
    setValue(&fiat, pJson["fiat"], "qint64", "");
setValue(&account, pJson["account"], "QString", "QString");
setValue(&msg, pJson["msg"], "QString", "QString");
setValue(&pin, pJson["pin"], "QString", "QString");
}

QString
SWGWithdrawFiat::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGWithdrawFiat::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("fiat", QJsonValue(fiat));

    
    toJsonValue(QString("account"), account, obj, QString("QString"));
    
        

    
    toJsonValue(QString("msg"), msg, obj, QString("QString"));
    
        

    
    toJsonValue(QString("pin"), pin, obj, QString("QString"));
    
        

    return obj;
}

qint64
SWGWithdrawFiat::getFiat() {
    return fiat;
}
void
SWGWithdrawFiat::setFiat(qint64 fiat) {
    this->fiat = fiat;
}

QString*
SWGWithdrawFiat::getAccount() {
    return account;
}
void
SWGWithdrawFiat::setAccount(QString* account) {
    this->account = account;
}

QString*
SWGWithdrawFiat::getMsg() {
    return msg;
}
void
SWGWithdrawFiat::setMsg(QString* msg) {
    this->msg = msg;
}

QString*
SWGWithdrawFiat::getPin() {
    return pin;
}
void
SWGWithdrawFiat::setPin(QString* pin) {
    this->pin = pin;
}



} /* namespace Swagger */

