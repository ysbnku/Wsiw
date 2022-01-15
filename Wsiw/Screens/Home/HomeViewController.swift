//
//  HomeViewController.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 2.01.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var sections =  [Sections]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addBackground()
        loadSection()
        loadTableViewCell()
    }
    private func loadTableViewCell() {
        tableView.register(Helpers.loadNib(HomeCellsIdentifiers.hello.rawValue),
                           forCellReuseIdentifier: HomeCellsIdentifiers.hello.rawValue)
        tableView.register(Helpers.loadNib(HomeCellsIdentifiers.trending.rawValue),
                           forCellReuseIdentifier: HomeCellsIdentifiers.trending.rawValue)
        tableView.register(Helpers.loadNib(HomeCellsIdentifiers.popular.rawValue),
                           forCellReuseIdentifier: HomeCellsIdentifiers.popular.rawValue)
    }
    private func loadSection() {
        let helloSection = Sections(title: "", row: 1)
        let popularMovies = Sections(title: "Popular Movies", row: 1)
        let trendingCategory = Sections(title: "Trending Category", row: 1, viewAll: true)
        let newRelease = Sections(title: "New Release", row: 1, viewAll: true)
        sections.append(helloSection)
        sections.append(popularMovies)
        sections.append(trendingCategory)
        sections.append(newRelease)
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sections[section].row
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: HomeCellsIdentifiers.hello.rawValue) as? HelloTableViewCell ?? UITableViewCell()
        }
        if indexPath.section == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: HomeCellsIdentifiers.popular.rawValue) as? PopularMoviesCell ?? UITableViewCell()
        }
        if indexPath.section == 2 {
            cell = tableView.dequeueReusableCell(withIdentifier: HomeCellsIdentifiers.trending.rawValue) as? TrendingCategoryCell ?? UITableViewCell()
        }
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section].title
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

struct Sections {
    var title = ""
    var row = 0
    var viewAll = false
}
enum HomeCellsIdentifiers: String {
    case hello = "HelloTableViewCell"
    case trending = "TrendingCategoryCell"
    case newRelease = "NewReleaseCell"
    case popular = "PopularMoviesCell"

}
