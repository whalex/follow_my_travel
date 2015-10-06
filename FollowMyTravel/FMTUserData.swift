//
//  UserData.swift
//  zpice
//
//  Created by Mac on 7/24/15.
//  Copyright (c) 2015 AVALONcomu. All rights reserved.
//

import Foundation

struct FMTUserData {
    var email:String
    var username:String
    
    init(email:String,username:String,famePoints:Int,is_top_reporter:Bool){
        self.email = email
        self.username = username
    }

}