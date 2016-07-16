//
// WalletsData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class WalletsData: JSONEncodable {
    public var walletID: String?
    public var name: String?
    public var coinBalance: Int64?
    public var time: Int64?
    public var info: String?
    public var netki: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["walletID"] = self.walletID
        nillableDictionary["name"] = self.name
        nillableDictionary["coinBalance"] = self.coinBalance?.encodeToJSON()
        nillableDictionary["time"] = self.time?.encodeToJSON()
        nillableDictionary["info"] = self.info
        nillableDictionary["netki"] = self.netki
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}