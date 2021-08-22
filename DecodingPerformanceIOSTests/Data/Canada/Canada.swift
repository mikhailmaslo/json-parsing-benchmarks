//
//  Canada.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

struct Canada: Codable, Equatable {
    var `type`: String!
    var `features`: [Features]!

    enum CodingKeys: String, CodingKey {
        case type, features
    }
}

struct Features: Codable, Equatable {
    var `type`: String!
    var `properties`: Properties!
    var `geometry`: Geometry!

    enum CodingKeys: String, CodingKey {
        case type, properties, geometry
    }
}

struct Geometry: Codable, Equatable {
    var `type`: String!
    var `coordinates`: [[[Double]]]!

    enum CodingKeys: String, CodingKey {
        case type, coordinates
    }
}

struct Properties: Codable, Equatable {
    var `name`: String!

    enum CodingKeys: String, CodingKey {
        case name
    }
}
