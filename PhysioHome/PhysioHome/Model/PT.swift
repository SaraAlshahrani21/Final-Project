//
//  Data.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import Foundation
import UIKit



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
    let numberOfsession : String
}


var ptS : Array<PT> = [
    PT(
        name: "Saeed Alqahtani",
        dis: "Physiotherapist from Saturday to Tuesday from 8 pm to 12 am - Wednesday - Friday from 3 pm to 9 pm.  There are electrical appliances.",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage (named: "1"),
        sessions: [
   Session (
         title: "Rehabilitation of joint injuries",
         logo: UIImage(named: "2"),
         time: "🕘 Duration: an hour",
         price: "💵 Cost: 200 riyals",
         numberOfsession:"🗒 Number of sessions: 1"),
   Session(
         title: "Physical preparation program for athletes (women)",
         logo: UIImage(named: "1"),
         time: "🕘 Duration: an hour",
         price: "💵 Cost: 200 riyals",
         numberOfsession: "🗒 Number of sessions: 1"),
    Session(
            title: "Post-operative rehabilitation",
            logo: UIImage(named: "3"),
            time: "🕘 Duration: an hour",
            price: "💵 Cost: 200 riyals",
            numberOfsession: "🗒 Number of sessions: 1")] ),
    
   
    
    PT(
        name: "Sara Alshahrani",
        dis: "Physiotherapist from Sunday to Thursday from 9 am to 9 pm",
        rating: "⭐️⭐️⭐️",
        logo: UIImage(named: "2"),
        sessions: [
            Session (
                  title: "Stroke rehabilitation",
                  logo: UIImage(named: "5"),
                  time: "🕘 Duration: an hour",
                  price: "💵 Cost: 200 riyals",
                  numberOfsession: "🗒 Number of sessions: 1"),
            Session(
                title: "Muscular injury rehabilitation",
                logo: UIImage(named: "2"),
                time: "🕘 Duration: an hour",
                price: "💵 Cost: 200 riyals",
                numberOfsession: "🗒 Number of sessions: 1"),
            Session(
                title: "lower back pain",
                logo: UIImage(named: "1"),
                time: "🕘 Duration: half an hour",
                price: "💵 Cost: 200 riyals",
                numberOfsession: "🗒 Number of sessions: 1"),
            Session(
                title: "Stroke rehabilitation course",
                logo: UIImage(named: "4"),
                time: "🕘 Duration: an hour",
                price: "💵 Cost: 2000 riyals",
                numberOfsession: "🗒 Number of sessions: 10")] ),
    
   
    
    PT(
        name: "Aisha alahmri",
        dis: "Physiotherapist Tuesday and Thursday from 8 am to 1 pm",
        rating: "⭐️⭐️⭐️",
        logo: UIImage(named: "3"),
        sessions: [
            Session (
                  title: "stadium injuries",
                  logo: UIImage(named: "2"),
                  time:  "🕘 Duration: an hour",
                  price:"💵 Cost: 150 riyals",
                  numberOfsession: "🗒 Number of sessions: 1"),
            Session(
                title: "Diagnostic session",
                logo: UIImage(named: "1"),
                time:"🕘 Duration: an hour",
                price: "💵 Cost: 150 riyals",
                numberOfsession: "🗒 Number of sessions: 1"),
            Session(
                title: "Post-stroke rehabilitation",
                logo: UIImage(named: "2"),
                time: "🕘 Duration: an hour and a half",
                price: "💵 Cost: 200 riyals",
                numberOfsession: "🗒 Number of sessions: 1")] ),
    
   
    
    PT(name: "Khalid Saad",
       dis: "Physiotherapist from Saturday to Tuesday from 9 pm to 12 am - Wednesday - Friday from 5 pm to 9 pm.  There are electrical appliances.",
       rating: "⭐️⭐️",
       logo: UIImage(named: "4"),
       sessions: [
  Session (
        title: "Several medical rehabilitation sessions for children with cerebral palsy",
        logo: UIImage(named: "3"),
        time: "🕘 Duration: an hour",
        price: "💵 Cost: 180 riyals",
        numberOfsession: "🗒 Number of sessions: 10"),
  Session(
            title: "Medical rehabilitation session for children with cerebral palsy",
            logo: UIImage(named: "2"),
            time: "🕘 Duration: an hour",
            price: "💵 Cost: 200 riyals",
            numberOfsession: "🗒 Number of sessions: 1"),
  Session(
                title: "Medical rehabilitation session for children with cerebral palsy",
                logo: UIImage(named: "1"),
                time: "🕘 Duration: an hour and a half",
                price: "💵 Cost: 250 riyals",
                numberOfsession: "🗒 Number of sessions: 1")] ),
    
   

    PT(
        name: "Asma Mohammed",
        dis: "Physiotherapist Tuesday and Thursday from 8 am to 1 pm",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage(named: "5"),
        sessions: [
        Session(
                title: "Spinal cord injuries",
                logo: UIImage(named: "5"),
                time: "🕘 Duration: an hour and a half",
                price: "💵 Cost: 200 riyals",
                numberOfsession: "🗒 Number of sessions: 1"),
        Session(
                    title: "Intensive therapeutic exercises and rehabilitation for children with cerebral palsy and spinal cord injuries",
                    logo: UIImage(named: "1"),
                    time: "🕘 Duration: an hour",
                    price: "💵 Cost: 200 riyals",
                    numberOfsession: "🗒 Number of sessions: 1")
  ] )
]



