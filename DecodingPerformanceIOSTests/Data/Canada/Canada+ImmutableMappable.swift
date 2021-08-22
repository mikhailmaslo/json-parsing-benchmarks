//
//  Canada.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation
import ObjectMapper

extension Canada: ImmutableMappable {
    init(map: Map) throws {
        self.type = try map.value(CodingKeys.type.rawValue)
        self.features = try map.value(CodingKeys.features.rawValue)
    }
}

extension Features: ImmutableMappable {
    init(map: Map) throws {
        self.type = try map.value(CodingKeys.type.rawValue)
        self.properties = try map.value(CodingKeys.properties.rawValue)
        self.geometry = try map.value(CodingKeys.geometry.rawValue)
    }
}

extension Geometry: ImmutableMappable {
    init(map: Map) throws {
        self.type = try map.value(CodingKeys.type.rawValue)
        self.coordinates = try map.value(CodingKeys.coordinates.rawValue)
    }
}

extension Properties: ImmutableMappable {
    init(map: Map) throws {
        self.name = try map.value(CodingKeys.name.rawValue)
    }
}
