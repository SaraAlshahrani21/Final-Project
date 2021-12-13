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
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var lable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(named: "backgroundColor")
    }
    
    
    // LogIn users
    @IBAction func login(_ sender: Any) {
        
        let email = txtEmail.text!
        let password = txtPassword.text!
        
        if email.isEmpty || password.isEmpty {
            alertUserLoginError()
            return
          }
          Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
              print(error as Any)
              return
            }
          }
          func alertUserLoginError() {
            let alert = UIAlertController(title: "❤︎", message: "Please enter your Email & Password To LogIn", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel , handler: nil))
            present(alert, animated: true)
          }
        }
      
//
//
//        Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
//            guard let strongSelf = self else { return }
//            if(error != nil) {
//                strongSelf.lblStatus.text = "Error, check username and password"
//                print(error as Any)
//                return
//            }
//            strongSelf.lblStatus.text = "Login sucesss for email \(email)"
//        }
//
//    }
    
    // SignUp users
func createAccount(_ sender: Any) {
        let email = txtEmail.text!
        let password = txtPassword.text!
    
    if email.isEmpty || password.isEmpty {
        alertUserLoginError2()
         return
       }
       Auth.auth().createUser(withEmail: email, password: password //type: self.type ?? "0"
       ) { result, error in
         if error != nil {
           print(error as Any)
           return
         }
       }
       func alertUserLoginError2() {
         let alert = UIAlertController(title: "❤︎", message: "Please enter your Email & Password To signUp", preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "OK", style: .cancel , handler: nil))
         present(alert, animated: true)
       }
     }

    
//        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
//            if(error != nil) {
//                self.lable.text = "Error"
//                print(error as Any)
//                return
//            }
//            self.lable.text = "User created!"
//        }
//    }
    
    
}

