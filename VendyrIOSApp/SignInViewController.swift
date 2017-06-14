//
//  SignInViewController.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/7/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var signInBackGround : UIImage = UIImage(named: "Background.png")!
        let bounds : UIEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        signInBackGround = signInBackGround.resizableImage(withCapInsets: bounds)
        self.view.backgroundColor = UIColor.init(patternImage:signInBackGround)
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signInButtonPressed(_ sender: Any) {
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
