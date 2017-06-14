//
//  TabBarViewController.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/7/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //UITabBar.appearance().backgroundColor = UIColor(red: 0.29, green: 0.29, blue: 0.29, alpha: 1.0)
        //UITabBar.appearance().
        self.tabBarController?.tabBar.barTintColor = UIColor(red: 0.20, green: 0.29, blue: 0.29, alpha: 1.0)
        self.tabBarController?.tabBar.isTranslucent = false
           
        // Do any additional setup after loading the view.
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
