//
//  PersonModel.swift
//  InsertModel
//
//  Created by FC on 17/3/26.
//  Copyright © 2017年 FC. All rights reserved.
//

import UIKit

class PersonModel: NSObject {

    var name : String?
    var phoneNum : Int = 0
    
//    init(dic:[String:Any]) {
//        super.init()
//        setValuesForKeys(dic)
//    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
