//
//  ItemToDo.swift
//  Todoey
//
//  Created by Jesus Cueto on 8/7/18.
//  Copyright © 2018 Jesus Cueto. All rights reserved.
//

import Foundation

class ItemTodDo {
    var title: String?
    var done: Bool?
    static var sharedInstance: ItemTodDo?
    
    public class func shared() -> ItemTodDo {
        if self.sharedInstance == nil {
            sharedInstance = ItemTodDo()
        }
        return self.sharedInstance!
    }
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
    init() {}
}
