//
//  ZippyJSONTwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation
import ZippyJSON

final class ZippyJSONTwitterParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        try ZippyJSONDecoder().decode(TwitterFeedResponse.self, from: data)
    }
}
