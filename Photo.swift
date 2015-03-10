//
//  Photo.swift
//  Attributor
//
//  Created by 许Bill on 15-2-13.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import Foundation
import CoreData

class Photo: NSManagedObject {

    @NSManaged var photographer: String
    @NSManaged var takenDate: NSDate
    func getP()->NSString {
        return self.photographer
    }
}
