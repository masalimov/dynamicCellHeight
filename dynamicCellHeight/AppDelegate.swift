//
//  AppDelegate.swift
//  dynamicCellHeight
//
//  Created by madmir on 22.01.16.
//  Copyright © 2016 madmir. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?


   func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
      self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
      
      self.window?.backgroundColor = UIColor.whiteColor()
      self.window?.rootViewController = MainTableViewController()
      self.window?.makeKeyAndVisible()
      return true
   }

}

