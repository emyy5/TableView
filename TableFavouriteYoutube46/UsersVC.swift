//
//  UsersVC.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 23/05/2023.
//

import UIKit

class UsersVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = arrNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblUserName: UITextField!
    var arrNames = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        if let text = lblUserName.text{
            arrNames.append(text)
            let indexPath = IndexPath(row:arrNames.count - 1, section: 0)
            tableView.beginUpdates()
            tableView.insertRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            lblUserName.text = ""
        }
    }
    @IBAction func btnEdit(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrNames.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deletsAction = UIContextualAction(style: .destructive, title: ""){
            (action, view, completionHandler) in
            self.arrNames.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            completionHandler(true)
        }
        let favAction = UIContextualAction(style: .normal, title: ""){
            (_, _ , _) in
            print("user Added To Favourite")
        }
        deletsAction.image = UIImage(systemName: "trash")
        favAction.image = UIImage(systemName: "heart")
      //  favAction.backgroundColor = gray
        
        return UISwipeActionsConfiguration(actions: [deletsAction,favAction])
    }
}
