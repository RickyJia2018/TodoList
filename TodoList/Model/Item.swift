//
//  Item.swift
//  TodoList
//
//  Created by Ningqian Jia on 2018-09-20.
//  Copyright © 2018 RickyJia. All rights reserved.
//

import Foundation

class Item : Codable{
    var title : String = ""
    var done : Bool = false
    init(title:String) {
        self.title = title
    
    }
   
}
