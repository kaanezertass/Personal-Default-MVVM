//
//  FootballHomeCell.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//

import UIKit
import SnapKit

final class FootballHomeCell: UITableViewCell {
    
    private let cellimage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private let cellLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let labelCell: UILabel = {
        let label = UILabel()
        return label
    }()
//MARK: - Life
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Cell Identifier
    enum Identifier: String {
        case custom = "cell"
    }
    
}

//MARK: - Extension
extension FootballHomeCell{
    
    func configure() {
        cellSubviews()
    }
    
    func cellSubviews() {
        addSubview(cellimage)
        addSubview(cellLabel)
        addSubview(labelCell)
    }
    
  
}
