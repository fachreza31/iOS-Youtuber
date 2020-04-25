//
//  HomeYoutubersVC.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class HomeYoutubersVC: UIViewController {
    
    @IBOutlet weak var tableVw: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Youtubers Indonesia"
        configureNavigationBar()
        configureBarButton()
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
    
    func configureBarButton() {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.addTarget(self, action:#selector(toMyProfile), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barButton
    }
    
    func configureTableView() {
        setTableViewDelegate()
        tableVw.separatorStyle = .none
        tableVw.register(UINib(nibName: YoutubersListCell.nibName,
                               bundle: nil),
                         forCellReuseIdentifier: Cells.youtuberListCell)
    }
    
    func setTableViewDelegate() {
        tableVw.delegate = self
        tableVw.dataSource = self
    }
    
    @objc func toMyProfile() {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ProfileVC") as? ProfileVC {
                navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension HomeYoutubersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.youtuberListCell, for: indexPath) as? YoutubersListCell else { return UITableViewCell() }
        
        guard let person = persons.at(index: indexPath.row) else { return UITableViewCell() }
        cell.set(person: person)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "YoutuberDetailVC") as? YoutuberDetailVC {
            vc.person = persons.at(index: indexPath.row)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
