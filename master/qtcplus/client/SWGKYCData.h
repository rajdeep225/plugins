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

/*
 * SWGKYCData.h
 * 
 * 
 */

#ifndef SWGKYCData_H_
#define SWGKYCData_H_

#include <QJsonObject>


#include "SWGTimeKYCData.h"
#include <QString>

#include "SWGObject.h"


namespace Swagger {

class SWGKYCData: public SWGObject {
public:
    SWGKYCData();
    SWGKYCData(QString* json);
    virtual ~SWGKYCData();
    void init();
    void cleanup();

    QString asJson ();
    QJsonObject* asJsonObject();
    void fromJsonObject(QJsonObject &json);
    SWGKYCData* fromJson(QString &jsonString);

    SWGTimeKYCData* getTimeDetails();
    void setTimeDetails(SWGTimeKYCData* timeDetails);
QString* getKycID();
    void setKycID(QString* kycID);
QString* getFirstName();
    void setFirstName(QString* firstName);
QString* getLastName();
    void setLastName(QString* lastName);
QString* getStatus();
    void setStatus(QString* status);
QString* getUserType();
    void setUserType(QString* userType);
QString* getInfo();
    void setInfo(QString* info);

private:
    SWGTimeKYCData* timeDetails;
QString* kycID;
QString* firstName;
QString* lastName;
QString* status;
QString* userType;
QString* info;
};

} /* namespace Swagger */

#endif /* SWGKYCData_H_ */
