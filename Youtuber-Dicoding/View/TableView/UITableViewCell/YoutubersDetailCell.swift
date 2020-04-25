//
//  YoutubersDetailCell.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class YoutubersDetailCell: UITableViewCell {
    
    @IBOutlet weak var youtuberName: UILabel!
    @IBOutlet weak var youtuberDob: UILabel!
    @IBOutlet weak var youtuberStatus: UILabel!
    @IBOutlet weak var youtuberSubscriber: UILabel!
    @IBOutlet weak var youtuberImage: UIImageView!
    
    static var nibName: String {
        return "YoutubersDetailCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        youtuberImage.image = nil
        youtuberName.text = ""
        youtuberDob.text = ""
        youtuberStatus.text = ""
        youtuberSubscriber.text = ""
    }
    
    func set(person: Person) {
        youtuberName.text = person.fullName
        youtuberDob.text = person.dob
        youtuberStatus.text = person.status
        youtuberSubscriber.text = person.subscriber
        youtuberImage.image = UIImage(named: person.photo)
        youtuberName.layer.cornerRadius = 0.5
    }
}
