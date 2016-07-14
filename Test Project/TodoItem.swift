//
//  TodoItem.swift
//  Test Project
//
//  Created by Eric Quinones on 7/14/16.
//  Copyright © 2016 Eric Quinones. All rights reserved.
//

import Foundation

struct TodoItem {
    var title: String
    var deadline: NSDate
    var UUID: String
    
    init(deadline: NSDate, title: String, UUID: String){
        self.deadline = deadline
        self.title = title
        self.UUID = UUID
    }
    
    var isOverdue: Bool {
        // Optionally, you can omit "NSComparisonResult" and just type .OrderDescending
        return (NSDate().compare(self.deadline) == NSComparisonResult.OrderedDescending) // deadline is earlier than current date
    }
}