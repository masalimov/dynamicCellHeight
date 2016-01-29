//
//  MainTableViewController.swift
//  dynamicCellHeight
//
//  Created by madmir on 22.01.16.
//  Copyright © 2016 madmir. All rights reserved.
//

import UIKit

let tableRows = ["Row 1", "Row 2", "Row 3", "Row 4", "Row 5"]

class MainTableViewController: UITableViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.tableView.registerClass(MainTableViewCell.self, forCellReuseIdentifier: "myCell")
      self.tableView.rowHeight = UITableViewAutomaticDimension
   }
   
   // MARK: - Table view data source
   
   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1
   }
   
   override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return tableRows.count
   }
   
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! MainTableViewCell
      
      cell.setHeight(CGFloat(indexPath.row + 1) * CGFloat(40.0))
      cell.textLabel?.text = tableRows[indexPath.row]
      
      return cell
   }
   
   // MARK: - Table view delegate
   
   override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
      return UITableViewAutomaticDimension
   }

   override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
      return UITableViewAutomaticDimension
   }
}
