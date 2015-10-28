//
//  FMTSignInViewController.swift
//  FollowMyTravel
//
//  Created by Mac on 9/5/15.
//  Copyright (c) 2015 whalex. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class FMTSignInViewController: UIViewController, FBSDKLoginButtonDelegate, FBSDKGraphRequestConnectionDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let signInB = FBSDKLoginButton()
        signInB.center = self.view.center
        self.view.addSubview(signInB)
        signInB.readPermissions = ["public_profile", "email", "user_friends"]
        signInB.delegate = self
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if error == nil{
//            var myToken = FBSession.activeSession().accessTokenData.accessToken
        }else{
            print("Login error")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        let URLParameters = ["fields":"id,email,name,first_name,last_name"]
        
        let request = FBSDKGraphRequest(graphPath:"me", parameters:URLParameters)
        
        // Send request to Facebook
        request.startWithCompletionHandler {
            
            (connection, result, error) in
            
            if error != nil {
                // Some error checking here
                print(error)
            }
            else if let userData = result as? [String:AnyObject] {
                
                // Access user data
                let username = userData["name"] as? String
                print("username: \(username)")
                // ....
            }
        }

    }

    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        
    }
    
    func requestConnection(connection: FBSDKGraphRequestConnection!, didFailWithError error: NSError!) {
        print("Graph request error")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
