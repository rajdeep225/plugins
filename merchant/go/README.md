# Go API client for swagger

To generate an API key, please visit <a href='https://pay.coinsecure.in/payment-tools/api' target='_new' class='homeapi'>https://pay.coinsecure.in/payment-tools/api</a>.<br>Guidelines for use can be accessed at <a href='https://pay.coinsecure.in/api/guidelines'>https://pay.coinsecure.in/api/guidelines</a>.

## Overview
This API client was generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project.  By using the [swagger-spec](https://github.com/swagger-api/swagger-spec) from a remote server, you can easily generate an API client.

- API version: 1.0B
- Package version: 1.0.0
- Build date: 2016-06-26T17:28:02.961Z
- Build package: class io.swagger.codegen.languages.GoClientCodegen

## Installation
Put the package under your project folder and add the following in import:
```
    "./swagger"
```

## Documentation for API Endpoints

All URIs are relative to *https://pay.coinsecure.in/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*InvoiceActionsApi* | [**CreateNewInvoice**](docs/InvoiceActionsApi.md#createnewinvoice) | **Post** /invoice/createNewInvoice | NEW INVOICE
*InvoiceActionsApi* | [**LoadInvoice**](docs/InvoiceActionsApi.md#loadinvoice) | **Get** /invoice/{invoiceID} | 
*InvoiceDataApi* | [**GetCancInvoices**](docs/InvoiceDataApi.md#getcancinvoices) | **Post** /invoice/getCancInvoices | GET ALL CANCELLED INVOICES
*InvoiceDataApi* | [**GetCompleteInvoices**](docs/InvoiceDataApi.md#getcompleteinvoices) | **Post** /invoice/getCompleteInvoices | GET ALL COMPLETED INVOICES
*InvoiceDataApi* | [**GetConfInvoices**](docs/InvoiceDataApi.md#getconfinvoices) | **Post** /invoice/getConfInvoices | GET ALL CONFIRMED INVOICES
*InvoiceDataApi* | [**GetInvoiceFromID**](docs/InvoiceDataApi.md#getinvoicefromid) | **Get** /invoice/getInvoiceFromID/{invoiceID} | GET INVOICE FROM ID
*InvoiceDataApi* | [**GetPaidInvoices**](docs/InvoiceDataApi.md#getpaidinvoices) | **Post** /invoice/getPaidInvoices | GET ALL PAID INVOICES
*InvoiceDataApi* | [**GetRefundInvoices**](docs/InvoiceDataApi.md#getrefundinvoices) | **Post** /invoice/getRefundInvoices | GET ALL REFUND INVOICES
*InvoiceDataApi* | [**GetUnprocessedInvoices**](docs/InvoiceDataApi.md#getunprocessedinvoices) | **Post** /invoice/getUnprocessedInvoices | GET ALL UNPROCESSED INVOICES
*UserDataApi* | [**GetMerchant**](docs/UserDataApi.md#getmerchant) | **Get** /user/getMerchant | GET MERCHANT


## Documentation For Models

 - [ActionAnyContent](docs/ActionAnyContent.md)
 - [FailInvoice](docs/FailInvoice.md)
 - [FailMerchant](docs/FailMerchant.md)
 - [Invoice](docs/Invoice.md)
 - [InvoiceIdFull](docs/InvoiceIdFull.md)
 - [JsValue](docs/JsValue.md)
 - [Merchant](docs/Merchant.md)
 - [NewInvoice](docs/NewInvoice.md)
 - [SuccessInvoice](docs/SuccessInvoice.md)
 - [SuccessInvoices](docs/SuccessInvoices.md)
 - [SuccessMerchant](docs/SuccessMerchant.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author



