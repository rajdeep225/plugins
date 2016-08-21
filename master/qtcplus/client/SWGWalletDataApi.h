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

#ifndef _SWG_SWGWalletDataApi_H_
#define _SWG_SWGWalletDataApi_H_

#include "SWGHttpRequest.h"

#include <QString>
#include "SWGFailResult.h"
#include "SWGWalletAddressDataResponse.h"
#include "SWGWalletsDataResponse.h"
#include "SWGWalletCoinWithdrawDataResponse.h"

#include <QObject>

namespace Swagger {

class SWGWalletDataApi: public QObject {
    Q_OBJECT

public:
    SWGWalletDataApi();
    SWGWalletDataApi(QString host, QString basePath);
    ~SWGWalletDataApi();

    QString host;
    QString basePath;

    void /v1/user/wallet/coin/address/WalletID(QString* walletID, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/deposit/confirmed/WalletID(QString* walletID, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/deposit/confirmed/all(QString* authorization, QString* accept);
    void /v1/user/wallet/coin/deposit/unconfirmed/WalletID(QString* walletID, QString* authorization, QString* accept);
    void /v1/user/wallet/coin/deposit/unconfirmed/all(QString* authorization, QString* accept);
    void /v1/user/wallet/coin/wallets(QString* authorization, QString* accept);
    void /v1/wallet/withdraw/cancelled(QString* authorization, QString* accept);
    void /v1/wallet/withdraw/completed(QString* authorization, QString* accept);
    void /v1/wallet/withdraw/unverified(QString* authorization, QString* accept);
    void /v1/wallet/withdraw/verified(QString* authorization, QString* accept);
    
private:
    void /v1/user/wallet/coin/address/WalletIDCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/deposit/confirmed/WalletIDCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/deposit/confirmed/allCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/deposit/unconfirmed/WalletIDCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/deposit/unconfirmed/allCallback (HttpRequestWorker * worker);
    void /v1/user/wallet/coin/walletsCallback (HttpRequestWorker * worker);
    void /v1/wallet/withdraw/cancelledCallback (HttpRequestWorker * worker);
    void /v1/wallet/withdraw/completedCallback (HttpRequestWorker * worker);
    void /v1/wallet/withdraw/unverifiedCallback (HttpRequestWorker * worker);
    void /v1/wallet/withdraw/verifiedCallback (HttpRequestWorker * worker);
    
signals:
    void /v1/user/wallet/coin/address/WalletIDSignal(SWGWalletAddressDataResponse* summary);
    void /v1/user/wallet/coin/deposit/confirmed/WalletIDSignal(SWGWalletAddressDataResponse* summary);
    void /v1/user/wallet/coin/deposit/confirmed/allSignal(SWGWalletAddressDataResponse* summary);
    void /v1/user/wallet/coin/deposit/unconfirmed/WalletIDSignal();
    void /v1/user/wallet/coin/deposit/unconfirmed/allSignal();
    void /v1/user/wallet/coin/walletsSignal(SWGWalletsDataResponse* summary);
    void /v1/wallet/withdraw/cancelledSignal(SWGWalletCoinWithdrawDataResponse* summary);
    void /v1/wallet/withdraw/completedSignal(SWGWalletCoinWithdrawDataResponse* summary);
    void /v1/wallet/withdraw/unverifiedSignal(SWGWalletCoinWithdrawDataResponse* summary);
    void /v1/wallet/withdraw/verifiedSignal(SWGWalletCoinWithdrawDataResponse* summary);
    
};
}
#endif
