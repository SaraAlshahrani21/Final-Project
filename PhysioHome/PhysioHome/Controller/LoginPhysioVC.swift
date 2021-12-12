//
//  LoginPhysioVC.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import UIKit

class LoginPhysioVC: UIViewController {
    
    
    @IBOutlet weak var EmailPT: UITextField!
    @IBOutlet weak var PasswordPT: UITextField!
    @IBAction func SignInPT(_ sender: Any) {
    }
    
    // Login and rigester physiotherapist
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
    }
}
