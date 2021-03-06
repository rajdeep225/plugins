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


#include "SWGRateDataResponse.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGRateDataResponse::SWGRateDataResponse(QString* json) {
    init();
    this->fromJson(*json);
}

SWGRateDataResponse::SWGRateDataResponse() {
    init();
}

SWGRateDataResponse::~SWGRateDataResponse() {
    this->cleanup();
}

void
SWGRateDataResponse::init() {
    success = false;
message = new SWGRateData();
method = new QString("");
title = new QString("");
time = NULL;
}

void
SWGRateDataResponse::cleanup() {
    
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

SWGRateDataResponse*
SWGRateDataResponse::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGRateDataResponse::fromJsonObject(QJsonObject &pJson) {
    setValue(&success, pJson["success"], "bool", "");
setValue(&message, pJson["message"], "SWGRateData", "SWGRateData");
setValue(&method, pJson["method"], "QString", "QString");
setValue(&title, pJson["title"], "QString", "QString");
setValue(&time, pJson["time"], "QDateTime", "QDateTime");
}

QString
SWGRateDataResponse::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGRateDataResponse::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("success", QJsonValue(success));

    
    toJsonValue(QString("message"), message, obj, QString("SWGRateData"));
    
        

    
    toJsonValue(QString("method"), method, obj, QString("QString"));
    
        

    
    toJsonValue(QString("title"), title, obj, QString("QString"));
    
        

    
    toJsonValue(QString("time"), time, obj, QString("QDateTime"));
    
        

    return obj;
}

bool
SWGRateDataResponse::getSuccess() {
    return success;
}
void
SWGRateDataResponse::setSuccess(bool success) {
    this->success = success;
}

SWGRateData*
SWGRateDataResponse::getMessage() {
    return message;
}
void
SWGRateDataResponse::setMessage(SWGRateData* message) {
    this->message = message;
}

QString*
SWGRateDataResponse::getMethod() {
    return method;
}
void
SWGRateDataResponse::setMethod(QString* method) {
    this->method = method;
}

QString*
SWGRateDataResponse::getTitle() {
    return title;
}
void
SWGRateDataResponse::setTitle(QString* title) {
    this->title = title;
}

QDateTime*
SWGRateDataResponse::getTime() {
    return time;
}
void
SWGRateDataResponse::setTime(QDateTime* time) {
    this->time = time;
}



} /* namespace Swagger */

