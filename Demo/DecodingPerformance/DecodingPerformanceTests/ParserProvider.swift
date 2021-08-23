//
//  ParserProvider.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

final class ParserProvider {
    enum Kind {
        case codable
        case jsonSerializer
        case handyJSON
        case swiftyJSON
        case objectMapper
        case zippyJSON
    }

    private let kind: Kind

    init(kind: Kind) {
        self.kind = kind
    }

    func getParser() -> TwitterParser {
        switch kind {
        case .jsonSerializer:
            return JSONSerializerParser()
        case .codable:
            return CodableTwitterParser()
        case .handyJSON:
            return HandyJSONTwitterParser()
        case .objectMapper:
            return ObjectMapperTwitterParser()
        case .swiftyJSON:
            return SwiftyJSONTwitterParser()
        case .zippyJSON:
            return ZippyJSONTwitterParser()
        }
    }
}
