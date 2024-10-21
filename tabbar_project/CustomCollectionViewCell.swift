//
//  CustomCollectionViewCell.swift
//  tabbar_project
//
//  Created by Алексей  Шевченко on 21.10.2024.
//

import Foundation
import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    let albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let songTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(albumImageView)
        contentView.addSubview(songTitleLabel)
        
        NSLayoutConstraint.activate([
            albumImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            albumImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            albumImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            albumImageView.heightAnchor.constraint(equalTo: contentView.widthAnchor),
            
            songTitleLabel.topAnchor.constraint(equalTo: albumImageView.bottomAnchor, constant: 4),
            songTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            songTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            songTitleLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
