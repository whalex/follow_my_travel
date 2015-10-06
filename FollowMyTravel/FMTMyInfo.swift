//
//  MyInfo.swift
//  zpice
//
//  Created by Mac on 6/28/15.
//  Copyright (c) 2015 AVALONcomu. All rights reserved.
//

import UIKit

class FMTMyInfo : NSObject{
    var id:Int
    var email:String
    var gender:String
    var born_on:String
    var is_confirmed:Bool
    var unlocked_places_count:String

    init(id:Int,email:String,gender:String,born_on:String,is_confirmed:Bool,unlocked_places_count: String){
        self.id = id
        self.email = email
        self.gender = gender
        self.born_on = born_on
        self.is_confirmed = is_confirmed
        self.unlocked_places_count = unlocked_places_count
    }
    
    init(info:FMTMyInfo){
        self.id = info.valueForKey("id") as! Int
        self.email = info.valueForKey("email") as! String
        self.gender = info.valueForKey("gender") as! String
        self.born_on = info.valueForKey("born_on") as! String
        self.is_confirmed = info.valueForKey("is_confirmed") as! Bool
        self.unlocked_places_count = info.valueForKey("recently_unlocked_places_count") as! String
    }
}