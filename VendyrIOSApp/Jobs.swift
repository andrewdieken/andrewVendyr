//
//  Jobs.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/9/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import Foundation

class Jobs
{
    var service : String!
    var event : String!
    var date : String!
    var startTime : String!
    var endTime : String!
    var employee : String!
    
    init(service : String, event : String, date : String, startTime : String, endTime : String, employee : String)
    {
        self.service = service
        self.event = event
        self.date = date
        self.startTime = startTime
        self.endTime = endTime
        self.employee = employee
    }
    
}
