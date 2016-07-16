#include "SWGExchangeBankCoinDataApi.h"
#include "SWGHelpers.h"
#include "SWGModelFactory.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace Swagger {
SWGExchangeBankCoinDataApi::SWGExchangeBankCoinDataApi() {}

SWGExchangeBankCoinDataApi::~SWGExchangeBankCoinDataApi() {}

SWGExchangeBankCoinDataApi::SWGExchangeBankCoinDataApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/addresses(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/addresses");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/addressesCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/addressesCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeAddressDataResponse* output = static_cast<SWGTradeAddressDataResponse*>(create(json, QString("SWGTradeAddressDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/addressesSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/available(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/balance/total");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/availableCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/availableCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGVolDataResponse* output = static_cast<SWGVolDataResponse*>(create(json, QString("SWGVolDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/balance/availableSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/pending(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/balance/pending");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/pendingCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/pendingCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGVolDataResponse* output = static_cast<SWGVolDataResponse*>(create(json, QString("SWGVolDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/balance/pendingSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/total(QString* authorization, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/balance/available");



    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/totalCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/balance/totalCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGVolDataResponse* output = static_cast<SWGVolDataResponse*>(create(json, QString("SWGVolDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/balance/totalSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/cancelled(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/deposit/cancelled");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/cancelledCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/cancelledCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGCoinDepDataResponse* output = static_cast<SWGCoinDepDataResponse*>(create(json, QString("SWGCoinDepDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/deposit/cancelledSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/unverified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/deposit/unverified");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/unverifiedCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/unverifiedCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGCoinDepDataResponse* output = static_cast<SWGCoinDepDataResponse*>(create(json, QString("SWGCoinDepDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/deposit/unverifiedSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/verified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/deposit/verified");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/verifiedCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/deposit/verifiedCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGCoinDepDataResponse* output = static_cast<SWGCoinDepDataResponse*>(create(json, QString("SWGCoinDepDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/deposit/verifiedSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/cancelled(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/withdraw/cancelled");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/cancelledCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/cancelledCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeCoinWithdrawDataResponse* output = static_cast<SWGTradeCoinWithdrawDataResponse*>(create(json, QString("SWGTradeCoinWithdrawDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/withdraw/cancelledSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/completed(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/withdraw/completed");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/completedCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/completedCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeCoinWithdrawDataResponse* output = static_cast<SWGTradeCoinWithdrawDataResponse*>(create(json, QString("SWGTradeCoinWithdrawDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/withdraw/completedSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/unverified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/withdraw/unverified");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/unverifiedCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/unverifiedCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeCoinWithdrawDataResponse* output = static_cast<SWGTradeCoinWithdrawDataResponse*>(create(json, QString("SWGTradeCoinWithdrawDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/withdraw/unverifiedSignal(output);
    
}
void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/verified(QString* authorization, qint64 from, qint64 to, qint32 max, qint64 offset, QString* accept) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/v1/user/exchange/bank/coin/withdraw/verified");


    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("from"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(from)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("to"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(to)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("max"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(max)));

    if (fullPath.indexOf("?") > 0) 
      fullPath.append("&");
    else 
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(offset)));


    HttpRequestWorker *worker = new HttpRequestWorker();
    HttpRequestInput input(fullPath, "GET");

    


    // TODO: add header support
    // TODO: add header support

    connect(worker,
            &HttpRequestWorker::on_execution_finished,
            this,
            &SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/verifiedCallback);

    worker->execute(&input);
}

void
SWGExchangeBankCoinDataApi::/v1/user/exchange/bank/coin/withdraw/verifiedCallback(HttpRequestWorker * worker) {
    QString msg;
    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    
        QString json(worker->response);
    SWGTradeCoinWithdrawDataResponse* output = static_cast<SWGTradeCoinWithdrawDataResponse*>(create(json, QString("SWGTradeCoinWithdrawDataResponse")));
    

    worker->deleteLater();

    emit /v1/user/exchange/bank/coin/withdraw/verifiedSignal(output);
    
}
} /* namespace Swagger */
