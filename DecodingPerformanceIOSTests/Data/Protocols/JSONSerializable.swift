//
//  JSONSerializable.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

typealias SwiftJSON = [String: Any]

protocol AutoJSONSerializable: JSONSerializable {
}

protocol JSONSerializable {
    init?(json: SwiftJSON)
}

extension JSONSerializable {
    init?(json: SwiftJSON) {
        preconditionFailure()
    }
}

