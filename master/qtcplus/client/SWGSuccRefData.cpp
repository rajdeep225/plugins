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


#include "SWGSuccRefData.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGSuccRefData::SWGSuccRefData(QString* json) {
    init();
    this->fromJson(*json);
}

SWGSuccRefData::SWGSuccRefData() {
    init();
}

SWGSuccRefData::~SWGSuccRefData() {
    this->cleanup();
}

void
SWGSuccRefData::init() {
    refPercent = 0.0;
time = 0L;
refID = new QString("");
emailVerified = false;
kycComplete = false;
btcEarned = 0L;
fiatEarned = 0L;
}

void
SWGSuccRefData::cleanup() {
    

if(refID != NULL) {
        delete refID;
    }




}

SWGSuccRefData*
SWGSuccRefData::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGSuccRefData::fromJsonObject(QJsonObject &pJson) {
    setValue(&refPercent, pJson["refPercent"], "double", "");
setValue(&time, pJson["time"], "qint64", "");
setValue(&refID, pJson["refID"], "QString", "QString");
setValue(&emailVerified, pJson["emailVerified"], "bool", "");
setValue(&kycComplete, pJson["kycComplete"], "bool", "");
setValue(&btcEarned, pJson["btcEarned"], "qint64", "");
setValue(&fiatEarned, pJson["fiatEarned"], "qint64", "");
}

QString
SWGSuccRefData::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGSuccRefData::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("refPercent", QJsonValue(refPercent));
obj->insert("time", QJsonValue(time));

    
    toJsonValue(QString("refID"), refID, obj, QString("QString"));
    
        
obj->insert("emailVerified", QJsonValue(emailVerified));
obj->insert("kycComplete", QJsonValue(kycComplete));
obj->insert("btcEarned", QJsonValue(btcEarned));
obj->insert("fiatEarned", QJsonValue(fiatEarned));

    return obj;
}

double
SWGSuccRefData::getRefPercent() {
    return refPercent;
}
void
SWGSuccRefData::setRefPercent(double refPercent) {
    this->refPercent = refPercent;
}

qint64
SWGSuccRefData::getTime() {
    return time;
}
void
SWGSuccRefData::setTime(qint64 time) {
    this->time = time;
}

QString*
SWGSuccRefData::getRefID() {
    return refID;
}
void
SWGSuccRefData::setRefID(QString* refID) {
    this->refID = refID;
}

bool
SWGSuccRefData::getEmailVerified() {
    return emailVerified;
}
void
SWGSuccRefData::setEmailVerified(bool emailVerified) {
    this->emailVerified = emailVerified;
}

bool
SWGSuccRefData::getKycComplete() {
    return kycComplete;
}
void
SWGSuccRefData::setKycComplete(bool kycComplete) {
    this->kycComplete = kycComplete;
}

qint64
SWGSuccRefData::getBtcEarned() {
    return btcEarned;
}
void
SWGSuccRefData::setBtcEarned(qint64 btcEarned) {
    this->btcEarned = btcEarned;
}

qint64
SWGSuccRefData::getFiatEarned() {
    return fiatEarned;
}
void
SWGSuccRefData::setFiatEarned(qint64 fiatEarned) {
    this->fiatEarned = fiatEarned;
}



} /* namespace Swagger */

