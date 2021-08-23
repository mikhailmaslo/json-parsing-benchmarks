//
//  JSONSerializerParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

typealias NativeJSON = [String: Any]

extension TwitterFeedResponse {
    init(nativeJson: NativeJSON) {
        data = TwitterFeedData(nativeJson: nativeJson)
    }
}

extension TwitterFeedData {
    init(nativeJson: NativeJSON) {
        self = .init(
            user: TwitterUser(nativeJson: nativeJson["user"] as! NativeJSON),
            tweets: (nativeJson["user"] as! [NativeJSON])
                .map { tweetJSON in
                    TwitterTweet(nativeJson: tweetJSON)
                }
        )
    }
}

extension TwitterTweet {
    init(nativeJson: NativeJSON) {
        self = .init(
            id: nativeJson["id"] as! String,
            author: TwitterUser(nativeJson: nativeJson["author"] as! NativeJSON),
            fullText: nativeJson["full_text"] as! String
        )
    }
}

extension TwitterUser {
    init(nativeJson: NativeJSON) {
        self = .init(
            id: nativeJson["id"] as! String,
            name: nativeJson["name"] as! String,
            profileThumbnail: ImageBundle(nativeJson: nativeJson["profile_thumbnail"] as! NativeJSON)
        )
    }
}

extension ImageBundle {
    init(nativeJson: NativeJSON) {
        self = .init(
            images: (nativeJson["images"] as! [NativeJSON])
                .map { imageJSON in
                    Image(nativeJson: imageJSON)
                }
        )
    }
}

extension Image {
    init(nativeJson: NativeJSON) {
        self = .init(
            size: Size(nativeJson: nativeJson["size"] as! NativeJSON),
            url: nativeJson["url"] as! String
        )
    }
}

extension Size {
    init(nativeJson: NativeJSON) {
        self = .init(width: nativeJson["width"] as! Int, height: nativeJson["height"] as! Int)
    }
}

final class JSONSerializerParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        let object = try JSONSerialization.jsonObject(with: data, options: [])
        return TwitterFeedResponse(nativeJson: object as! NativeJSON)
    }
}
