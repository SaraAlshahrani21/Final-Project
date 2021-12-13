//
//  ProfilePTVC.swift
//  PhysioHome
//
//  Created by Sara M on 03/05/1443 AH.
//

import UIKit



class ProfilePTVC : UIViewController {
    var FromVC1: PT?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        namePT.text = FromVC1?.name
        ratingPT.text = FromVC1!.rating
        disPT.text = FromVC1?.dis
        imagePT.image = FromVC1!.logo
        
        TableVC.rowHeight = 200
        TableVC.delegate = self
        TableVC.dataSource = self
    }
    
    @IBOutlet weak var imagePT: UIImageView!
    @IBOutlet weak var namePT: UILabel!
    @IBOutlet weak var disPT: UILabel!
    @IBOutlet weak var ratingPT: UILabel!
    @IBOutlet weak var TableVC: UITableView!
    
}
 

  // extension of class
extension ProfilePTVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FromVC1?.sessions.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let PP = FromVC1!.sessions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfilePTCell
        
        cell.title.text = PP.title
        cell.imageSession.image = PP.logo
        cell.priceSession.text = PP.price
        cell.timeSession.text = PP.time
        cell.numberOfSession.text = PP.numberOfsession
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let PP = FromVC1!.sessions[indexPath.row]
        
        
        performSegue(withIdentifier: "show_",
                     sender: PP)
    }
    
    override func prepare(for segue:
                          UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let vc2 = segue.destination as! ReservationVC
        
        vc2.restFromVC1 = sender as? Session
    }
    
}
