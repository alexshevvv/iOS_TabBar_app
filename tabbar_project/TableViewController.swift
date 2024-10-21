//
//  TableViewController.swift
//  tabbar_project
//
//  Created by Алексей  Шевченко on 19.10.2024.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    var items: [(String, String, UIImage?)] = [
        ("Song 1", "Artist 1", UIImage(named: "album1")),
        ("Song 2", "Artist 2", UIImage(named: "album2")),
        ("Song 3", "Artist 3", UIImage(named: "album3"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Music"
        
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
    }
    
    // MARK: - DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let item = items[indexPath.row]
        cell.songTitleLabel.text = item.0
        cell.artistLabel.text = item.1
        cell.albumImageView.image = item.2
        return cell
    }
    
    // MARK: - Add Item
    @objc func addItem() {
        let newItem = ("New Song", "New Artist", UIImage(named: "album4"))
        items.append(newItem)
        tableView.reloadData()
    }
}

