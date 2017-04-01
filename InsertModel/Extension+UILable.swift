//
//  Extension+UILable.swift
//  InsertModel
//
//  Created by FC on 17/3/26.
//  Copyright © 2017年 FC. All rights reserved.
//

import UIKit

extension UILabel{

   convenience init(text:String,frame: CGRect) {
        self.init()
        self.text=text
        self.frame=frame
    }
}

extension UITextField{

    
    convenience init(placeholder:String,frame: CGRect,font:UIFont) {
        self.init()
        self.placeholder=placeholder
        self.frame=frame
        self.font=font
        self.borderStyle=UITextBorderStyle.roundedRect
    }
}

extension UIButton {

    convenience init(titlename:String,frame: CGRect) {
        self.init()
        self.backgroundColor=UIColor.red
        self.setTitle(titlename, for: UIControlState.normal)
        self.frame=frame
    }
    
}






