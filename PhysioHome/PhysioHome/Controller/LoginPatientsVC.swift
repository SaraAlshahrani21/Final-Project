//
//  ViewController.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import UIKit
import Firebase

class LoginPatientsVC: UIViewController, UITextFieldDelegate{
    
    
    
    struct Task {
        var taskTitle: String?
        var isChecked = false
    }
    var taskArray = [Task] ()
    var indexpath: IndexPath!
    
    @IBOutlet weak var signup: UIButton!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var lable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(named: "backgroundColor")
        txtEmail.text = "s@gmail.com"
        txtPassword.text = "123456"
        login.setTitle(NSLocalizedString("ss", comment: ""), for: .normal)
        signup.setTitle(NSLocalizedString("SS", comment: ""), for: .normal)
        txtEmail.placeholder = NSLocalizedString("mail", comment: "")
        txtPassword.placeholder = NSLocalizedString("pass", comment: "")
        txtPassword.delegate = self
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
                self.lable.text = NSLocalizedString("error", comment: "")
              print(error as Any)
              return
            }
              self.performSegue(withIdentifier: "12345", sender:nil)
          }
          func alertUserLoginError() {
            let alert = UIAlertController(title: "❤︎", message: NSLocalizedString("enter", comment: ""), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("ok", comment: ""), style: .cancel , handler: nil))
            present(alert, animated: true)
          }
        }
      
    
    // SignUp users
    @IBAction func creataccount(_ sender: Any) {
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
         let alert = UIAlertController(title: "❤︎", message: NSLocalizedString("ent", comment: "") , preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "ok", style: .cancel , handler: nil))
         present(alert, animated: true)
       }
     }

   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            let update = Task(taskTitle: txtPassword.text, isChecked: taskArray[indexpath.row].isChecked)
            
            taskArray[indexpath.row] = update
        txtPassword.resignFirstResponder()
            return true
        }
    
}

