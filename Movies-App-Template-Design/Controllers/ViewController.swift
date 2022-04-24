//
//  ViewController.swift
//  Movies-App-Template-Design
//
//  Created by Ömer Faruk Kılıçaslan on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kategoriTableView: UITableView!
    
    var kategorilerListe = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")
        
        
        kategorilerListe.append(k1)
        kategorilerListe.append(k2)
        
        kategoriTableView.dataSource = self
        kategoriTableView.delegate = self
        
        

    }

}


extension ViewController:UITableViewDelegate,UITableViewDataSource {

    
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategorilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre",for: indexPath) as! KategoriHucreTableViewCell
        
        cell.labelKategoriAd.text = kategori.kategori_ad
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toFilm", sender: indexPath.row)
    }
}
