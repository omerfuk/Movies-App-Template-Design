//
//  FilmDetayViewController.swift
//  Movies-App-Template-Design
//
//  Created by Ömer Faruk Kılıçaslan on 23.04.2022.
//

import UIKit

class FilmDetayViewController: UIViewController {

    @IBOutlet weak var labelFilmYonetmen: UILabel!
    @IBOutlet weak var labelFilmKategori: UILabel!
    @IBOutlet weak var labelFilmYil: UILabel!
    @IBOutlet weak var labelFilmAdi: UILabel!
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            imageViewFilmResim.image = UIImage(named: f.film_resim!)
            labelFilmAdi.text = f.film_ad
            labelFilmYil.text = String(f.film_yil!)
            labelFilmKategori.text = f.kategori?.kategori_ad
            labelFilmYonetmen.text = f.yonetmen?.yonetmen_ad
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
