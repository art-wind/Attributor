//
//  GalleryPicture.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import Foundation
class GalleryPicture {
    
    let liveState:Bit =  Bit(rawValue: 0)!
    let zombieState:Bit =  Bit(rawValue: 1)!
    
    var image:String = "default"
    var comment:String?
    var date:String = "now"
    var state:Bit?
    init(){
        comment = ""
        state = liveState
    }
    func setAtttribute(imageIcon image:String,attachedText comment:String, establishedTime date:String, state:Bit){
        self.image = image
        self.comment = comment
        self.date = date
        self.state = state
        
    }
    
}