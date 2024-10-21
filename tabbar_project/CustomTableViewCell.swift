//
//  CustomTableViewCell.swift
//  tabbar_project
//
//  Created by Алексей  Шевченко on 19.10.2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let artistLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let playButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "play.circle"), for: .normal)
        button.tintColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(albumImageView)
        contentView.addSubview(songTitleLabel)
        contentView.addSubview(artistLabel)
        contentView.addSubview(playButton)
        
        NSLayoutConstraint.activate([
            albumImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            albumImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            albumImageView.widthAnchor.constraint(equalToConstant: 50),
            albumImageView.heightAnchor.constraint(equalToConstant: 50),
            
            songTitleLabel.leadingAnchor.constraint(equalTo: albumImageView.trailingAnchor, constant: 16),
            songTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7),
            songTitleLabel.trailingAnchor.constraint(equalTo: playButton.leadingAnchor, constant: -16),
            
            artistLabel.leadingAnchor.constraint(equalTo: songTitleLabel.leadingAnchor),
            artistLabel.topAnchor.constraint(equalTo: songTitleLabel.bottomAnchor, constant: 4),
            artistLabel.trailingAnchor.constraint(equalTo: playButton.leadingAnchor, constant: -16),
            
            playButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            playButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 30),
            playButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

