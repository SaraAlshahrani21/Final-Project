//
//  RigesterVC.swift
//  PhysioHome
//
//  Created by Sara M on 09/05/1443 AH.
//

import UIKit



class RegisterVc: UIViewController{
    
    
    @IBOutlet weak var welcomlbl: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var registerPatients: UIButton!
    @IBOutlet weak var registerPT: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
      
        //localizable
        welcomlbl.text = NSLocalizedString("welcome", comment: "")
        registerPatients.setTitle(NSLocalizedString("Register", comment: ""), for: .normal)
        registerPT.setTitle(NSLocalizedString("register", comment: ""), for: .normal)
        
        
        
        //gesture recognizer page
        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(background)
        )
        tap.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap)
        
        view.isUserInteractionEnabled = true
    }
    
    
    @objc func background() {
        
        view.backgroundColor = UIColor (named: "background")
    }
    
}
