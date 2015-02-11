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
    let db = Database("path/to/db.sqlite3")
    var  databasePath:String = ""
    
    func createDB() {
        let users = db["users"]
        let id = Expression<Int>("id")
        let email = Expression<String>("email")
        let balance = Expression<Double>("balance")
        let verified = Expression<Bool>("verified")
        
        
        
        db.create(table: users) { t in     // CREATE TABLE "users" (
            t.column(id, primaryKey: true) //     "id" INTEGER PRIMARY KEY NOT NULL,
            t.column(email, unique: true)  //     "email" TEXT UNIQUE NOT NULL,
            t.column(name)                 //     "name" TEXT
        }                                  // )
    }
    func getSharedInstance() ->DBManager {
        return self
    }
    func saveData() {
        
    }
}