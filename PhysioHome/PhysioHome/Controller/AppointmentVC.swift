//
//  AppointmentVC.swift
//  PhysioHome
//
//  Created by Sara M on 04/05/1443 AH.
//

import UIKit
import FirebaseFirestore
import Firebase

class AppointmentVC: UIViewController{
    
    var users = [User]()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "backgroundColor")
        table.delegate = self
        table.dataSource = self
        table.rowHeight = 170
        self.dataRead()
        
    }
}

// extension of class
extension AppointmentVC : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath) as! AppointmentCell
        
        let data = users[indexPath.row]
        cell.nameC.text = data.name
        cell.ageC.text = data.age
        cell.genderC.text = data.gender
        cell.phoneC.text = data.phone
        cell.locationC.text = data.location
        cell.date.text = "\(data.date)"
        
        return cell
    }
    
    // delete Appointment
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            ReservationVC.shared.deleteAppointment(patientId: users[indexPath.row].id)
            
        }
    }
    
    
    // Add Appointmaent
    func dataRead(){
        Firestore.firestore().collection("users").whereField("id", isEqualTo: Auth.auth().currentUser?.uid).addSnapshotListener { [self] snapshot, error in
            if error != nil {
                print(error)
                return
            }
            guard let documents = snapshot?.documents else { return }
            
            self.users = [User]()
            for document in documents {
                let data = document.data()
                let user = User(
                    id: (data["id"] as? String) ?? "",
                    name: (data["name"] as? String) ?? "",
                    age: (data["age"] as? String) ?? "",
                    phone:(data["phone"] as? String) ?? "",
                    gender:(data["gender"] as? String) ?? "",
                    date: (data["date"] as? Date) ?? Date(),
                    location:(data["location"] as? String) ?? ""
                )
                self.users.append(user)
            }
            
            self.table.reloadData()
            
        }
    }
}
