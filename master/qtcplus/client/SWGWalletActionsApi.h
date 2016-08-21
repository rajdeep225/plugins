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

#ifndef _SWG_SWGWalletActionsApi_H_
#define _SWG_SWGWalletActionsApi_H_

#include "SWGHttpRequest.h"

#include <QString>
#include "SWGNewAddress.h"
#include "SWGFailResult.h"
#include "SWGWalletAddressDataResponse.h"
#include "SWGNewWallet.h"
#include "SWGSendCoinWallet.h"
#include "SWGSuccessResult.h"
#include "SWGSendExchange.h"
#include "SWGCode.h"
#include "SWGWithdrawID.h"

#include <QObject>

namespace Swagger {

class SWGWalletActionsApi: public QObject {
    Q_OBJECT

public:
    SWGWalletActionsApi();
    SWGWalletActionsApi(QString host, QString basePath);
    ~SWGWalletActionsApi();

    QString host;
    QString basePath;

    void /v1/user/wallet/coin/address/new(SWGNewAddress body, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/new(SWGNewWallet body, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/withdraw/initiate(SWGSendCoinWallet body, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/withdraw/sendToExchange(SWGSendExchange body, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/withdraw/unverified/cancel/WithdrawID(QString* withdrawID, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/withdraw/verify(QString* authorization, SWGCode body, QString* accept);
    void /v1/wallet/coin/withdraw/newVerifycode(SWGWithdrawID body, QString* authorization, QString* accept);
    
private:
    void /v1/user/wallet/coin/address/newCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/newCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/withdraw/initiateCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/withdraw/sendToExchangeCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/withdraw/unverified/cancel/WithdrawIDCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/withdraw/verifyCallback (HttpRequestWorker * worker);
    void /v1/wallet/coin/withdraw/newVerifycodeCallback (HttpRequestWorker * worker);
    
signals:
    void /v1/user/wallet/coin/address/newSignal(SWGWalletAddressDataResponse* summary);
    void /v1/user/wallet/coin/newSignal(SWGWalletAddressDataResponse* summary);
    void /v1/user/wallet/coin/withdraw/initiateSignal(SWGSuccessResult* summary);
    void /v1/user/wallet/coin/withdraw/sendToExchangeSignal(SWGSuccessResult* summary);
    void /v1/user/wallet/coin/withdraw/unverified/cancel/WithdrawIDSignal(SWGSuccessResult* summary);
    void /v1/user/wallet/coin/withdraw/verifySignal(SWGSuccessResult* summary);
    void /v1/wallet/coin/withdraw/newVerifycodeSignal(SWGSuccessResult* summary);
    
};
}
#endif
