//
//  IntermediaryModels.swift
//  JOYSRESTAURANT
//
//  Created by JOY BEST on 10/23/19.
//  Copyright © 2019 JOY BEST. All rights reserved.
//

import Foundation
struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int

    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
