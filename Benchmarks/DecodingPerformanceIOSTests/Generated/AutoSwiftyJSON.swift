//
//  AutoSwiftyJSON.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 22.08.2021.
//

import Foundation
import SwiftyJSON

protocol AutoSwiftyJSON: SwiftyJSONable {
}

protocol SwiftyJSONable {
    init?(swiftyJSON: JSON)
}

extension SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        preconditionFailure()
    }
}
