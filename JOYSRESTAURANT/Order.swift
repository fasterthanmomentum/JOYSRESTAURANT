//
//  Order.swift
//  JOYSRESTAURANT
//
//  Created by JOY BEST on 10/23/19.
//  Copyright © 2019 JOY BEST. All rights reserved.
//

import Foundation
struct Order: Codable {
    var menuItems: [MenuItem]

    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
