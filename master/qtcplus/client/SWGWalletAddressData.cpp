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


#include "SWGWalletAddressData.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGWalletAddressData::SWGWalletAddressData(QString* json) {
    init();
    this->fromJson(*json);
}

SWGWalletAddressData::SWGWalletAddressData() {
    init();
}

SWGWalletAddressData::~SWGWalletAddressData() {
    this->cleanup();
}

void
SWGWalletAddressData::init() {
    walletID = new QString("");
address = new QString("");
time = 0L;
info = new QString("");
minConf = 0;
netki = new QString("");
}

void
SWGWalletAddressData::cleanup() {
    if(walletID != NULL) {
        delete walletID;
    }
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

SWGWalletAddressData*
SWGWalletAddressData::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGWalletAddressData::fromJsonObject(QJsonObject &pJson) {
    setValue(&walletID, pJson["walletID"], "QString", "QString");
setValue(&address, pJson["address"], "QString", "QString");
setValue(&time, pJson["time"], "qint64", "");
setValue(&info, pJson["info"], "QString", "QString");
setValue(&minConf, pJson["minConf"], "qint32", "");
setValue(&netki, pJson["netki"], "QString", "QString");
}

QString
SWGWalletAddressData::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGWalletAddressData::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    
    toJsonValue(QString("walletID"), walletID, obj, QString("QString"));
    
        

    
    toJsonValue(QString("address"), address, obj, QString("QString"));
    
        
obj->insert("time", QJsonValue(time));

    
    toJsonValue(QString("info"), info, obj, QString("QString"));
    
        
obj->insert("minConf", QJsonValue(minConf));

    
    toJsonValue(QString("netki"), netki, obj, QString("QString"));
    
        

    return obj;
}

QString*
SWGWalletAddressData::getWalletID() {
    return walletID;
}
void
SWGWalletAddressData::setWalletID(QString* walletID) {
    this->walletID = walletID;
}

QString*
SWGWalletAddressData::getAddress() {
    return address;
}
void
SWGWalletAddressData::setAddress(QString* address) {
    this->address = address;
}

qint64
SWGWalletAddressData::getTime() {
    return time;
}
void
SWGWalletAddressData::setTime(qint64 time) {
    this->time = time;
}

QString*
SWGWalletAddressData::getInfo() {
    return info;
}
void
SWGWalletAddressData::setInfo(QString* info) {
    this->info = info;
}

qint32
SWGWalletAddressData::getMinConf() {
    return minConf;
}
void
SWGWalletAddressData::setMinConf(qint32 minConf) {
    this->minConf = minConf;
}

QString*
SWGWalletAddressData::getNetki() {
    return netki;
}
void
SWGWalletAddressData::setNetki(QString* netki) {
    this->netki = netki;
}



} /* namespace Swagger */

