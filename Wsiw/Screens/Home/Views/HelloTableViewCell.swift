//
//  HelloTableViewCell.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 14.01.2022.
//

import UIKit

class HelloTableViewCell: UITableViewCell {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var profilImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    func commonInit() {
        profilImage.layer.cornerRadius = 30
    }
    func configure(hel:String, adv:String, prf:String) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
