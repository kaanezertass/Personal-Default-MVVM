//
//  KaanHomeController.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//

import UIKit
import SnapKit

final class KaanHomeController: UIViewController {
    
    // MARK: - UI
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
       
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        makeTableView()
    }

    private func configure() {
        design()
        ElemetaddSubview()
    }
    
    private func design() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FootballHomeCell.self, forCellReuseIdentifier: FootballHomeCell.Identifier.custom.rawValue)
       
    }
    
    private func ElemetaddSubview() {
        view.addSubview(tableView)
    }

}


extension KaanHomeController: tbc {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: FootballHomeCell = tableView.dequeueReusableCell(withIdentifier: FootballHomeCell.Identifier.custom.rawValue) as? FootballHomeCell else { return UITableViewCell() }
        
        return cell
    }
    
    
}

extension KaanHomeController  {
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
