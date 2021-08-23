//
//  TwitterDataObjects.swift
//  DecodingPerformance
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

struct TwitterFeedResponse: Decodable {
    enum CodingKeys: String, CodingKey {
        case data
    }

    let data: TwitterFeedData!
}

struct TwitterFeedData: Decodable {
    enum CodingKeys: String, CodingKey {
        case user, tweets
    }

    let user: TwitterUser!
    let tweets: [TwitterTweet]!
}

struct TwitterTweet: Decodable {
    enum CodingKeys: String, CodingKey {
        case id, author
        case fullText = "full_text"
    }

    let id: String!
    let author: TwitterUser!
    let fullText: String!
}

struct TwitterUser: Decodable {
    enum CodingKeys: String, CodingKey {
        case id, name
        case profileThumbnail = "profile_thumbnail"
    }

    let id: String!
    let name: String!
    let profileThumbnail: ImageBundle!
}

struct ImageBundle: Decodable {
    enum CodingKeys: String, CodingKey {
        case images
    }

    let images: [Image]!
}

struct Image: Decodable {
    enum CodingKeys: String, CodingKey {
        case size, url
    }

    let size: Size!
    let url: String!
}

struct Size: Decodable {
    enum CodingKeys: String, CodingKey {
        case width, height
    }

    let width: Int!
    let height: Int!
}
