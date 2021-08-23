//
//  ObjectMapperTwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation
import ObjectMapper

import ObjectMapper

extension TwitterFeedResponse: ImmutableMappable {
    public init(map: Map) throws {
        var data: TwitterFeedData!
        data <- map["data"]
        self = .init(
            data: data
        )
    }
}

extension TwitterFeedData: ImmutableMappable {
    public init(map: Map) throws {
        var user: TwitterUser!
        var tweets: [TwitterTweet]!
        user <- map["user"]
        tweets <- map["tweets"]
        self = .init(
            user: user,
            tweets: tweets
        )
    }
}

extension TwitterTweet: ImmutableMappable {
    public init(map: Map) throws {
        var author: TwitterUser!
        author <- map["author"]
        self = .init(
            id: try map.value("id"),
            author: author,
            fullText: try map.value("full_text")
        )
    }
}

extension TwitterUser: ImmutableMappable {
    public init(map: Map) throws {
        var profileThumbnail: ImageBundle!
        profileThumbnail <- map["profile_thumbnail"]
        self = .init(
            id: try map.value("id"),
            name: try map.value("name"),
            profileThumbnail: profileThumbnail
        )
    }
}

extension ImageBundle: ImmutableMappable {
    public init(map: Map) throws {
        var images: [Image]!
        images <- map["images"]
        self = .init(
            images: images
        )
    }
}

extension Image: ImmutableMappable {
    public init(map: Map) throws {
        var size: Size!
        size <- map["size"]
        self = .init(
            size: size,
            url: try map.value("url")
        )
    }
}

extension Size: ImmutableMappable {
    public init(map: Map) throws {
        self = .init(width: try map.value("width"), height: try map.value("height"))
    }
}

final class ObjectMapperTwitterParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        try Mapper<TwitterFeedResponse>().map(JSONObject: data)
    }
}
