//
//  TrendingCategoryCell.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 14.01.2022.
//

import UIKit

class TrendingCategoryCell: UITableViewCell {

    @IBOutlet weak var trendingBtnLeftOne: UIButton!
    @IBOutlet weak var trendingBtnLeftTwo: UIButton!
    @IBOutlet weak var trendingBtnRightOne: UIButton!
    @IBOutlet weak var trendingBtnRightTwo: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    private func commonInit() {
        trendingBtnLeftOne.layer.cornerRadius = 5
        trendingBtnLeftTwo.layer.cornerRadius = 5
        trendingBtnRightOne.layer.cornerRadius = 5
        trendingBtnRightTwo.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func trendingButtonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0: print("Fantasy")
        case 1: print("Adventure")
        case 2: print("Action")
        case 3: print("Sci-Fi")
        default:
            print("Error")
        }
    }
}
