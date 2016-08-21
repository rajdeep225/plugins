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


#include "SWGFiatWithDataResponse.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGFiatWithDataResponse::SWGFiatWithDataResponse(QString* json) {
    init();
    this->fromJson(*json);
}

SWGFiatWithDataResponse::SWGFiatWithDataResponse() {
    init();
}

SWGFiatWithDataResponse::~SWGFiatWithDataResponse() {
    this->cleanup();
}

void
SWGFiatWithDataResponse::init() {
    success = false;
message = new QList<SWGFiatWithData*>();
method = new QString("");
title = new QString("");
time = NULL;
}

void
SWGFiatWithDataResponse::cleanup() {
    
if(message != NULL) {
        QList<SWGFiatWithData*>* arr = message;
        foreach(SWGFiatWithData* o, *arr) {
            delete o;
        }
        delete message;
    }
if(method != NULL) {
        delete method;
    }
if(title != NULL) {
        delete title;
    }
if(time != NULL) {
        delete time;
    }
}

SWGFiatWithDataResponse*
SWGFiatWithDataResponse::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGFiatWithDataResponse::fromJsonObject(QJsonObject &pJson) {
    setValue(&success, pJson["success"], "bool", "");
setValue(&message, pJson["message"], "QList", "SWGFiatWithData");
setValue(&method, pJson["method"], "QString", "QString");
setValue(&title, pJson["title"], "QString", "QString");
setValue(&time, pJson["time"], "QDateTime", "QDateTime");
}

QString
SWGFiatWithDataResponse::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGFiatWithDataResponse::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("success", QJsonValue(success));

    
    QList<SWGFiatWithData*>* messageList = message;
    QJsonArray messageJsonArray;
    toJsonArray((QList<void*>*)message, &messageJsonArray, "message", "SWGFiatWithData");

    obj->insert("message", messageJsonArray);
    

    
    toJsonValue(QString("method"), method, obj, QString("QString"));
    
        

    
    toJsonValue(QString("title"), title, obj, QString("QString"));
    
        

    
    toJsonValue(QString("time"), time, obj, QString("QDateTime"));
    
        

    return obj;
}

bool
SWGFiatWithDataResponse::getSuccess() {
    return success;
}
void
SWGFiatWithDataResponse::setSuccess(bool success) {
    this->success = success;
}

QList<SWGFiatWithData*>*
SWGFiatWithDataResponse::getMessage() {
    return message;
}
void
SWGFiatWithDataResponse::setMessage(QList<SWGFiatWithData*>* message) {
    this->message = message;
}

QString*
SWGFiatWithDataResponse::getMethod() {
    return method;
}
void
SWGFiatWithDataResponse::setMethod(QString* method) {
    this->method = method;
}

QString*
SWGFiatWithDataResponse::getTitle() {
    return title;
}
void
SWGFiatWithDataResponse::setTitle(QString* title) {
    this->title = title;
}

QDateTime*
SWGFiatWithDataResponse::getTime() {
    return time;
}
void
SWGFiatWithDataResponse::setTime(QDateTime* time) {
    this->time = time;
}



} /* namespace Swagger */

