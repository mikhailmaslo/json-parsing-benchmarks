// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import HandyJSON

extension Canada: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.features <-- CodingKeys.features.rawValue
    }
}

extension Features: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.properties <-- CodingKeys.properties.rawValue
        mapper <<<
            self.geometry <-- CodingKeys.geometry.rawValue
    }
}

extension Geometry: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.coordinates <-- CodingKeys.coordinates.rawValue
    }
}

extension Properties: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
    }
}
