//
//  CustomTabBar.swift
//  VendyrIOSApp
//
//  Created by Emily Daskas on 6/14/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //  UIViewController().
        let controller1 = UIViewController()
        controller1.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Profile.png"), tag: 1)
        let nav1 = UINavigationController(rootViewController: controller1)
        
        let controller2 = UIViewController()
        controller2.tabBarItem = UITabBarItem(title: "Calendar", image: UIImage(named: "Calendar.png"), tag: 2)
        let nav2 = UINavigationController(rootViewController: controller2)
        
        let controller3 = UIViewController()
        let nav3 = UINavigationController(rootViewController: controller3)
        nav3.title = ""
        
        let controller4 = UIViewController()
        controller4.tabBarItem = UITabBarItem(title: "Services", image: UIImage(named: "Star.png"), tag: 4)
        // controller4.tabBarItem.badgeColor = UIColor.white
        let nav4 = UINavigationController(rootViewController: controller4)
        
        let controller5 = UIViewController()
        controller5.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Home.png"), tag: 5)
        let nav5 = UINavigationController(rootViewController: controller5)
        
        //trying to set background color of tab bar
        // let color = UIColor(patternImage: UIImage(named: "tab bar.png")!)
        // self.tabBar.barTintColor = color
        /*
         let image = UIImageView(image: UIImage(named: "tab bar.png"))
         image.frame = CGRect(x: CGFloat(-10), y: CGFloat(-10), width: CGFloat(tabBar.frame.size.width + 20), height: CGFloat(tabBar.frame.size.height + 20))
         image.contentMode = .scaleToFill
         tabBar.insertSubview(image, at: 0)
         */
        
        let frame = CGRect(x: CGFloat(-10), y: CGFloat(-8), width: CGFloat(self.view.bounds.size.width + 20), height: CGFloat(self.view.bounds.size.height + 50))
        let view = UIView(frame: frame)
        let tabBarBackgroundImage = UIImage(named: "tab bar.png")
        let color = UIColor(patternImage: tabBarBackgroundImage!)
        view.backgroundColor = color
        tabBar.insertSubview(view, at: 0)
        
        // let constraints = UIEdgeInsets(top: -10, left: 10, bottom: 0, right: 10)
        //var backgroundImage = UIImage(named: "tab bar.png")?.resizableImage(withCapInsets: constraints, resizingMode: UIImageResizingMode.tile)
        //self.tabBar.backgroundImage = backgroundImage
        //  self.tabBar.
        
        viewControllers = [nav1, nav2, nav3, nav4, nav5]
        setupMiddleButton()
    }
    
    // MARK: - Setups
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 72, height: 72))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height + 9.0
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        //menuButton.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
        menuButton.backgroundColor = UIColor(colorLiteralRed: 232/255.0, green: 119/255.0, blue: 85/255.0, alpha: 1.0)
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        
        view.addSubview(menuButton)
        
        menuButton.setImage(UIImage(named: "Plus"), for: .normal)
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
        
        view.layoutIfNeeded()
    }
    
    
    // MARK: - Actions
    
    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }
    
    
    /*
     override func viewDidLoad() {
     super.viewDidLoad()
     
     let controller1 = UIViewController()
     controller1.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
     let nav1 = UINavigationController(rootViewController: controller1)
     
     let controller2 = UIViewController()
     controller2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
     let nav2 = UINavigationController(rootViewController: controller2)
     
     let controller3 = UIViewController()
     let nav3 = UINavigationController(rootViewController: controller3)
     nav3.title = ""
     
     let controller4 = UIViewController()
     controller4.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 4)
     let nav4 = UINavigationController(rootViewController: controller4)
     
     let controller5 = UIViewController()
     controller5.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 5)
     let nav5 = UINavigationController(rootViewController: controller5)
     
     
     viewControllers = [nav1, nav2, nav3, nav4, nav5]
     setupMiddleButton()
     
     // Do any additional setup after loading the view.
     }
     func setupMiddleButton() {
     let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
     
     var menuButtonFrame = menuButton.frame
     menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
     menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
     menuButton.frame = menuButtonFrame
     
     menuButton.backgroundColor = UIColor.red
     menuButton.layer.cornerRadius = menuButtonFrame.height/2
     view.addSubview(menuButton)
     
     menuButton.setImage(UIImage(named: "example"), for: .normal)
     menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
     
     view.layoutIfNeeded()
     }
     @objc private func menuButtonAction(sender: UIButton) {
     selectedIndex = 2
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
     */
    
}
