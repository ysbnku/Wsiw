//
//  NewReleaseCell.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 15.01.2022.
//

import UIKit

class PopularMoviesCell: UITableViewCell {

    @IBOutlet weak var popularView: UIView!
    private var popularMoviesViewController: PopularMoviesViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        buildPopularMoviesViewController()
        popularView.clipsToBounds = true
        popularView.layer.cornerRadius = 18
    }
    private func buildPopularMoviesViewController() {
        popularMoviesViewController = PopularMoviesViewController()
        if let view = popularMoviesViewController.view {
            view.frame = popularView.bounds
            popularView.addSubview(view)
        }
    }
}
