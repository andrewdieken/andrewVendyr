//
//  Data.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/9/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import Foundation

var JobData = Data()

public class Data {
    var arrayOfJobs : [Jobs] =
        [Jobs(service: "Princess bouncehouse", event: "Em's 6th birthday", date: "June 14", startTime: "9:00 am", endTime : "4:20", employee : "Luke"),
         Jobs(service: "PopCart", event: "Outdooor Wedding", date: "June 14", startTime: "2:30 pm", endTime : "9:30", employee : "Emily Daskas"),
         Jobs(service: "Photo Booth", event: "Vendyr", date: "June 15", startTime: "11:15 am", endTime : "9:00", employee : "I don't know"),
         Jobs(service: "Smores", event: "Company Event", date: "June 15", startTime: "7:00 pm", endTime : "9:00", employee : "Oakey"),
         Jobs(service: "Bouncehouse", event: "Birthday Party", date: "June 15", startTime: "8:00 pm", endTime : "9:00", employee : "Serena"),
         Jobs(service: "DJ", event: "Summer Pool Party", date: "June 19", startTime: "11:00 am", endTime : "3:15", employee : "Dominic"),
         Jobs(service: "Taco Man", event: "Graduation Party", date: "June 19", startTime: "5:00 pm", endTime : "9:00", employee : "Andrew"),
         Jobs(service: "bouncehouse", event: "Sweet 16", date: "June 14", startTime: "7:45 pm", endTime : "10:00", employee : "Mike"),
         Jobs(service: "Balloon Guy", event: "School Fundraiser", date: "June 20", startTime: "11:30 am", endTime : "3:30", employee : "John Doe"),
         Jobs(service: "Musician", event: "I Don't Know", date: "June 20", startTime: "3:00 pm", endTime : "5:00", employee : "Beyonce")]
}
