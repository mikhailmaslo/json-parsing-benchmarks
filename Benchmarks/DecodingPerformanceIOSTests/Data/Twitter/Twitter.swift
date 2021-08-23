//
//  Twitter.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

struct Twitter: Codable, Equatable {
    var statuses: [Status]!
    var searchMetadata: SearchMetadata!

    enum CodingKeys: String, CodingKey {
        case statuses = "statuses"
        case searchMetadata = "search_metadata"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - SearchMetadata
struct SearchMetadata: Codable, Equatable {
    var completedIn: Double!
    var maxid: Double!
    var maxidStr: String!
    var nextResults: String!
    var query: String!
    var refreshurl: String!
    var count: Int!
    var sinceid: Int!
    var sinceidStr: String!

    enum CodingKeys: String, CodingKey {
        case completedIn = "completed_in"
        case maxid = "max_id"
        case maxidStr = "max_id_str"
        case nextResults = "next_results"
        case query = "query"
        case refreshurl = "refresh_url"
        case count = "count"
        case sinceid = "since_id"
        case sinceidStr = "since_id_str"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Status
struct Status: Codable, Equatable {
    var metadata: Metadata!
    var createdAt: String!
    var id: Double!
    var idStr: String!
    var text: String!
    var source: String!
    var truncated: Bool!
    var inReplyToStatusid: Double?
    var inReplyToStatusidStr: String?
    var inReplyToUserid: Int?
    var inReplyToUseridStr: String?
    var inReplyToScreenName: String?
    var user: User!
    //var geo: NSNull?
    // var coordinates: NSNull?
    // var place: NSNull?
    // var contributors: NSNull?
    var retweetCount: Int!
    var favoriteCount: Int!
    var entities: StatusEntities!
    var favorited: Bool!
    var retweeted: Bool!
    var lang: String!
    // var retweetedStatus: Status?
    var possiblySensitive: Bool?

    enum CodingKeys: String, CodingKey {
        case metadata = "metadata"
        case createdAt = "created_at"
        case id = "id"
        case idStr = "id_str"
        case text = "text"
        case source = "source"
        case truncated = "truncated"
        case inReplyToStatusid = "in_reply_to_status_id"
        case inReplyToStatusidStr = "in_reply_to_status_id_str"
        case inReplyToUserid = "in_reply_to_user_id"
        case inReplyToUseridStr = "in_reply_to_user_id_str"
        case inReplyToScreenName = "in_reply_to_screen_name"
        case user = "user"
        // case geo = "geo"
        // case coordinates = "coordinates"
        // case place = "place"
        // case contributors = "contributors"
        case retweetCount = "retweet_count"
        case favoriteCount = "favorite_count"
        case entities = "entities"
        case favorited = "favorited"
        case retweeted = "retweeted"
        case lang = "lang"
        // case retweetedStatus = "retweeted_status"
        case possiblySensitive = "possibly_sensitive"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - StatusEntities
struct StatusEntities: Codable, Equatable {
    var hashtags: [Hashtag]!
    // var symbols: NSNull
    var urls: [URLElement]!
    var userMentions: [UserMention]!
    var media: [Media]?

    enum CodingKeys: String, CodingKey {
        case hashtags = "hashtags"
        // case symbols = "symbols"
        case urls = "urls"
        case userMentions = "user_mentions"
        case media = "media"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Hashtag
struct Hashtag: Codable, Equatable {
    var text: String!
    var indices: [Int]!

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case indices = "indices"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Media
struct Media: Codable, Equatable {
    var id: Double!
    var idStr: String!
    var indices: [Int]!
    var mediaurl: String!
    var mediaurlhttps: String!
    var url: String!
    var displayurl: String!
    var expandedurl: String!
    var type: String!
    var sizes: Sizes!
    var sourceStatusid: Double?
    var sourceStatusidStr: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case idStr = "id_str"
        case indices = "indices"
        case mediaurl = "media_url"
        case mediaurlhttps = "media_url_https"
        case url = "url"
        case displayurl = "display_url"
        case expandedurl = "expanded_url"
        case type = "type"
        case sizes = "sizes"
        case sourceStatusid = "source_status_id"
        case sourceStatusidStr = "source_status_id_str"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Sizes
struct Sizes: Codable, Equatable {
    var medium: Large!
    var small: Large!
    var thumb: Large!
    var large: Large!

