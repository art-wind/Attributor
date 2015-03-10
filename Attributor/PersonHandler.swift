//
//  PersonHandler.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import Foundation
import SQLite
struct PersonHandler {
   
    static var id = Expression<Int>("id")
    static var name = Expression<String>("name")
    static var sortedName = Expression<String>("sortedName")
    static var icon = Expression<String>("icon")
    static var gender = Expression<String>("gender")
    static var registerTime = Expression<String>("registerTime")

    
    static func createPersonTable() {
        let db = DBManager().getSharedInstance()
        let person = db["person"]
        db.create(table: person) { t in
            t.column(self.id, primaryKey: true)
            t.column(self.name)
            t.column(self.sortedName)
            t.column(self.gender)
            t.column(self.icon)
            t.column(self.registerTime)
        }
//
//        person.insert(self.id <- 4, self.name <- "alice@mac.com",self.sortedName <- "ss" , self.gender <- "s",
//            self.icon <- "icon" , self.registerTime <- "Now")!
        //
    }
    static func getPersonByID() ->[Person] {
        
        let db = DBManager().getSharedInstance()
        let persons = db["person"]
//        let quirt = "\(person[self.name])"
        println()
        var retPersons = [Person]()
        for person in persons {
            println("Find my name: \(person[self.name])")
            let name = "\(person[self.name])"
            let sortedName = "\(person[self.sortedName])"
            let gender = "\(person[self.gender])"
            let imageIcon = "\(person[self.icon])"
            let registerTime = NSDate()
            retPersons.append(
                Person(personName: name, sortedString: sortedName, gender: gender, imageIcon: imageIcon, registerTime: NSDate()))
            // id: 1, name: Optional("Alice"), email: alice@mac.com
        }
        return retPersons
    }
    static func insertPerson(personToBeInserted person:Person)->Int {
        let db = DBManager().getSharedInstance()
        let persons = db["person"]
        
        let name = person.personName
        let sortedName = person.sortedString
        let gender = person.gender
        let imageIcon = person.imageIcon
        let registerTime = NSDate()
        
        
        return persons.insert( self.name <- name,self.sortedName <- sortedName , self.gender <- gender,self.icon <- imageIcon , self.registerTime <- "Now")!
        
    }
   
    
}