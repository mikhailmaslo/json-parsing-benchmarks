//
//  main.swift
//  DecodingPerformance
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation
import ObjectMapper
import SwiftyJSON
import HandyJSON
import ZippyJSON
import ExtrasJSON

let json = """
{
    "name": "Nick",
    "age": 30,
    "weight": 75.5,
    "is_married": true,
    "children": [
        {
            "name": "Fred",
            "age": 5,
            "weight": 15,
            "favorite_food": ["candy"]
        }
    ],
    "driver_license": {
        "id": "XXX-YYYY-ZZZZ"
    },
    "params": {
        "a": 1,
        "b": "string"
    }
}
"""

let jsonData = json.data(using: .utf8)!

struct Person {
    let name: String   // required
    let age: Int       // required
    let weight: Double // required
    let isMarried: Bool      // by default is "false"
    let children: [Person]   // by default is empty
    let favoriteFood: [Food] // by default is empty

    let driverLicense: DriverLicense? // by default is nil
}

enum Food: String {
    case apple, candy
}

struct DriverLicense {
    let id: String // required
}
