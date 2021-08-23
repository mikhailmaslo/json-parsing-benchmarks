//
//  HandyJSONTwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation
import HandyJSON

extension TwitterFeedResponse: HandyJSON {
    init() {
        data = nil
    }
}

extension TwitterFeedData: HandyJSON {
    init() {
        user = nil
        tweets = nil
    }
}

extension TwitterTweet: HandyJSON {
    init() {
        id = nil
        author = nil
        fullText = nil
    }
}

extension TwitterUser: HandyJSON {
    init() {
        id = nil
        name = nil
        profileThumbnail = nil
    }
}

extension ImageBundle: HandyJSON {
    init() {
        images = nil
    }
}

extension Image: HandyJSON {
    init() {
        size = nil
        url = nil
    }
}

extension Size: HandyJSON {
    init() {
        width = nil
        height = nil
    }
}

final class HandyJSONTwitterParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        let stringJSON = String(data: data, encoding: .utf8)
        return TwitterFeedResponse.deserialize(from: stringJSON)!
    }
}
