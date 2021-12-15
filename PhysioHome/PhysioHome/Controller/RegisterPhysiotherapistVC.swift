//
//  RegisterPhysiotherapistVC.swift
//  PhysioHome
//
//  Created by Sara M on 10/05/1443 AH.
//

import UIKit

class RegisterPhysiotherapistVC: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = NSLocalizedString("Reg", comment: "")
        label2.text = NSLocalizedString("dis", comment: "")
        label3.text = NSLocalizedString("Nam", comment: "")
        label4.text = NSLocalizedString("Emai", comment: "")
        label5.text = NSLocalizedString("Ph", comment: "")
        label6.text = NSLocalizedString("Please", comment: "")
        label7.text = NSLocalizedString("eemm", comment: "")
    }
}
