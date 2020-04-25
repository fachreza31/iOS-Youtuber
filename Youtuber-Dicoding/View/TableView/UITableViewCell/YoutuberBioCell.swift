//
//  YoutuberBioCell.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import UIKit

class YoutuberBioCell: UITableViewCell  {

    @IBOutlet weak var youtuberBiografi: UILabel!
    
    static var nibName: String {
        return "YoutuberBioCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        youtuberBiografi.text = ""
    }
    
    func set(person: Person) {
        youtuberBiografi.text = person.shortBio
    }
}
