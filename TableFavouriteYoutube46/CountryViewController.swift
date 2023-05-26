//
//  CountryViewController.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 25/05/2023.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrCountry = ["Emy", "Egypt", "Yaman", "Hend", "Nada", "Samah"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        cell.textLabel?.text = arrCountry[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       arrCountry.removeAll()
        tableView.delegate = self
        tableView.dataSource = self
        
        if arrCountry.count == 0 {
            tableView.isHidden = true
            let imgErrorPhoto = UIImageView(frame: CGRect(x: 50, y: 100, width: self.view.frame.width - 100, height: 200))
            imgErrorPhoto.image = UIImage(systemName: "icloud.slash")
            self.view.addSubview(imgErrorPhoto)
            let lblMsg = UILabel(frame: CGRect(x: imgErrorPhoto.frame.minX, y: imgErrorPhoto.frame.maxY + 15, width: imgErrorPhoto.frame.width, height: 30))
            lblMsg.text = "No Data To Display"
            lblMsg.textAlignment = .center
            self.view.addSubview(lblMsg)
            
        }
        
    }


}
