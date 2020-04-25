//
//  YoutubersListCell.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class YoutubersListCell: UITableViewCell {
    
    @IBOutlet weak var youtuberImage: UIImageView!
    @IBOutlet weak var youtuberName: UILabel!
    @IBOutlet weak var youtuberShortbio: UILabel!
    
    static var nibName: String {
        return "YoutubersListCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.youtuberImage.image = nil
        self.youtuberName.text = ""
        self.youtuberShortbio.text = ""
    }
    
    func set(person: Person) {
        youtuberName.text = person.name
        youtuberShortbio.text = person.shortBio
        youtuberImage.image = UIImage(named: person.photo)
        youtuberImage.layer.cornerRadius = youtuberImage.frame.height / 2
        youtuberImage.contentMode = .scaleAspectFit
    }
    
}
