//
//  AppDelegate.swift
//  dynamicCellHeight
//
//  Created by Dmitriy Masalimov on 22.01.16.
//  Copyright © 2016 Dmitriy Masalimov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?

   func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
      self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
      
      let navController = UINavigationController()
      navController.addChildViewController(MainTableViewController())
      
      self.window?.backgroundColor = UIColor.whiteColor()
      self.window?.rootViewController = navController
      self.window?.makeKeyAndVisible()
      return true
   }

}

