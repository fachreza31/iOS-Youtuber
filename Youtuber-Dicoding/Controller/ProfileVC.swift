//
//  ProfileVC.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        configureNavigationBar()
        imageView.layer.cornerRadius = imageView.frame.height / 2
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backgroundColor = UIColor.init(hexString: "9A0000")
        navigationController?.navigationBar.barTintColor = UIColor.init(hexString: "9A0000")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
