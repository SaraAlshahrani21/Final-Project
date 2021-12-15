//
//  Data.swift
//  PhysioHome
//
//  Created by Sara M on 02/05/1443 AH.
//

import Foundation
import UIKit



var purchased: Array<PT> = []


//Physiotherapist struct
struct PT {
    let name : String
    let dis : String
    let rating : String
    let logo : UIImage?
    let sessions: Array<Session>
}

//session struct
struct Session {
    let title : String
    let logo : UIImage?
    let time : String
    let price : String
    let numberOfsession : String
}





var ptS : Array<PT> = [
    PT(
        name: NSLocalizedString("Saeed Alqahtani", comment: ""),
        dis: NSLocalizedString("Physiotherapist from Saturday to Tuesday from 8 pm to 12 am - Wednesday - Friday from 3 pm to 9 pm.  There are electrical appliances.", comment: ""),
        rating: NSLocalizedString("★★★★✩", comment: ""),
        logo: UIImage (named:"1"),
        sessions: [
   Session (
         title: NSLocalizedString("Rehabilitation of joint injuries", comment: ""),
         logo: UIImage(named:"55"),
         time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
         price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
         numberOfsession:NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
   Session(
         title: NSLocalizedString("Physical preparation program for athletes (women)", comment: ""),
         logo: UIImage(named: "55"),
         time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
         price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
         numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
    Session(
            title: NSLocalizedString("Post-operative rehabilitation", comment: ""),
            logo: UIImage(named: "55"),
            time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
            price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
            numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: ""))] ),
    
   
    
    PT(
        name: NSLocalizedString("Sara Alshahrani", comment: ""),
        dis: NSLocalizedString("Physiotherapist from Sunday to Thursday from 9 am to 9 pm", comment: ""),
        rating: NSLocalizedString("★★★✩✩", comment: ""),
        logo: UIImage(named: "2"),
        sessions: [
            Session (
                  title: NSLocalizedString("Stroke rehabilitation", comment: ""),
                  logo: UIImage(named: "55"),
                  time:NSLocalizedString("🕘 Duration: an hour", comment: ""),
                  price:NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                  numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
            Session(
                title: NSLocalizedString("Muscular injury rehabilitation", comment: ""),
                logo: UIImage(named: "55"),
                time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
                price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
            Session(
                title:NSLocalizedString( "lower back pain", comment: ""),
                logo: UIImage(named: "55"),
                time: NSLocalizedString("🕘 Duration: half an hour", comment: ""),
                price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
            Session(
                title: NSLocalizedString("Stroke rehabilitation course", comment: ""),
                logo: UIImage(named: "55"),
                time:  NSLocalizedString("🕘 Duration: an hour", comment: ""),
                price: NSLocalizedString("💵 Cost: 2000 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 10", comment: ""))] ),
    
   
    
    PT(
        name: NSLocalizedString("Aisha alahmri", comment: ""),
        dis: NSLocalizedString("Physiotherapist Tuesday and Thursday from 8 am to 1 pm", comment: ""),
        rating: NSLocalizedString("★★★✩✩", comment: ""),
        logo: UIImage(named: "3"),
        sessions: [
            Session (
                  title:NSLocalizedString( "stadium injuries", comment: ""),
                  logo: UIImage(named: "55"),
                  time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
                  price:NSLocalizedString("💵 Cost: 150 riyals", comment: ""),
                  numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
            Session(
                title: NSLocalizedString("Diagnostic session", comment: ""),
                logo: UIImage(named: "55"),
                time:NSLocalizedString("🕘 Duration: an hour", comment: ""),
                price: NSLocalizedString("💵 Cost: 150 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
            Session(
                title: NSLocalizedString("Post-stroke rehabilitation", comment: ""),
                logo: UIImage(named: "55"),
                time: NSLocalizedString("🕘 Duration: an hour and a half", comment: ""),
                price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: ""))] ),
    
   
    
    PT(name: NSLocalizedString("Khalid Saad", comment: ""),
       dis:NSLocalizedString( "Physiotherapist from Saturday to Tuesday from 9 pm to 12 am - Wednesday - Friday from 5 pm to 9 pm.  There are electrical appliances.", comment: ""),
       rating: NSLocalizedString("★★✩✩✩", comment: ""),
       logo: UIImage(named: "4"),
       sessions: [
  Session (
        title: NSLocalizedString("Several medical rehabilitation sessions for children with cerebral palsy", comment: ""),
        logo: UIImage(named: "55"),
        time:NSLocalizedString( "🕘 Duration: an hour", comment: ""),
        price: NSLocalizedString("💵 Cost: 180 riyals", comment: ""),
        numberOfsession: NSLocalizedString("🗒 Number of sessions: 10", comment: "")),
  Session(
            title: NSLocalizedString("Medical rehabilitation session for children with cerebral palsy", comment: ""),
            logo: UIImage(named: "55"),
            time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
            price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
            numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
  Session(
                title: NSLocalizedString("Medical rehabilitation session for children with cerebral palsy", comment: ""),
                logo: UIImage(named: "55"),
                time: NSLocalizedString("🕘 Duration: an hour and a half", comment: ""),
                price: NSLocalizedString("💵 Cost: 250 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: ""))] ),
    
   

    PT(
        name: NSLocalizedString("Asma Mohammed", comment: ""),
        dis: NSLocalizedString("Physiotherapist Tuesday and Thursday from 8 am to 1 pm", comment: ""),
        rating: NSLocalizedString("★★✩✩✩", comment: ""),
        logo: UIImage(named: "5"),
        sessions: [
        Session(
                title: NSLocalizedString("Spinal cord injuries", comment: ""),
                logo: UIImage(named: "55"),
                time: NSLocalizedString("🕘 Duration: an hour and a half", comment: ""),
                price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: "")),
        Session(
                    title: NSLocalizedString("Intensive therapeutic exercises and rehabilitation for children with cerebral palsy and spinal cord injuries", comment: ""),
                    logo: UIImage(named: "55"),
                    time: NSLocalizedString("🕘 Duration: an hour", comment: ""),
                    price: NSLocalizedString("💵 Cost: 200 riyals", comment: ""),
                    numberOfsession: NSLocalizedString("🗒 Number of sessions: 1", comment: ""))
  ] )
]



