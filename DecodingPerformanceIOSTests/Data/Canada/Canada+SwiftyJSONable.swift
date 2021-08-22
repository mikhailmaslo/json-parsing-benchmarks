// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import SwiftyJSON

extension Canada: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.features = swiftyJSON[CodingKeys.features.rawValue].array!.compactMap(Features.init(swiftyJSON:))
    }
}

extension Features: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.properties = Properties(swiftyJSON: swiftyJSON[CodingKeys.properties.rawValue])!
        self.geometry = Geometry(swiftyJSON: swiftyJSON[CodingKeys.geometry.rawValue])!
    }
}

extension Geometry: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.coordinates = swiftyJSON[CodingKeys.coordinates.rawValue].object as! [[[Double]]]
    }
}

extension Properties: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
    }
}

