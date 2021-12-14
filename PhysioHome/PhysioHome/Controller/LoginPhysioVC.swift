//
//  LoginPhysioVC.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import UIKit

class LoginPhysioVC: UIViewController {
    
    
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var EmailPT: UITextField!
    @IBOutlet weak var PasswordPT: UITextField!
    @IBOutlet weak var signIn: UIButton!
    @IBAction func SignInPT(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        welcome.text = NSLocalizedString("wolcome", comment: "")
        signIn.setTitle(NSLocalizedString("sign", comment: ""), for: .normal)
        EmailPT.placeholder = NSLocalizedString("email", comment: "")
        PasswordPT.placeholder = NSLocalizedString("password", comment: "")
        
    }
}
