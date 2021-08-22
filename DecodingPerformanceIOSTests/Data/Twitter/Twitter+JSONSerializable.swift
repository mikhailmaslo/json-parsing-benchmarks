//
//  Twitter.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

extension Twitter: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let searchMetadata = SearchMetadata(json: json[CodingKeys.searchMetadata.rawValue] as? SwiftJSON ?? [:]),
            let statuses = json[CodingKeys.statuses.rawValue] as? [SwiftJSON]
        else {
            return nil
        }

        self.searchMetadata = searchMetadata
        self.statuses = statuses.compactMap(Status.init(json:))
    }
}

extension Description: JSONSerializable {
    init?(json: SwiftJSON) {
        self.urls = (json[CodingKeys.urls.rawValue] as! [SwiftJSON]).compactMap(URLElement.init(json:))
    }
}

extension Hashtag: JSONSerializable {
    init?(json: SwiftJSON) {
        self.text = json[CodingKeys.text.rawValue] as! String
        self.indices = json[CodingKeys.indices.rawValue] as! [Int]
    }
}

extension Large: JSONSerializable {
    init?(json: SwiftJSON) {
        self.w = json[CodingKeys.w.rawValue] as! Int
        self.h = json[CodingKeys.h.rawValue] as! Int
        self.resize = json[CodingKeys.resize.rawValue] as! String
    }
}

extension Media: JSONSerializable {
    init?(json: SwiftJSON) {
        self.id = Double(json[CodingKeys.id.rawValue] as! Int)
        self.idStr = json[CodingKeys.idStr.rawValue] as! String
        self.indices = json[CodingKeys.indices.rawValue] as! [Int]
        self.mediaurl = json[CodingKeys.mediaurl.rawValue] as! String
        self.mediaurlhttps = json[CodingKeys.mediaurlhttps.rawValue] as! String
        self.url = json[CodingKeys.url.rawValue] as! String
        self.displayurl = json[CodingKeys.displayurl.rawValue] as! String
        self.expandedurl = json[CodingKeys.expandedurl.rawValue] as! String
        self.type = json[CodingKeys.type.rawValue] as! String
        self.sizes = Sizes(json: json[CodingKeys.sizes.rawValue] as! SwiftJSON)!
        self.sourceStatusid = json[CodingKeys.sourceStatusid.rawValue] as? Double
        self.sourceStatusidStr = json[CodingKeys.sourceStatusidStr.rawValue] as? String
    }
}

extension Metadata: JSONSerializable {
    init?(json: SwiftJSON) {
        self.resultType = json[CodingKeys.resultType.rawValue] as! String
        self.isoLanguageCode = json[CodingKeys.isoLanguageCode.rawValue] as! String
    }
}

extension Sizes: JSONSerializable {
    init?(json: SwiftJSON) {
        self.medium = Large(json: json[CodingKeys.medium.rawValue] as! SwiftJSON)!
        self.small = Large(json: json[CodingKeys.small.rawValue] as! SwiftJSON)!
        self.thumb = Large(json: json[CodingKeys.thumb.rawValue] as! SwiftJSON)!
        self.large = Large(json: json[CodingKeys.large.rawValue] as! SwiftJSON)!
    }
}

extension Status: JSONSerializable {
    init?(json: SwiftJSON) {
        self.metadata = Metadata(json: json[CodingKeys.metadata.rawValue] as! SwiftJSON)!
        self.createdAt = json[CodingKeys.createdAt.rawValue] as! String
        self.id = Double(json[CodingKeys.id.rawValue] as! Int)
        self.idStr = json[CodingKeys.idStr.rawValue] as! String
        self.text = json[CodingKeys.text.rawValue] as! String
        self.source = json[CodingKeys.source.rawValue] as! String
        self.truncated = json[CodingKeys.truncated.rawValue] as! Bool
        self.inReplyToStatusid = json[CodingKeys.inReplyToStatusid.rawValue] as? Double
        self.inReplyToStatusidStr = json[CodingKeys.inReplyToStatusidStr.rawValue] as? String
        self.inReplyToUserid = json[CodingKeys.inReplyToUserid.rawValue] as? Int
        self.inReplyToUseridStr = json[CodingKeys.inReplyToUseridStr.rawValue] as? String
        self.inReplyToScreenName = json[CodingKeys.inReplyToScreenName.rawValue] as? String
        self.user = User(json: json[CodingKeys.user.rawValue] as! SwiftJSON)!
        self.retweetCount = json[CodingKeys.retweetCount.rawValue] as! Int
        self.favoriteCount = json[CodingKeys.favoriteCount.rawValue] as! Int
        self.entities = StatusEntities(json: json[CodingKeys.entities.rawValue] as! SwiftJSON)!
        self.favorited = json[CodingKeys.favorited.rawValue] as! Bool
        self.retweeted = json[CodingKeys.retweeted.rawValue] as! Bool
        self.lang = json[CodingKeys.lang.rawValue] as! String
        self.possiblySensitive = json[CodingKeys.possiblySensitive.rawValue] as? Bool
    }
}

extension StatusEntities: JSONSerializable {
    init?(json: SwiftJSON) {
        self.hashtags = (json[CodingKeys.hashtags.rawValue] as? [SwiftJSON])?.compactMap(Hashtag.init(json:)) ?? []
        self.urls = (json[CodingKeys.urls.rawValue] as! [SwiftJSON]).compactMap(URLElement.init(json:))
        self.userMentions = (json[CodingKeys.userMentions.rawValue] as! [SwiftJSON]).compactMap(UserMention.init(json:))
        self.media = (json[CodingKeys.media.rawValue] as? [SwiftJSON])?.compactMap(Media.init(json:)) ?? []
    }
}

