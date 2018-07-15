//
//  ChartSource.swift
//  iosStock
//
//  Created by chang on 2018/6/27.
//  Copyright © 2018年 chang. All rights reserved.
//

import Foundation
import RealmSwift

class ChartSource: Object {
    
    @objc dynamic var itemId: Int = 0
    
    @objc dynamic var stockNumber: String = ""
    @objc dynamic var dataOrder: String = ""
    @objc dynamic var ticker: String = ""
    @objc dynamic var date: String = ""
    @objc dynamic var open: String = ""
    @objc dynamic var high: String = ""
    @objc dynamic var low: String = ""
    @objc dynamic var close: String = ""
    @objc dynamic var adjClose: String = ""
    @objc dynamic var volume: String = ""
    @objc dynamic var tradeMethod: String = ""
    @objc dynamic var userTrade: String = ""
    
    override static func primaryKey() -> String? {
        return "itemId"
    }
    
    func incrementID() -> Int {
        let realm = try! Realm()
        return (realm.objects(ChartSource.self).max(ofProperty: "itemId") as Int? ?? 0) + 1
    }
}
