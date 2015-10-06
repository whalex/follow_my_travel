//
//  ZPCTabBarController.swift
//  zpice
//
//  Created by Mac on 7/31/15.
//  Copyright (c) 2015 AVALONcomu. All rights reserved.
//

import UIKit

class FMTTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.translucent = false
        
        let first_storyboard = UIStoryboard(name: "NewsFeed", bundle: NSBundle.mainBundle())
        let vc1 = first_storyboard.instantiateViewControllerWithIdentifier("feed") 
        let second_storyboard = UIStoryboard(name: "Search", bundle: NSBundle.mainBundle())
        let vc2 = second_storyboard.instantiateViewControllerWithIdentifier("search") 
        let third_storyboard = UIStoryboard(name: "AddPlace", bundle: NSBundle.mainBundle())
        let vc3 = third_storyboard.instantiateViewControllerWithIdentifier("add_place") 
        let forth_storyboard = UIStoryboard(name: "Guides", bundle: NSBundle.mainBundle())
        let vc4 = forth_storyboard.instantiateViewControllerWithIdentifier("guides") 
        let fifth_storyboard = UIStoryboard(name: "Profile", bundle: NSBundle.mainBundle())
        let vc5 = fifth_storyboard.instantiateViewControllerWithIdentifier("profile") 
        
        let controllers = [vc1, vc2, vc3, vc4, vc5]
        self.viewControllers = controllers
        
//        let vc1Item = tabBar.items![0] as! UITabBarItem
//        let vc2Item = tabBar.items![1] as! UITabBarItem
//        let vc3Item = tabBar.items![2] as! UITabBarItem
//        let vc4Item = tabBar.items![3] as! UITabBarItem
//        let vc5Item = tabBar.items![4] as! UITabBarItem
//        vc1Item.selectedImage = UIImage(named: "feed")
//        vc2Item.selectedImage = UIImage(named: "search")
//        vc3Item.selectedImage = UIImage(named: "plus")
//        vc4Item.selectedImage = UIImage(named: "guides")
//        vc5Item.selectedImage = UIImage(named: "profile")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        print("Selected tabBar:\(tabBar.selectedItem)")
    }
   
}