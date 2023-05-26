//
//  CityViewController.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 25/05/2023.
//

import UIKit

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    
    var arrCities = [UIImage(named: "photoOne")!, UIImage(named: "PhotoTwo")!,UIImage(named: "PhotoThree")!,UIImage(named: "PhotoFour")!]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as! CitiesTableViewCell
        
        cell.imagePhoto.image = arrCities[indexPath.row]
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let photo = arrCities[indexPath.row]
        let photoWidthRatio = photo.size.width / photo.size.height
        return tableView.frame.width / photoWidthRatio
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    

}

