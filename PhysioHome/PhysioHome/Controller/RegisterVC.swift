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
    
    
    
    //image
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "phhh")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        return imageView
      }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //localizable
        welcomlbl.text = NSLocalizedString("welcome", comment: "")
        registerPatients.setTitle(NSLocalizedString("Register", comment: ""), for: .normal)
        registerPT.setTitle(NSLocalizedString("register", comment: ""), for: .normal)
        
        
        
        //constraint
        view.addSubview(imageView)
        NSLayoutConstraint.activate([ imageView.topAnchor.constraint(equalTo: view.topAnchor, constant:100),
        imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
        imageView.heightAnchor.constraint(equalToConstant: 200),
        imageView.widthAnchor.constraint(equalToConstant: 600),
      
        ])
        
        
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
