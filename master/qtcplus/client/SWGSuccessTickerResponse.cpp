
#include "SWGSuccessTickerResponse.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGSuccessTickerResponse::SWGSuccessTickerResponse(QString* json) {
    init();
    this->fromJson(*json);
}

SWGSuccessTickerResponse::SWGSuccessTickerResponse() {
    init();
}

SWGSuccessTickerResponse::~SWGSuccessTickerResponse() {
    this->cleanup();
}

void
SWGSuccessTickerResponse::init() {
    lastPrice = 0L;
timestamp = 0L;
bid = 0L;
ask = 0L;
fiatVolume = 0L;
coinVolume = 0L;
open = 0L;
high = 0L;
low = 0L;
}

void
SWGSuccessTickerResponse::cleanup() {
    








}

SWGSuccessTickerResponse*
SWGSuccessTickerResponse::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGSuccessTickerResponse::fromJsonObject(QJsonObject &pJson) {
    setValue(&lastPrice, pJson["lastPrice"], "qint64", "");
setValue(&timestamp, pJson["timestamp"], "qint64", "");
setValue(&bid, pJson["bid"], "qint64", "");
setValue(&ask, pJson["ask"], "qint64", "");
setValue(&fiatVolume, pJson["fiatVolume"], "qint64", "");
setValue(&coinVolume, pJson["coinVolume"], "qint64", "");
setValue(&open, pJson["open"], "qint64", "");
setValue(&high, pJson["high"], "qint64", "");
setValue(&low, pJson["low"], "qint64", "");
}

QString
SWGSuccessTickerResponse::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGSuccessTickerResponse::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    obj->insert("lastPrice", QJsonValue(lastPrice));
obj->insert("timestamp", QJsonValue(timestamp));
obj->insert("bid", QJsonValue(bid));
obj->insert("ask", QJsonValue(ask));
obj->insert("fiatVolume", QJsonValue(fiatVolume));
obj->insert("coinVolume", QJsonValue(coinVolume));
obj->insert("open", QJsonValue(open));
obj->insert("high", QJsonValue(high));
obj->insert("low", QJsonValue(low));

    return obj;
}

qint64
SWGSuccessTickerResponse::getLastPrice() {
    return lastPrice;
}
void
SWGSuccessTickerResponse::setLastPrice(qint64 lastPrice) {
    this->lastPrice = lastPrice;
}

qint64
SWGSuccessTickerResponse::getTimestamp() {
    return timestamp;
}
void
SWGSuccessTickerResponse::setTimestamp(qint64 timestamp) {
    this->timestamp = timestamp;
}

qint64
SWGSuccessTickerResponse::getBid() {
    return bid;
}
void
SWGSuccessTickerResponse::setBid(qint64 bid) {
    this->bid = bid;
}

qint64
SWGSuccessTickerResponse::getAsk() {
    return ask;
}
void
SWGSuccessTickerResponse::setAsk(qint64 ask) {
    this->ask = ask;
}

qint64
SWGSuccessTickerResponse::getFiatVolume() {
    return fiatVolume;
}
void
SWGSuccessTickerResponse::setFiatVolume(qint64 fiatVolume) {
    this->fiatVolume = fiatVolume;
}

qint64
SWGSuccessTickerResponse::getCoinVolume() {
    return coinVolume;
}
void
SWGSuccessTickerResponse::setCoinVolume(qint64 coinVolume) {
    this->coinVolume = coinVolume;
}

qint64
SWGSuccessTickerResponse::getOpen() {
    return open;
}
void
SWGSuccessTickerResponse::setOpen(qint64 open) {
    this->open = open;
}

qint64
SWGSuccessTickerResponse::getHigh() {
    return high;
}
void
SWGSuccessTickerResponse::setHigh(qint64 high) {
    this->high = high;
}

qint64
SWGSuccessTickerResponse::getLow() {
    return low;
}
void
SWGSuccessTickerResponse::setLow(qint64 low) {
    this->low = low;
}



} /* namespace Swagger */

