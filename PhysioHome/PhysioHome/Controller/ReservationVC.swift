//
//  ReservationVC.swift
//  PhysioHome
//
//  Created by Sara M on 04/05/1443 AH.
//

import UIKit
import CoreData
import Firebase
import FirebaseFirestore

class ReservationVC: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var restFromVC1: Session?
    var currentIndex = 0
    var date = ""
    
    
    static let shared = ReservationVC()
    let patientsCollection = Firestore.firestore().collection("users")
    
    // Delete Student
    func deleteAppointment(patientId: String) {
        patientsCollection.document(patientId).delete()
    }
    
    //Add Picker View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrgender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrgender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentIndex = row
        gender.text = arrgender[row]
    }
    @objc func closePicker(){
        gender.text = arrgender[currentIndex]
        view.endEditing(true)
    }
    
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var reservation: UIButton!
    
    
    @IBOutlet weak var scheduler: UIDatePicker!
    let genderr = UIPickerView()
    var arrgender = [
        NSLocalizedString("Male", comment: ""),
        NSLocalizedString("Female", comment: "")
    ]
    
    @IBOutlet weak var TitleSession: UILabel!
    @IBOutlet weak var imageSession: UIImageView!
    @IBOutlet weak var timeSession: UILabel!
    @IBOutlet weak var priceSession: UILabel!
    @IBOutlet weak var numberOfSession: UILabel!
    
    
    // function date picker
    @IBAction func Data(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale?
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy, h:mm a"
        date = dateFormatter.string(from: scheduler.date)
    }
    
    // add reservation
    @IBAction func reservation(_ sender: UIButton) {
        haB()
        sender.shake()
    }
    
    
    func setupButtons() {
        reservation.layer.cornerRadius = 8
    }
    
    
    // connect with firebase database
    func haB() {
        guard let currentUserID = Auth.auth().currentUser?.uid else {return}
        Firestore.firestore().document("users/\(currentUserID)").setData([
            "name" : nameTF.text as Any,
            "id" : currentUserID,
            "age" :ageTF.text as Any,
            "phone" :phoneTF.text as Any,
            "gender" :gender.text as Any,
            "location" : locationTF.text as Any ,
            "date" :scheduler.date as Any,
        ],merge: true)
        let alert1 = UIAlertController(
            title: NSLocalizedString("Wonderful", comment: ""),
            message: NSLocalizedString("Appointment booked successfully", comment: ""),
            preferredStyle: .alert)
        alert1.addAction(
            UIAlertAction(
                title: NSLocalizedString("ok", comment: ""),
                style: .cancel ,
                handler: { action in
                    print("OK")
                }
            )
        )
        alert1.addAction(
            UIAlertAction(
                title: NSLocalizedString("Go to appointments", comment: ""),
                style: .default,
                handler: { action in
                    print("OK")
                    self.performSegue(withIdentifier: "GoToAppointments", sender: AppointmentVC.self())
                }
            )
        )
        present(alert1, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        
        nameTF.delegate = self
        ageTF.delegate = self
        phoneTF.delegate = self
        locationTF.delegate = self
        gender.delegate = self
        
        
        TitleSession.text = restFromVC1?.title
        timeSession.text = restFromVC1?.time
        priceSession.text = restFromVC1?.price
        numberOfSession.text = restFromVC1?.numberOfsession
        imageSession.image =  restFromVC1?.logo
        
        
        genderr.delegate = self
        genderr.dataSource = self
        gender.inputView = genderr
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: NSLocalizedString("Done", comment: ""), style: .plain, target: self, action: #selector(closePicker))
        toolBar.setItems([btnDone], animated: true)
        gender.inputView = genderr
        gender.inputAccessoryView = toolBar
        
        
        guard let currentUserID = Auth.auth().currentUser?.uid else {return}
        Firestore.firestore()
            .document("users/\(currentUserID)")
            .addSnapshotListener{ doucument, error in
                if error != nil {
                    print (error as Any)
                    return
                }
                self.nameTF.text = doucument?.data()?["name"] as? String
                self.ageTF.text = doucument?.data()?["age"] as? String
                self.phoneTF.text = doucument?.data()?["phone"] as? String
                self.gender.text = doucument?.data()?["gender"] as? String
                self.locationTF.text = doucument?.data()?["location"] as? String
                self.scheduler.date = doucument?.data()?["date"] as? Date ?? Date()
            }
    }
    
    //function of return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTF.resignFirstResponder()
        ageTF.resignFirstResponder()
        phoneTF.resignFirstResponder()
        locationTF.resignFirstResponder()
        gender.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? AppointmentVC
    }
}


