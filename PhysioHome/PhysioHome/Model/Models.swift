//
//  Data.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import Foundation
import UIKit


struct User {
    let id : String
    let email : String
    let password : String
}

var purchased: Array<PT> = []

struct PT {
    let name : String
    let dis : String
    let rating : String
    let logo : UIImage?
    let sessions: Array<Session>
}
struct Session {
    let title : String
    let logo : UIImage?
    let time : String
    let price : String
    let numberOfsession : Int
}


var ptS : Array<PT> = [
    PT(
        name: "Saeed Alqahtani",
        dis: "Physiotherapist from Saturday to Tuesday from 8 pm to 12 am - Wednesday - Friday from 3 pm to 9 pm.  There are electrical appliances.",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage (named: "1"),
        sessions: [
   Session (
         title: "",
         logo: UIImage(named: ""),
         time: "",
         price: "",
         numberOfsession: 5),] ),
    
   
    
    PT(
        name: "Sara Alshahrani",
        dis: "Physiotherapist from Sunday to Thursday from 9 am to 9 pm",
        rating: "⭐️⭐️⭐️",
        logo: UIImage(named: "2"),
        sessions: [
            Session (
                  title: "",
                  logo: UIImage(named: ""),
                  time: "45 min",
                  price: "200",
                  numberOfsession: 1),] ),
    
   
    
    PT(
        name: "Aisha alahmri",
        dis: "Physiotherapist Tuesday and Thursday from 8 am to 1 pm",
        rating: "⭐️⭐️⭐️",
        logo: UIImage(named: "3"),
        sessions: [
            Session (
                  title: "",
                  logo: UIImage(named: ""),
                  time: "",
                  price: "",
                  numberOfsession: 9),] ),
    
   
    
    PT(name: "Khalid Saad",
       dis: "Physiotherapist from Saturday to Tuesday from 9 pm to 12 am - Wednesday - Friday from 5 pm to 9 pm.  There are electrical appliances.",
       rating: "⭐️⭐️",
       logo: UIImage(named: "4"),
       sessions: [
  Session (
        title: "",
        logo: UIImage(named: ""),
        time: "",
        price: "",
        numberOfsession: 12),] ),
    
   
    
    PT(
        name: "Asma Mohammed",
        dis: "Physiotherapist Tuesday and Thursday from 8 am to 1 pm",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage(named: "5"),
        sessions: [
   Session (
         title: "",
         logo: UIImage(named: ""),
         time: "",
         price: "",
         numberOfsession: 20),] )
]



