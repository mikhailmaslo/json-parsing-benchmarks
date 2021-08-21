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
}

struct Features: Codable, Equatable {
    let `type`: String
    let `properties`: Properties
    let `geometry`: Geometry
}

struct Geometry: Codable, Equatable {
    let `type`: String
    let `coordinates`: [[[Double]]]
}

struct Properties: Codable, Equatable {
    let `name`: String
}
