//
//  ContactsVC.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 23/05/2023.
//

import UIKit

class ContactsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var arrSectionns = ["A", "M", "S"]
    var arrRows = [["Ahmed", "Ali", "Amir"], ["Mohamed", "MoSalah", "Mena"], ["Samir"]]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRows[section].count
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSectionns[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = arrRows[indexPath.section][indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSectionns.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

 
}
