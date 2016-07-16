#include "SWGAccountDataApi.h"
#include "SWGHelpers.h"
#include "SWGModelFactory.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace Swagger {
SWGAccountDataApi::SWGAccountDataApi() {}

SWGAccountDataApi::~SWGAccountDataApi() {}

SWGAccountDataApi::SWGAccountDataApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
SWGAccountDataApi::/v1/exchange/bank/summary(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/summary");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/exchange/bank/summaryCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/exchange/bank/summaryCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGBankSummaryDataResponse* output = static_cast<SWGBankSummaryDataResponse*>(create(json, QString("SWGBankSummaryDataResponse")));
    

    worker->deleteLater();

    emit /v1/exchange/bank/summarySignal(output);
    
}
void
SWGAccountDataApi::/v1/exchange/user/coin/fee(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/coin/fee");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/exchange/user/coin/feeCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/exchange/user/coin/feeCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGDoubleDataResponse* output = static_cast<SWGDoubleDataResponse*>(create(json, QString("SWGDoubleDataResponse")));
    

    worker->deleteLater();

    emit /v1/exchange/user/coin/feeSignal(output);
    
}
void
SWGAccountDataApi::/v1/exchange/user/fiat/fee(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/fiat/fee");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/exchange/user/fiat/feeCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/exchange/user/fiat/feeCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGDoubleDataResponse* output = static_cast<SWGDoubleDataResponse*>(create(json, QString("SWGDoubleDataResponse")));
    

    worker->deleteLater();

    emit /v1/exchange/user/fiat/feeSignal(output);
    
}
void
SWGAccountDataApi::/v1/netki/search/NetkiName(QString* netkiName, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/netki/search/{netkiName}");

    QString netkiNamePathParam("{"); netkiNamePathParam.append("netkiName").append("}");
    fullPath.replace(netkiNamePathParam, stringValue(netkiName));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/netki/search/NetkiNameCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/netki/search/NetkiNameCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGDoubleDataResponse* output = static_cast<SWGDoubleDataResponse*>(create(json, QString("SWGDoubleDataResponse")));
    

    worker->deleteLater();

    emit /v1/netki/search/NetkiNameSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/kycs(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/kycs");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/kycsCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/kycsCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGKYCDataResponse* output = static_cast<SWGKYCDataResponse*>(create(json, QString("SWGKYCDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/kycsSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/referral/coin/paid(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/referral/coin/paid");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/referral/coin/paidCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/referral/coin/paidCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGSuccCoinRefDataResponse* output = static_cast<SWGSuccCoinRefDataResponse*>(create(json, QString("SWGSuccCoinRefDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/referral/coin/paidSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/referral/coin/successful(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/referral/coin/successful");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/referral/coin/successfulCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/referral/coin/successfulCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGSuccRefDataResponse* output = static_cast<SWGSuccRefDataResponse*>(create(json, QString("SWGSuccRefDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/referral/coin/successfulSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/referral/fiat/paid(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/referral/fiat/paid");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/referral/fiat/paidCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/referral/fiat/paidCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGSuccCoinRefDataResponse* output = static_cast<SWGSuccCoinRefDataResponse*>(create(json, QString("SWGSuccCoinRefDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/referral/fiat/paidSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/referrals(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/referrals");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/referralsCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/referralsCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGAllRefDataResponse* output = static_cast<SWGAllRefDataResponse*>(create(json, QString("SWGAllRefDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/referralsSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/exchange/trade/summary(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/trade/summary");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/exchange/trade/summaryCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/exchange/trade/summaryCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeSummaryDataResponse* output = static_cast<SWGTradeSummaryDataResponse*>(create(json, QString("SWGTradeSummaryDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/trade/summarySignal(output);
    
}
void
SWGAccountDataApi::/v1/user/login/token/Token(QString* token, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/login/token/{token}");

    QString tokenPathParam("{"); tokenPathParam.append("token").append("}");
    fullPath.replace(tokenPathParam, stringValue(token));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/login/token/TokenCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/login/token/TokenCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGSuccessResult* output = static_cast<SWGSuccessResult*>(create(json, QString("SWGSuccessResult")));
    

    worker->deleteLater();

    emit /v1/user/login/token/TokenSignal(output);
    
}
void
SWGAccountDataApi::/v1/user/summary(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/summary");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/summaryCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/summaryCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGUserSummaryDataResponse* output = static_cast<SWGUserSummaryDataResponse*>(create(json, QString("SWGUserSummaryDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/summarySignal(output);
    
}
void
SWGAccountDataApi::/v1/user/wallet/summary(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/wallet/summary");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGAccountDataApi::/v1/user/wallet/summaryCallback);

    worker->execute(&input);
}

void
SWGAccountDataApi::/v1/user/wallet/summaryCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGWalletSummaryDataResponse* output = static_cast<SWGWalletSummaryDataResponse*>(create(json, QString("SWGWalletSummaryDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/wallet/summarySignal(output);
    
}
} /* namespace Swagger */
