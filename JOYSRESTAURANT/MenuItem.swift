//
//  MenuItem.swift
//  JOYSRESTAURANT
//
//  Created by JOY BEST on 10/23/19.
//  Copyright © 2019 JOY BEST. All rights reserved.
//

import Foundation
struct MenuItem: Codable {
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var categoryName: String
    var imageURL: URL

       enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case categoryName = "category"
case imageURL = "image_url"
    }
}

struct MenuItems: Codable {
    let items: [MenuItem]
}
