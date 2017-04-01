//
//  Tool.swift
//  InsertModel
//
//  Created by FC on 17/3/26.
//  Copyright © 2017年 FC. All rights reserved.
//

import UIKit


class Tool: NSObject {
  

}



func loadData(url:String,Success:(Any)->()){
    
    var array = [PersonModel]()
    
    var dic = [String:Any]()
    

    
    for i in 0..<30 {
        
        let per = PersonModel()
        dic = ["name":"小明\(i)","phoneNum":"1371813\(arc4random_uniform(100000))"]
        per.setValuesForKeys(dic)
        array.append(per)
    }

    Success(array)
    
}

     
