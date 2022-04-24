//
//  FilmHucreCollectionViewCell.swift
//  Movies-App-Template-Design
//
//  Created by Ömer Faruk Kılıçaslan on 23.04.2022.
//

import UIKit

protocol FilmHucreCollectionViewCellProtocol {
    func sepeteEkle(indexPath:IndexPath)
}


class FilmHucreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelFilmFiyat: UILabel!
    @IBOutlet weak var labelFilmAdi: UILabel!
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    var hucreProtocol:FilmHucreCollectionViewCellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
        
        
    }
}
