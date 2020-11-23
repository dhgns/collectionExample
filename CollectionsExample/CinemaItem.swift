//
//  CinemaItem.swift
//  CollectionsExample
//
//  Created by Delfín Hernández Gómez on 23/11/2020.
//

import Foundation

class CinemaItem {
    
    var itemTitle: String
    var itemDescription: String
    var itemImage: String
    
    init(title: String, desc: String, image: String) {
        self.itemTitle = title
        self.itemDescription = desc
        self.itemImage = image
    }
    
}
