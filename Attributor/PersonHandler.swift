//
//  PersonHandler.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import Foundation
import SQLite
class PersonHandler {
    func getPersonByID() ->Person {
        
        
        
        return Person(personName: "Default", sortedString:"Default", gender: "Default", imageIcon: "Default", registerTime: NSDate())
    }
    
}