//
//  YoutuberDetailVC.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class YoutuberDetailVC: UIViewController {
    
    @IBOutlet weak var tableVw: UITableView!
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail"
        configureNavigationBar()
        configureTableView()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backgroundColor = UIColor.init(hexString: "9A0000")
        navigationController?.navigationBar.barTintColor = UIColor.init(hexString: "9A0000")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func configureTableView() {
        setTableViewDelegate()
        tableVw.separatorStyle = .none
        tableVw.register(UINib(nibName: YoutubersDetailCell.nibName,
                               bundle: nil),
                         forCellReuseIdentifier: Cells.youtubersDetailCell)
        
        tableVw.register(UINib(nibName: YoutuberBioCell.nibName,
                               bundle: nil),
                         forCellReuseIdentifier: Cells.youtuberBiografi)
    }
    
    func setTableViewDelegate() {
        tableVw.delegate = self
        tableVw.dataSource = self
    }
}

extension YoutuberDetailVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return youtuberDetailCell(tableView, cellForRowAt: indexPath) ?? UITableViewCell()
        case 1:
            return youtuberBioCell(tableView, cellForRowAt: indexPath) ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
}

private extension YoutuberDetailVC {
    
    func youtuberDetailCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> YoutubersDetailCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.youtubersDetailCell, for: indexPath) as? YoutubersDetailCell else { return nil }
        guard let person = person else { return nil }
        cell.set(person: person)
        return cell
    }
    
    func youtuberBioCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> YoutuberBioCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.youtuberBiografi, for: indexPath) as? YoutuberBioCell else { return nil }
        guard let person = person else { return nil }
        cell.set(person: person)
        return cell
    }
    
}
