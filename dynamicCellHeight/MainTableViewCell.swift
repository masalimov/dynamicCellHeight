//
//  MainTableViewCell.swift
//  dynamicCellHeight
//
//  Created by madmir on 22.01.16.
//  Copyright © 2016 madmir. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
   
   var cellHeight: NSLayoutConstraint!
   
   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      self.setupCell()
   }

   required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      self.setupCell()
   }
   
   func setupCell() {
      self.cellHeight = NSLayoutConstraint(item: self.contentView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: 40.0)
      self.contentView.addConstraint(self.cellHeight)
   }
   
   func setHeight(height: CGFloat) {
      self.cellHeight.constant = height
      self.contentView.setNeedsUpdateConstraints()
   }
   
}
