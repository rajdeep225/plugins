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


#include "SWGUserSummaryDataResponse.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGUserSummaryDataResponse::SWGUserSummaryDataResponse(QString* json) {
    init();
    this->fromJson(*json);
}

SWGUserSummaryDataResponse::SWGUserSummaryDataResponse() {
    init();
}

SWGUserSummaryDataResponse::~SWGUserSummaryDataResponse() {
    this->cleanup();
}

void
SWGUserSummaryDataResponse::init() {
    success = false;
message = new SWGUserSummaryData();
method = new QString("");
title = new QString("");
time = NULL;
}

void
SWGUserSummaryDataResponse::cleanup() {
    
if(message != NULL) {
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

SWGUserSummaryDataResponse*
SWGUserSummaryDataResponse::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGUserSummaryDataResponse::fromJsonObject(QJsonObject &pJson) {
    setValue(&success, pJson["success"], "bool", "");
setValue(&message, pJson["message"], "SWGUserSummaryData", "SWGUserSummaryData");
setValue(&method, pJson["method"], "QString", "QString");
setValue(&title, pJson["title"], "QString", "QString");
setValue(&time, pJson["time"], "QDateTime", "QDateTime");
}

QString
SWGUserSummaryDataResponse::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGUserSummaryDataResponse::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("success", QJsonValue(success));

    
    toJsonValue(QString("message"), message, obj, QString("SWGUserSummaryData"));
    
        

    
    toJsonValue(QString("method"), method, obj, QString("QString"));
    
        

    
    toJsonValue(QString("title"), title, obj, QString("QString"));
    
        

    
    toJsonValue(QString("time"), time, obj, QString("QDateTime"));
    
        

    return obj;
}

bool
SWGUserSummaryDataResponse::getSuccess() {
    return success;
}
void
SWGUserSummaryDataResponse::setSuccess(bool success) {
    this->success = success;
}

SWGUserSummaryData*
SWGUserSummaryDataResponse::getMessage() {
    return message;
}
void
SWGUserSummaryDataResponse::setMessage(SWGUserSummaryData* message) {
    this->message = message;
}

QString*
SWGUserSummaryDataResponse::getMethod() {
    return method;
}
void
SWGUserSummaryDataResponse::setMethod(QString* method) {
    this->method = method;
}

QString*
SWGUserSummaryDataResponse::getTitle() {
    return title;
}
void
SWGUserSummaryDataResponse::setTitle(QString* title) {
    this->title = title;
}

QDateTime*
SWGUserSummaryDataResponse::getTime() {
    return time;
}
void
SWGUserSummaryDataResponse::setTime(QDateTime* time) {
    this->time = time;
}



} /* namespace Swagger */

