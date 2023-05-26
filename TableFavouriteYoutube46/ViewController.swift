//
//  ViewController.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 21/05/2023.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableViewCell
        let data = arrFruit[indexPath.row]
        cell.setUpCell(photo: data.photo, name: data.name, price: data.price, describtion: data.describtion)
        cell.btnFriut.tag = indexPath.row
        cell.btnFriut.addTarget(self, action: #selector(addToFav(sender:)), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
    }

    @IBOutlet weak var tableView: UITableView!
    var arrFruit = [Fruit]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        arrFruit.append(Fruit.init(name: "Orange", price: 12, describtion:" This is orange", photo:UIImage(named: "photoOne")!))
       
        arrFruit.append(Fruit.init(name: "Ooii", price: 18, describtion:" This is banana", photo:UIImage(named: "PhotoThree")!))
        arrFruit.append(Fruit.init(name: "strobery", price: 12, describtion:" This is Strobery", photo:UIImage(named: "PhotoFour")!))
        arrFruit.append(Fruit.init(name: "beans", price: 12, describtion:" This is beans", photo:UIImage(named: "PhotoFive")!))
        arrFruit.append(Fruit.init(name: "hend", price: 12, describtion:" This is hend", photo:UIImage(named: "PhotoSix")!))
        arrFruit.append(Fruit.init(name: "emy", price: 12, describtion:" This is emy", photo:UIImage(named: "PhotoSix")!))
    }
    @objc
    func addToFav(sender: UIButton){
        print("button index = \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
    
    struct Fruit{
        let name : String
        let price : Double
        let describtion : String
        let photo: UIImage
    }


}

