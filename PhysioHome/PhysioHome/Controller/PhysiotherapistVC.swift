//
//  PhysiotherapistVC.swift
//  PhysioHome
//
//  Created by Sara M on 03/05/1443 AH.
//

import UIKit

protocol searchbar {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
}

class PhysiotherapistVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,
                         UISearchBarDelegate, searchbar {


    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var picCV: UICollectionView!
    
    // Array for physiotherapist
    var searched: Array<PT> = ptS
    
    //function for collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searched.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let PT = searched[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PTCell
        
        cell.setup(with: searched[indexPath.item], indexPath: indexPath)
        
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: self.view.frame.width * 0.45,
            height: 360
        )
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let p = ptS[indexPath.item]
        
        performSegue(withIdentifier: "show",
                     sender: p )
    }
    
    //function for search bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searched = ptS
        }else{
            searched = ptS.filter({
                oneProduct in
                return oneProduct.name.starts(with: searchText)
            })
        }
        picCV.reloadData()
    }
    
    override func prepare(for segue:
                          UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let vc2 = segue.destination as! ProfilePTVC
        
        vc2.FromVC1 = sender as? PT
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        picCV.delegate = self
        picCV.dataSource = self
        searchBar.delegate = self
    }
}
