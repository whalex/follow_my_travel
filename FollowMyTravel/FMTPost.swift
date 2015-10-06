//
//  Post.swift
//  zpiceFeed
//
//  Created by Mac on 4/18/15.
//  Copyright (c) 2015 AVALONcomu. All rights reserved.
//

import UIKit

class FMTPost: NSObject{
    var id:Int
    var text:String
    var type:String
    var expire:String
    var upvotes:Int
    var downvotes:Int
    var replies:Int
    var picture_url:String
    var picture:UIImage?
    var video_url:String
    var rating:Int
    var hits:Int
    var fence_name:String
    var category:String
    var isAnonymous:Bool
    var isHipe:Bool
    var user:FMTUserData?
    var postHeadline:String!
    
    
    init(id: Int, text: String, type: String,expire: String, upvotes: Int, downvotes: Int, replies: Int, picture_url: String, video_url: String, rating: Int, hits: Int, fence_name: String, category: String, isAnonymous: Bool, user: FMTUserData?,isHipe: Bool, postHeadline:String){
        self.id = id
        self.text = text
        self.type = type
        self.expire = expire
        self.upvotes = upvotes
        self.downvotes = downvotes
        self.replies = replies
        self.picture_url = picture_url
        self.video_url = video_url
        self.rating = rating
        self.hits = hits
        self.fence_name = fence_name
        self.category = category
        self.isAnonymous = isAnonymous
        self.user = user
        self.isHipe = isHipe
        self.postHeadline = postHeadline
    }
}