    enum CodingKeys: String, CodingKey {
        case medium = "medium"
        case small = "small"
        case thumb = "thumb"
        case large = "large"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Large
struct Large: Codable, Equatable {
    var w: Int!
    var h: Int!
    var resize: String!

    enum CodingKeys: String, CodingKey {
        case w = "w"
        case h = "h"
        case resize = "resize"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - URLElement
struct URLElement: Codable, Equatable {
    var url: String!
    var expandedurl: String!
    var displayurl: String!
    var indices: [Int]!

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case expandedurl = "expanded_url"
        case displayurl = "display_url"
        case indices = "indices"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - UserMention
struct UserMention: Codable, Equatable {
    var screenName: String!
    var name: String!
    var id: Int!
    var idStr: String!
    var indices: [Int]!

    enum CodingKeys: String, CodingKey {
        case screenName = "screen_name"
        case name = "name"
        case id = "id"
        case idStr = "id_str"
        case indices = "indices"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Metadata
struct Metadata: Codable, Equatable {
    var resultType: String!
    var isoLanguageCode: String!

    enum CodingKeys: String, CodingKey {
        case resultType = "result_type"
        case isoLanguageCode = "iso_language_code"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - User
struct User: Codable, Equatable {
    var id: Int!
    var idStr: String!
    var name: String!
    var screenName: String!
    var location: String!
    var userDescription: String!
    var url: String?
    var entities: UserEntities!
    var protected: Bool!
    var followersCount: Int!
    var friendsCount: Int!
    var listedCount: Int!
    var createdAt: String!
    var favouritesCount: Int!
    var utcOffset: Int?
    var timeZone: String?
    var geoEnabled: Bool!
    var verified: Bool!
    var statusesCount: Int!
    var lang: String!
    var contributorsEnabled: Bool!
    var isTranslator: Bool!
    var isTranslationEnabled: Bool!
    var profileBackgroundColor: String!
    var profileBackgroundImageurl: String!
    var profileBackgroundImageurlhttps: String!
    var profileBackgroundTile: Bool!
    var profileImageurl: String!
    var profileImageurlhttps: String!
    var profileBannerurl: String?
    var profileLinkColor: String!
    var profileSidebarBorderColor: String!
    var profileSidebarFillColor: String!
    var profileTextColor: String!
    var profileUseBackgroundImage: Bool!
    var defaultProfile: Bool!
    var defaultProfileImage: Bool!
    var following: Bool!
    var followRequestSent: Bool!
    var notifications: Bool!

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case idStr = "id_str"
        case name = "name"
        case screenName = "screen_name"
        case location = "location"
        case userDescription = "description"
        case url = "url"
        case entities = "entities"
        case protected = "protected"
        case followersCount = "followers_count"
        case friendsCount = "friends_count"
        case listedCount = "listed_count"
        case createdAt = "created_at"
        case favouritesCount = "favourites_count"
        case utcOffset = "utc_offset"
        case timeZone = "time_zone"
        case geoEnabled = "geo_enabled"
        case verified = "verified"
        case statusesCount = "statuses_count"
        case lang = "lang"
        case contributorsEnabled = "contributors_enabled"
        case isTranslator = "is_translator"
        case isTranslationEnabled = "is_translation_enabled"
        case profileBackgroundColor = "profile_background_color"
        case profileBackgroundImageurl = "profile_background_image_url"
        case profileBackgroundImageurlhttps = "profile_background_image_url_https"
        case profileBackgroundTile = "profile_background_tile"
        case profileImageurl = "profile_image_url"
        case profileImageurlhttps = "profile_image_url_https"
        case profileBannerurl = "profile_banner_url"
        case profileLinkColor = "profile_link_color"
        case profileSidebarBorderColor = "profile_sidebar_border_color"
        case profileSidebarFillColor = "profile_sidebar_fill_color"
        case profileTextColor = "profile_text_color"
        case profileUseBackgroundImage = "profile_use_background_image"
        case defaultProfile = "default_profile"
        case defaultProfileImage = "default_profile_image"
        case following = "following"
        case followRequestSent = "follow_request_sent"
        case notifications = "notifications"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - UserEntities
struct UserEntities: Codable, Equatable {
    var entitiesDescription: Description!
    var url: Description?

    enum CodingKeys: String, CodingKey {
        case entitiesDescription = "description"
        case url = "url"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).
// MARK: - Description
struct Description: Codable, Equatable {
    var urls: [URLElement]!

    enum CodingKeys: String, CodingKey {
        case urls = "urls"
    }
}
