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
            "favorite_food": ["candy"],
            "nickname": "freddy"
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

struct Person: AutoCodable {
    let name: String   // required
    let age: Int       // required
    let weight: Double // required
    // sourcery: key = is_married, default = false
    let isMarried: Bool
    // sourcery: default = Array()
    let children: [Person]
    // sourcery: key = favorite_food, default = Array()
    let favoriteFood: [Food]

    // sourcery: key = driver_license
    let driverLicense: DriverLicense? // by default is nil
    let params: AnyCodable?
}

enum Food: String, AutoCodable {
    case apple, candy
}

struct DriverLicense: AutoCodable {
    let id: String // required
}

do {
    let person = try JSONDecoder().decode(Person.self, from: jsonData)
    print(person)
} catch {
    print(error)
}

