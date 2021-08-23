//
//  SwiftyJSONTwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation
import SwiftyJSON

extension TwitterFeedResponse {
    init(json: JSON) {
        data = TwitterFeedData(json: json)
    }
}

extension TwitterFeedData {
    init(json: JSON) {
        self = .init(
            user: TwitterUser(json: json["user"]),
            tweets: json["user"]
                .arrayValue
                .map { tweetJSON in
                    TwitterTweet(json: tweetJSON)
                }
        )
    }
}

extension TwitterTweet {
    init(json: JSON) {
        self = .init(
            id: json["id"].stringValue,
            author: TwitterUser(json: json["author"]),
            fullText: json["full_text"].stringValue
        )
    }
}

extension TwitterUser {
    init(json: JSON) {
        self = .init(
            id: json["id"].stringValue,
            name: json["name"].stringValue,
            profileThumbnail: ImageBundle(json: json["profile_thumbnail"])
        )
    }
}

extension ImageBundle {
    init(json: JSON) {
        self = .init(
            images: json["images"]
                .arrayValue
                .map { imageJSON in
                    Image(json: imageJSON)
                }
        )
    }
}

extension Image {
    init(json: JSON) {
        self = .init(size: Size(json: json["size"]), url: json["url"].stringValue)
    }
}

extension Size {
    init(json: JSON) {
        self = .init(width: json["width"].intValue, height: json["height"].intValue)
    }
}

final class SwiftyJSONTwitterParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        TwitterFeedResponse(json: try JSON(data: data))
    }
}
