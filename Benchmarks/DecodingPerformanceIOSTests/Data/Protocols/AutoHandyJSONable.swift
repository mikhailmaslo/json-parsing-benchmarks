//
//  AutoHandyJSONable.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation
import HandyJSON

protocol AutoHandyJSONable: HandyJSON {
}

extension AutoHandyJSONable {
    init() {
        preconditionFailure()
    }
}