extension URLElement: JSONSerializable {
    init?(json: SwiftJSON) {
        self.url = json[CodingKeys.url.rawValue] as! String
        self.expandedurl = json[CodingKeys.expandedurl.rawValue] as! String
        self.displayurl = json[CodingKeys.displayurl.rawValue] as! String
        self.indices = json[CodingKeys.indices.rawValue] as! [Int]
    }
}

extension User: JSONSerializable {
    init?(json: SwiftJSON) {
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.idStr = json[CodingKeys.idStr.rawValue] as! String
        self.name = json[CodingKeys.name.rawValue] as! String
        self.screenName = json[CodingKeys.screenName.rawValue] as! String
        self.location = json[CodingKeys.location.rawValue] as! String
        self.userDescription = json[CodingKeys.userDescription.rawValue] as! String
        self.url = json[CodingKeys.url.rawValue] as? String
        self.entities = UserEntities(json: json[CodingKeys.entities.rawValue] as! SwiftJSON)!
        self.protected = json[CodingKeys.protected.rawValue] as! Bool
        self.followersCount = json[CodingKeys.followersCount.rawValue] as! Int
        self.friendsCount = json[CodingKeys.friendsCount.rawValue] as! Int
        self.listedCount = json[CodingKeys.listedCount.rawValue] as! Int
        self.createdAt = json[CodingKeys.createdAt.rawValue] as! String
        self.favouritesCount = json[CodingKeys.favouritesCount.rawValue] as! Int
        self.utcOffset = json[CodingKeys.utcOffset.rawValue] as? Int
        self.timeZone = json[CodingKeys.timeZone.rawValue] as? String
        self.geoEnabled = json[CodingKeys.geoEnabled.rawValue] as! Bool
        self.verified = json[CodingKeys.verified.rawValue] as! Bool
        self.statusesCount = json[CodingKeys.statusesCount.rawValue] as! Int
        self.lang = json[CodingKeys.lang.rawValue] as! String
        self.contributorsEnabled = json[CodingKeys.contributorsEnabled.rawValue] as! Bool
        self.isTranslator = json[CodingKeys.isTranslator.rawValue] as! Bool
        self.isTranslationEnabled = json[CodingKeys.isTranslationEnabled.rawValue] as! Bool
        self.profileBackgroundColor = json[CodingKeys.profileBackgroundColor.rawValue] as! String
        self.profileBackgroundImageurl = json[CodingKeys.profileBackgroundImageurl.rawValue] as! String
        self.profileBackgroundImageurlhttps = json[CodingKeys.profileBackgroundImageurlhttps.rawValue] as! String
        self.profileBackgroundTile = json[CodingKeys.profileBackgroundTile.rawValue] as! Bool
        self.profileImageurl = json[CodingKeys.profileImageurl.rawValue] as! String
        self.profileImageurlhttps = json[CodingKeys.profileImageurlhttps.rawValue] as! String
        self.profileBannerurl = json[CodingKeys.profileBannerurl.rawValue] as? String
        self.profileLinkColor = json[CodingKeys.profileLinkColor.rawValue] as! String
        self.profileSidebarBorderColor = json[CodingKeys.profileSidebarBorderColor.rawValue] as! String
        self.profileSidebarFillColor = json[CodingKeys.profileSidebarFillColor.rawValue] as! String
        self.profileTextColor = json[CodingKeys.profileTextColor.rawValue] as! String
        self.profileUseBackgroundImage = json[CodingKeys.profileUseBackgroundImage.rawValue] as! Bool
        self.defaultProfile = json[CodingKeys.defaultProfile.rawValue] as! Bool
        self.defaultProfileImage = json[CodingKeys.defaultProfileImage.rawValue] as! Bool
        self.following = json[CodingKeys.following.rawValue] as! Bool
        self.followRequestSent = json[CodingKeys.followRequestSent.rawValue] as! Bool
        self.notifications = json[CodingKeys.notifications.rawValue] as! Bool
    }
}

extension UserEntities: JSONSerializable {
    init?(json: SwiftJSON) {
        self.entitiesDescription = Description(json: json[CodingKeys.entitiesDescription.rawValue] as! SwiftJSON)!
        self.url = (json[CodingKeys.url.rawValue] as? SwiftJSON).map { Description(json: $0) } ?? nil
    }
}

extension UserMention: JSONSerializable {
    init?(json: SwiftJSON) {
        self.screenName = json[CodingKeys.screenName.rawValue] as! String
        self.name = json[CodingKeys.name.rawValue] as! String
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.idStr = json[CodingKeys.idStr.rawValue] as! String
        self.indices = json[CodingKeys.indices.rawValue] as! [Int]
    }
}

//import Foundation
//

//
extension SearchMetadata: JSONSerializable {
    init?(json: SwiftJSON) {
        guard
            let completedIn = json[CodingKeys.completedIn.rawValue] as? Double,
            let maxid = json[CodingKeys.maxid.rawValue] as? Int,
            let maxidStr = json[CodingKeys.maxidStr.rawValue] as? String,
            let nextResults = json[CodingKeys.nextResults.rawValue] as? String,
            let query = json[CodingKeys.query.rawValue] as? String,
            let refreshurl = json[CodingKeys.refreshurl.rawValue] as? String,
            let count = json[CodingKeys.count.rawValue] as? Int,
            let sinceid = json[CodingKeys.sinceid.rawValue] as? Int,
            let sinceidStr = json[CodingKeys.sinceidStr.rawValue] as? String
        else {
            return nil
        }

        self.completedIn = completedIn
        self.maxid = Double(maxid)
        self.maxidStr = maxidStr
        self.nextResults = nextResults
        self.query = query
        self.refreshurl = refreshurl
        self.count = count
        self.sinceid = sinceid
        self.sinceidStr = sinceidStr
    }
}
