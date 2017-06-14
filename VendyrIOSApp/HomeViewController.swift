//
//  HomeViewController.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/8/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

var today = "June 14"
var tomorrow = "June 15"

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var upcomingJobsTableView: UITableView!
    
    //fake data
    //currently not using, switched to Jobs and Data classes for now
    var jobArray = ["Vendyr", "Event", "Hi"]
    var eventArray = ["Chapman", "Bruxie", "Food"]
    var timeArray = ["2:30", "4:00", "6:00"]

    //I'm on to something but I need to figure out how to add to the string of events
    var todaysEvents : [Jobs] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.upcomingJobsTableView.delegate = self
        self.upcomingJobsTableView.dataSource = self
        
        var signInBackGround : UIImage = UIImage(named: "Background.png")!
        let bounds : UIEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        signInBackGround = signInBackGround.resizableImage(withCapInsets: bounds)
        self.view.backgroundColor = UIColor.init(patternImage:signInBackGround)
        for i in 0..<JobData.arrayOfJobs.count
        {
            if (JobData.arrayOfJobs[i].date == today)
            {
                todaysEvents.append(JobData.arrayOfJobs[i])
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("JobsTableViewCell", owner: self, options: nil)?.first as! JobsTableViewCell
        
        for i in 0..<JobData.arrayOfJobs.count
        {

                cell.eventNameLabel.text = todaysEvents[indexPath.row].event
                cell.jobNameLabel.text = todaysEvents[indexPath.row].service
                cell.timeLabel.text = todaysEvents[indexPath.row].startTime

        }
        

        
        return cell

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return todaysEvents.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
