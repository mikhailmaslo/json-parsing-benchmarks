//
//  CodableTwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

extension TwitterFeedResponse {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(TwitterFeedData.self, forKey: .data)
    }
}

extension TwitterFeedData {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        user = try container.decode(TwitterUser.self, forKey: .user)
        tweets = try container.decode([TwitterTweet].self, forKey: .tweets)
    }
}

extension TwitterTweet {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        author = try container.decode(TwitterUser.self, forKey: .author)
        fullText = try container.decode(String.self, forKey: .fullText)
    }
}

extension TwitterUser {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        profileThumbnail = try container.decode(ImageBundle.self, forKey: .profileThumbnail)
    }
}

extension ImageBundle {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        images = try container.decode([Image].self, forKey: .images)
    }
}

extension Image {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        size = try container.decode(Size.self, forKey: .size)
        url = try container.decode(String.self, forKey: .url)
    }
}

extension Size {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        width = try container.decode(Int.self, forKey: .width)
        height = try container.decode(Int.self, forKey: .height)
    }
}

final class CodableTwitterParser: TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse {
        try JSONDecoder().decode(TwitterFeedResponse.self, from: data)
    }
}
