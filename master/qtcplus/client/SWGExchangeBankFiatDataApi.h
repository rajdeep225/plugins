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

#ifndef _SWG_SWGExchangeBankFiatDataApi_H_
#define _SWG_SWGExchangeBankFiatDataApi_H_

#include "SWGHttpRequest.h"

#include <QString>
#include "SWGFiatBankDataResponse.h"
#include "SWGFailResult.h"
#include "SWGRateDataResponse.h"
#include "SWGFiatDepDataResponse.h"
#include "SWGFiatWithDataResponse.h"

#include <QObject>

namespace Swagger {

class SWGExchangeBankFiatDataApi: public QObject {
    Q_OBJECT

public:
    SWGExchangeBankFiatDataApi();
    SWGExchangeBankFiatDataApi(QString host, QString basePath);
    ~SWGExchangeBankFiatDataApi();

    QString host;
    QString basePath;

    void /v1/user/exchange/bank/fiat/accounts(QString* authorization, QString* accept);
    void /v1/user/exchange/bank/fiat/balance/available(QString* authorization, QString* accept);
    void /v1/user/exchange/bank/fiat/balance/pending(QString* authorization, QString* accept);
    void /v1/user/exchange/bank/fiat/balance/total(QString* authorization, QString* accept);
    void /v1/user/exchange/bank/fiat/deposit/cancelled(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/deposit/unverified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/deposit/verified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/withdraw/cancelled(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/withdraw/completed(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/withdraw/unverified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    void /v1/user/exchange/bank/fiat/withdraw/verified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept);
    
private:
    void /v1/user/exchange/bank/fiat/accountsCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/balance/availableCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/balance/pendingCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/balance/totalCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/deposit/cancelledCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/deposit/unverifiedCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/deposit/verifiedCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/withdraw/cancelledCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/withdraw/completedCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/withdraw/unverifiedCallback (HttpRequestWorker * worker);
    void /v1/user/exchange/bank/fiat/withdraw/verifiedCallback (HttpRequestWorker * worker);
    
signals:
    void /v1/user/exchange/bank/fiat/accountsSignal(SWGFiatBankDataResponse* summary);
    void /v1/user/exchange/bank/fiat/balance/availableSignal(SWGRateDataResponse* summary);
    void /v1/user/exchange/bank/fiat/balance/pendingSignal(SWGRateDataResponse* summary);
    void /v1/user/exchange/bank/fiat/balance/totalSignal(SWGRateDataResponse* summary);
    void /v1/user/exchange/bank/fiat/deposit/cancelledSignal(SWGFiatDepDataResponse* summary);
    void /v1/user/exchange/bank/fiat/deposit/unverifiedSignal(SWGFiatDepDataResponse* summary);
    void /v1/user/exchange/bank/fiat/deposit/verifiedSignal(SWGFiatDepDataResponse* summary);
    void /v1/user/exchange/bank/fiat/withdraw/cancelledSignal(SWGFiatWithDataResponse* summary);
    void /v1/user/exchange/bank/fiat/withdraw/completedSignal(SWGFiatWithDataResponse* summary);
    void /v1/user/exchange/bank/fiat/withdraw/unverifiedSignal(SWGFiatWithDataResponse* summary);
    void /v1/user/exchange/bank/fiat/withdraw/verifiedSignal(SWGFiatWithDataResponse* summary);
    
};
}
#endif
