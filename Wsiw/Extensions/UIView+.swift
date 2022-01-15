//
//  Extension+UIImage.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 14.01.2022.
//

import Foundation
import UIKit

extension UIView {
func addBackground() {
    // screen width and height:
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height

    let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
    imageViewBackground.image = UIImage(named: "background")

    // you can change the content mode:
    imageViewBackground.contentMode = .scaleAspectFill

    self.addSubview(imageViewBackground)
    self.sendSubviewToBack(imageViewBackground)
}}
