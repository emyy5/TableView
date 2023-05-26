//
//  HomeTableViewCell.swift
//  TableFavouriteYoutube46
//
//  Created by Eman Khaled on 21/05/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var btnFriut: UIButton!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imageFruit: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUpCell(photo:UIImage, name: String, price: Double, describtion: String ){
        imageFruit.image = photo
        lblName.text = name
        lblPrice.text = "\(price) SAR"
        lblDesc.text = describtion
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
