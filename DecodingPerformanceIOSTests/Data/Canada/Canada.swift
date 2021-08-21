//
//  Canada.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

struct canada: Codable, Equatable {
    let `type`: String
    let `features`: [features]
}

struct features: Codable, Equatable {
    let `type`: String
    let `properties`: properties
    let `geometry`: geometry
}

struct geometry: Codable, Equatable {
    let `type`: String
    let `coordinates`: [[[Double]]]
}

struct properties: Codable, Equatable {
    let `name`: String
}
