//
//  Canada.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

struct Canada: Codable, Equatable {
    let `type`: String
    let `features`: [Features]

    enum CodingKeys: String, CodingKey {
        case type, features
    }
}

struct Features: Codable, Equatable {
    let `type`: String
    let `properties`: Properties
    let `geometry`: Geometry

    enum CodingKeys: String, CodingKey {
        case type, properties, geometry
    }
}

struct Geometry: Codable, Equatable {
    let `type`: String
    let `coordinates`: [[[Double]]]

    enum CodingKeys: String, CodingKey {
        case type, coordinates
    }
}

struct Properties: Codable, Equatable {
    let `name`: String

    enum CodingKeys: String, CodingKey {
        case name
    }
}
