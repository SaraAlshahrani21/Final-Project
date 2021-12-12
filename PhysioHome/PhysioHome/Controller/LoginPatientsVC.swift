//
//  ViewController.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import UIKit
import Firebase

class LoginPatientsVC: UIViewController {
    
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var lblStatus: UILabel!
    @IBOutlet weak var login: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(named: "backgroundColor")
    }
    
   
    // LogIn users
    @IBAction func login(_ sender: Any) {
        
        let email = txtEmail.text!
        let password = txtPassword.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
            guard let strongSelf = self else { return }
            if(error != nil) {
                strongSelf.lblStatus.text = "Error, check username and password"
                print(error as Any)
                return
            }
            strongSelf.lblStatus.text = "Login sucesss for email \(email)"
        }
        
    }
    
    // SignUp users
    @IBAction func createAccount(_ sender: Any) {
        let email = txtEmail.text!
        let password = txtPassword.text!
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if(error != nil) {
                self.lblStatus.text = "Error"
                print(error as Any)
                return
            }
            self.lblStatus.text = "User created!"
        }
    }
    
    
}

