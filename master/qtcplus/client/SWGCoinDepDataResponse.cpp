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


#include "SWGCoinDepDataResponse.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGCoinDepDataResponse::SWGCoinDepDataResponse(QString* json) {
    init();
    this->fromJson(*json);
}

SWGCoinDepDataResponse::SWGCoinDepDataResponse() {
    init();
}

SWGCoinDepDataResponse::~SWGCoinDepDataResponse() {
    this->cleanup();
}

void
SWGCoinDepDataResponse::init() {
    success = false;
message = new QList<SWGCoinDepData*>();
method = new QString("");
title = new QString("");
time = NULL;
}

void
SWGCoinDepDataResponse::cleanup() {
    
if(message != NULL) {
        QList<SWGCoinDepData*>* arr = message;
        foreach(SWGCoinDepData* o, *arr) {
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

SWGCoinDepDataResponse*
SWGCoinDepDataResponse::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGCoinDepDataResponse::fromJsonObject(QJsonObject &pJson) {
    setValue(&success, pJson["success"], "bool", "");
setValue(&message, pJson["message"], "QList", "SWGCoinDepData");
setValue(&method, pJson["method"], "QString", "QString");
setValue(&title, pJson["title"], "QString", "QString");
setValue(&time, pJson["time"], "QDateTime", "QDateTime");
}

QString
SWGCoinDepDataResponse::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGCoinDepDataResponse::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("success", QJsonValue(success));

    
    QList<SWGCoinDepData*>* messageList = message;
    QJsonArray messageJsonArray;
    toJsonArray((QList<void*>*)message, &messageJsonArray, "message", "SWGCoinDepData");

    obj->insert("message", messageJsonArray);
    

    
    toJsonValue(QString("method"), method, obj, QString("QString"));
    
        

    
    toJsonValue(QString("title"), title, obj, QString("QString"));
    
        

    
    toJsonValue(QString("time"), time, obj, QString("QDateTime"));
    
        

    return obj;
}

bool
SWGCoinDepDataResponse::getSuccess() {
    return success;
}
void
SWGCoinDepDataResponse::setSuccess(bool success) {
    this->success = success;
}

QList<SWGCoinDepData*>*
SWGCoinDepDataResponse::getMessage() {
    return message;
}
void
SWGCoinDepDataResponse::setMessage(QList<SWGCoinDepData*>* message) {
    this->message = message;
}

QString*
SWGCoinDepDataResponse::getMethod() {
    return method;
}
void
SWGCoinDepDataResponse::setMethod(QString* method) {
    this->method = method;
}

QString*
SWGCoinDepDataResponse::getTitle() {
    return title;
}
void
SWGCoinDepDataResponse::setTitle(QString* title) {
    this->title = title;
}

QDateTime*
SWGCoinDepDataResponse::getTime() {
    return time;
}
void
SWGCoinDepDataResponse::setTime(QDateTime* time) {
    this->time = time;
}



} /* namespace Swagger */

