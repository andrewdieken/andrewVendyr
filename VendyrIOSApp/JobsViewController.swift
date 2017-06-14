//
//  JobsViewController.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/8/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var jobsTableView: UITableView!
    
    //fake data
    var jobArray = ["Vendyr", "Event", "Hi"]
    var eventArray = ["Chapman", "Bruxie", "Food"]
    var timeArray = ["2:30", "4:00", "6:00"]
   // var eventDateArray = ["Tomorrow", "June 13", "June 15"]
    var dateArray : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jobsTableView.delegate = self
        self.jobsTableView.dataSource = self
        
        
        var eventBackground : UIImage = UIImage(named: "eventBackground.png")!
        let bounds : UIEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        eventBackground = eventBackground.resizableImage(withCapInsets: bounds)
        self.view.backgroundColor = UIColor.init(patternImage: eventBackground)
        for dates in JobData.arrayOfJobs
        {
            if !(dateArray .contains(dates.date))
            {
                dateArray.append(dates.date)
            }

        }
        print("JOBARRAY \(dateArray)")
        
        // Do any additional setup after loading the view.
    }
   

    //for putting proper cells in heading cells
    func getSectionItems(section : Int) -> [Jobs]
    {
        var sectionItems = [Jobs]()
        
        for date in JobData.arrayOfJobs {
            
            if date.date == dateArray[section]
            {
                sectionItems.append(date)
            }
        }
        return sectionItems
    }
    
   // var sections = Dictionary
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("JobsTableViewCell", owner: self, options: nil)?.first as! JobsTableViewCell
       
       // cell.
        let sectionItems = self.getSectionItems(section: indexPath.section)
        let dateText = sectionItems[indexPath.row]

            cell.eventNameLabel.text = dateText.event
            cell.jobNameLabel.text = dateText.service
            cell.timeLabel.text = dateText.startTime
        return cell
    }

    //header cells functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.getSectionItems(section: section).count
        //return JobData.arrayOfJobs.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    //functions for header for each day/section
    func numberOfSections(in tableView: UITableView) -> Int {
        return dateArray.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = Bundle.main.loadNibNamed("JobsHeaderCell", owner: self, options: nil)?.first as! JobsHeaderCell
       headerCell.dateLabel.text = dateArray[section]
        return headerCell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*  func getSectionItems(section: Int) -> [Jobs]
    {
        var sectionItems = [Jobs]()
    }
   */ 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
