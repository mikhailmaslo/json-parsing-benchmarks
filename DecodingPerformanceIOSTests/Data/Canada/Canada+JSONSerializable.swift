//
//  Canada+JSONSerializable.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

extension Canada: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let type = json["type"] as? String,
            let _features = json["features"] as? [SwiftJSON]
        else {
            return nil
        }

        self.type = type
        self.features = _features.compactMap(Features.init(json:))
    }
}

extension Features: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let type = json["type"] as? String,
            let properties = Properties(json: json["properties"] as? SwiftJSON ?? [:]),
            let geometry = Geometry(json: json["geometry"] as? SwiftJSON ?? [:])
        else {
            return nil
        }

        self.type = type
        self.properties = properties
        self.geometry = geometry
    }
}

extension Geometry: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let type = json["type"] as? String,
            let coordinates = json["coordinates"] as? [[[Double]]]
        else {
            return nil
        }

        self.type = type
        self.coordinates = coordinates
    }
}

extension Properties: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let name = json["name"] as? String
        else {
            return nil
        }

        self.name = name
    }
}
