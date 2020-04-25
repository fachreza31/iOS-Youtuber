//
//  Array+Ext.swift
//  Youtuber-Dicoding
//
//  Created by Fachreza Audrian Naufal on 21/04/20.
//  Copyright © 2020 Fachreza Audrian Naufal. All rights reserved.
//

import Foundation

extension Array {
    func hasIndex(_ index: Int) -> Bool {
        return indices.contains(index)
    }

    func at(index: Int) -> Element? {
        return hasIndex(index) ? self[index] : nil
    }
}
