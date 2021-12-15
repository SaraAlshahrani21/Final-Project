//
//  RegisterPTVC.swift
//  PhysioHome
//
//  Created by Sara M on 10/05/1443 AH.
//

import UIKit

class RegisterPTVC: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var newregister: UIButton!
    @IBOutlet weak var login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //localizable
        newregister.setTitle(NSLocalizedString("new", comment: ""), for: .normal)
        login.setTitle(NSLocalizedString("login", comment: ""), for: .normal)
    }
    
    
}
