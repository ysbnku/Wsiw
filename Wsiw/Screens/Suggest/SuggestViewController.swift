//
//  ViewController.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 1.01.2022.
//

import UIKit

class SuggestViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    var films = loadCSV(from: "IMDBdata_MainData")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground()
        image.downloaded(from: films[888].posterLink)
        print(films[666].posterLink)
    }
}
