//
//  JSONSerializable.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

typealias SwiftJSON = [String: Any]

protocol JSONSerializable {
    init?(json: SwiftJSON)
}
