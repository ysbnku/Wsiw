//
//  PopularMoviesViewController.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 15.01.2022.
//

import UIKit

class PopularMoviesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCollectionViewCell()
    }
    func loadCollectionViewCell() {
        collectionView.register(Helpers.loadNib(CellIdentifiers.popular.rawValue),
                                forCellWithReuseIdentifier: CellIdentifiers.popular.rawValue)
    }
}
extension PopularMoviesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.popular.rawValue,
                                                         for: indexPath) as? PopularCollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
}
extension PopularMoviesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return view.frame.size
    }
}
enum CellIdentifiers: String {
    case popular = "PopularCollectionViewCell"
}
