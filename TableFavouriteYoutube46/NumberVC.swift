//
//  NumberVC.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 25/05/2023.
//

import UIKit

class NumberVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrNum = [String]()
    let refreshControll = UIRefreshControl()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numCell", for: indexPath)
        cell.textLabel?.text = arrNum[indexPath.row]
        return cell
    }
    @objc func getData(){
        arrNum.append("value \(arrNum.count)")
        refreshControll.endRefreshing()
        tableView.reloadData()
    }

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        refreshControll.tintColor = UIColor(named: "AppRed")
        
        refreshControll.addTarget(self, action: #selector(getData), for: .valueChanged)
       tableView.addSubview(refreshControll)

    }


}
