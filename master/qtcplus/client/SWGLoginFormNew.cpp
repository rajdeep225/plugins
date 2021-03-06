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


#include "SWGLoginFormNew.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGLoginFormNew::SWGLoginFormNew(QString* json) {
    init();
    this->fromJson(*json);
}

SWGLoginFormNew::SWGLoginFormNew() {
    init();
}

SWGLoginFormNew::~SWGLoginFormNew() {
    this->cleanup();
}

void
SWGLoginFormNew::init() {
    email = new QString("");
token = new QString("");
password = new QString("");
gcmCode = new QString("");
pin = new QString("");
}

void
SWGLoginFormNew::cleanup() {
    if(email != NULL) {
        delete email;
    }
if(token != NULL) {
        delete token;
    }
if(password != NULL) {
        delete password;
    }
if(gcmCode != NULL) {
        delete gcmCode;
    }
if(pin != NULL) {
        delete pin;
    }
}

SWGLoginFormNew*
SWGLoginFormNew::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGLoginFormNew::fromJsonObject(QJsonObject &pJson) {
    setValue(&email, pJson["email"], "QString", "QString");
setValue(&token, pJson["token"], "QString", "QString");
setValue(&password, pJson["password"], "QString", "QString");
setValue(&gcmCode, pJson["gcmCode"], "QString", "QString");
setValue(&pin, pJson["pin"], "QString", "QString");
}

QString
SWGLoginFormNew::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGLoginFormNew::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    
    toJsonValue(QString("email"), email, obj, QString("QString"));
    
        

    
    toJsonValue(QString("token"), token, obj, QString("QString"));
    
        

    
    toJsonValue(QString("password"), password, obj, QString("QString"));
    
        

    
    toJsonValue(QString("gcmCode"), gcmCode, obj, QString("QString"));
    
        

    
    toJsonValue(QString("pin"), pin, obj, QString("QString"));
    
        

    return obj;
}

QString*
SWGLoginFormNew::getEmail() {
    return email;
}
void
SWGLoginFormNew::setEmail(QString* email) {
    this->email = email;
}

QString*
SWGLoginFormNew::getToken() {
    return token;
}
void
SWGLoginFormNew::setToken(QString* token) {
    this->token = token;
}

QString*
SWGLoginFormNew::getPassword() {
    return password;
}
void
SWGLoginFormNew::setPassword(QString* password) {
    this->password = password;
}

QString*
SWGLoginFormNew::getGcmCode() {
    return gcmCode;
}
void
SWGLoginFormNew::setGcmCode(QString* gcmCode) {
    this->gcmCode = gcmCode;
}

QString*
SWGLoginFormNew::getPin() {
    return pin;
}
void
SWGLoginFormNew::setPin(QString* pin) {
    this->pin = pin;
}



} /* namespace Swagger */

