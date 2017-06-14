//
//  ServicesViewController.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/8/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var servicesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.servicesTableView.dataSource = self
        self.servicesTableView.delegate = self 
        // Do any additional setup after loading the view.
    }
    
    var serviceArray = ["Service 1", "This is Service 2", "Service Three", "Princess Bouncehouse", "Frozen Cake", "Hula Lessons", "Flame Blowers", "DJ", "Pop Cart", "Taco Man", "Elsa and Anna", "Horse", "Balloon Man", "Choir", "DJ 2", "Volleyball court"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ServiceTableViewCell", owner: self, options: nil)?.first as! ServiceTableViewCell
        
        
        cell.serviceNameLabel.text = serviceArray[indexPath.row]
        
        return cell

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceArray.count
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
