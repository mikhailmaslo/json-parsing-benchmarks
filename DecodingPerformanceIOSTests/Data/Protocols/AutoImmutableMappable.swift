//
//  AutoImmutableMappable.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 22.08.2021.
//

import Foundation
import ObjectMapper

protocol AutoImmutableMappable: ImmutableMappable {
}
extension AutoImmutableMappable {
    init(map: Map) throws {
        preconditionFailure()
    }
}
