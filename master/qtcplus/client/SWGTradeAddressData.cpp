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


#include "SWGTradeAddressData.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGTradeAddressData::SWGTradeAddressData(QString* json) {
    init();
    this->fromJson(*json);
}

SWGTradeAddressData::SWGTradeAddressData() {
    init();
}

SWGTradeAddressData::~SWGTradeAddressData() {
    this->cleanup();
}

void
SWGTradeAddressData::init() {
    address = new QString("");
time = 0L;
info = new QString("");
netki = new QString("");
}

void
SWGTradeAddressData::cleanup() {
    if(address != NULL) {
        delete address;
    }

if(info != NULL) {
        delete info;
    }
if(netki != NULL) {
        delete netki;
    }
}

SWGTradeAddressData*
SWGTradeAddressData::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGTradeAddressData::fromJsonObject(QJsonObject &pJson) {
    setValue(&address, pJson["address"], "QString", "QString");
setValue(&time, pJson["time"], "qint64", "");
setValue(&info, pJson["info"], "QString", "QString");
setValue(&netki, pJson["netki"], "QString", "QString");
}

QString
SWGTradeAddressData::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGTradeAddressData::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    
    toJsonValue(QString("address"), address, obj, QString("QString"));
    
        
obj->insert("time", QJsonValue(time));

    
    toJsonValue(QString("info"), info, obj, QString("QString"));
    
        

    
    toJsonValue(QString("netki"), netki, obj, QString("QString"));
    
        

    return obj;
}

QString*
SWGTradeAddressData::getAddress() {
    return address;
}
void
SWGTradeAddressData::setAddress(QString* address) {
    this->address = address;
}

qint64
SWGTradeAddressData::getTime() {
    return time;
}
void
SWGTradeAddressData::setTime(qint64 time) {
    this->time = time;
}

QString*
SWGTradeAddressData::getInfo() {
    return info;
}
void
SWGTradeAddressData::setInfo(QString* info) {
    this->info = info;
}

QString*
SWGTradeAddressData::getNetki() {
    return netki;
}
void
SWGTradeAddressData::setNetki(QString* netki) {
    this->netki = netki;
}



} /* namespace Swagger */

