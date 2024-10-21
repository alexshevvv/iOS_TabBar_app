//
//  CollectionViewController.swift
//  tabbar_project
//
//  Created by Алексей  Шевченко on 19.10.2024.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var collectionView: UICollectionView!
    let songs = [
        ("Song 1", "Artist 1", UIImage(named: "album1.png")),
        ("Song 2", "Artist 2", UIImage(named: "album2.png")),
        ("Song 3", "Artist 3", UIImage(named: "album3.png"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Albums"
        
        // Настройка layout для коллекции
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.width / 2 - 16, height: view.frame.width / 2 + 40)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 16
        
        // Настройка UICollectionView
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "customCell")
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
    }

    // MARK: - DataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return songs.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        let song = songs[indexPath.item]
        cell.songTitleLabel.text = "\(song.0) - \(song.1)"
        cell.albumImageView.image = song.2
        return cell
    }

    // MARK: - Layout Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2 - 16, height: view.frame.width / 2 + 40)
    }
}

