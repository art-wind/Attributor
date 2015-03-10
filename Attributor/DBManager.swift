//
//  DBManager.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import Foundation
import SQLite
class DBManager {
    var shareDB:Database?
    
   
    init(){
        var path = "/Users/xubill/workspace/xcode/Attributor/Attributor"
//        var path = NSSearchPathForDirectoriesInDomains(
//            .DocumentDirectory, .UserDomainMask, true
//        ).first as String
        let db = Database("\(path)/db.sqlite3")
        shareDB = db
    }
    func getSharedInstance() -> Database {
        return shareDB!
    }
//
//    
}