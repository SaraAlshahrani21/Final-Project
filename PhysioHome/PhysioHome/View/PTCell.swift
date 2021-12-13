//
//  PTCell.swift
//  PhysioHome
//
//  Created by Sara M on 03/05/1443 AH.
//

import UIKit

class PTCell : UICollectionViewCell {
    
    
    // physiotherapist Cell
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dis: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    var indrxPath: IndexPath?
    
    func setup(with ptS: PT, indexPath: IndexPath){
        
        
        image.image = ptS.logo
        name.text = ptS.name
        dis.text = ptS.dis
        rating.text = ptS.rating
        indrxPath = indexPath
    }
    
}
