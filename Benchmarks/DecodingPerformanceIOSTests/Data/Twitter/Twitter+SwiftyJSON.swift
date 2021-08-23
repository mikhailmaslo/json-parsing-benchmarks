// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import SwiftyJSON

extension Description: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.urls = swiftyJSON[CodingKeys.urls.rawValue].arrayValue.compactMap(URLElement.init(swiftyJSON:))
    }
}

extension Hashtag: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.text = swiftyJSON[CodingKeys.text.rawValue].string!
        self.indices = swiftyJSON[CodingKeys.indices.rawValue].arrayValue.compactMap { $0.int }
    }
}

extension Large: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.w = swiftyJSON[CodingKeys.w.rawValue].int!
        self.h = swiftyJSON[CodingKeys.h.rawValue].int!
        self.resize = swiftyJSON[CodingKeys.resize.rawValue].string!
    }
}

extension Media: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.id = swiftyJSON[CodingKeys.id.rawValue].double!
        self.idStr = swiftyJSON[CodingKeys.idStr.rawValue].string!
        self.indices = swiftyJSON[CodingKeys.indices.rawValue].arrayValue.compactMap { $0.int }
        self.mediaurl = swiftyJSON[CodingKeys.mediaurl.rawValue].string!
        self.mediaurlhttps = swiftyJSON[CodingKeys.mediaurlhttps.rawValue].string!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.displayurl = swiftyJSON[CodingKeys.displayurl.rawValue].string!
        self.expandedurl = swiftyJSON[CodingKeys.expandedurl.rawValue].string!
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.sizes = Sizes(swiftyJSON: swiftyJSON[CodingKeys.sizes.rawValue])!
        self.sourceStatusid = swiftyJSON[CodingKeys.sourceStatusid.rawValue].double
        self.sourceStatusidStr = swiftyJSON[CodingKeys.sourceStatusidStr.rawValue].string
    }
}

extension Metadata: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.resultType = swiftyJSON[CodingKeys.resultType.rawValue].string!
        self.isoLanguageCode = swiftyJSON[CodingKeys.isoLanguageCode.rawValue].string!
    }
}

extension SearchMetadata: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.completedIn = swiftyJSON[CodingKeys.completedIn.rawValue].double!
        self.maxid = swiftyJSON[CodingKeys.maxid.rawValue].double!
        self.maxidStr = swiftyJSON[CodingKeys.maxidStr.rawValue].string!
        self.nextResults = swiftyJSON[CodingKeys.nextResults.rawValue].string!
        self.query = swiftyJSON[CodingKeys.query.rawValue].string!
        self.refreshurl = swiftyJSON[CodingKeys.refreshurl.rawValue].string!
        self.count = swiftyJSON[CodingKeys.count.rawValue].int!
        self.sinceid = swiftyJSON[CodingKeys.sinceid.rawValue].int!
        self.sinceidStr = swiftyJSON[CodingKeys.sinceidStr.rawValue].string!
    }
}

extension Sizes: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.medium = Large(swiftyJSON: swiftyJSON[CodingKeys.medium.rawValue])!
        self.small = Large(swiftyJSON: swiftyJSON[CodingKeys.small.rawValue])!
        self.thumb = Large(swiftyJSON: swiftyJSON[CodingKeys.thumb.rawValue])!
        self.large = Large(swiftyJSON: swiftyJSON[CodingKeys.large.rawValue])!
    }
}

extension Status: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.metadata = Metadata(swiftyJSON: swiftyJSON[CodingKeys.metadata.rawValue])!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].string!
        self.id = swiftyJSON[CodingKeys.id.rawValue].double!
        self.idStr = swiftyJSON[CodingKeys.idStr.rawValue].string!
        self.text = swiftyJSON[CodingKeys.text.rawValue].string!
        self.source = swiftyJSON[CodingKeys.source.rawValue].string!
        self.truncated = swiftyJSON[CodingKeys.truncated.rawValue].bool!
        self.inReplyToStatusid = swiftyJSON[CodingKeys.inReplyToStatusid.rawValue].double
        self.inReplyToStatusidStr = swiftyJSON[CodingKeys.inReplyToStatusidStr.rawValue].string
        self.inReplyToUserid = swiftyJSON[CodingKeys.inReplyToUserid.rawValue].int
        self.inReplyToUseridStr = swiftyJSON[CodingKeys.inReplyToUseridStr.rawValue].string
        self.inReplyToScreenName = swiftyJSON[CodingKeys.inReplyToScreenName.rawValue].string
        self.user = User(swiftyJSON: swiftyJSON[CodingKeys.user.rawValue])!
        self.retweetCount = swiftyJSON[CodingKeys.retweetCount.rawValue].int!
        self.favoriteCount = swiftyJSON[CodingKeys.favoriteCount.rawValue].int!
        self.entities = StatusEntities(swiftyJSON: swiftyJSON[CodingKeys.entities.rawValue])!
        self.favorited = swiftyJSON[CodingKeys.favorited.rawValue].bool!
        self.retweeted = swiftyJSON[CodingKeys.retweeted.rawValue].bool!
        self.lang = swiftyJSON[CodingKeys.lang.rawValue].string!
        self.possiblySensitive = swiftyJSON[CodingKeys.possiblySensitive.rawValue].bool
    }
}

extension StatusEntities: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.hashtags = swiftyJSON[CodingKeys.hashtags.rawValue].arrayValue.compactMap(Hashtag.init(swiftyJSON:))
        self.urls = swiftyJSON[CodingKeys.urls.rawValue].arrayValue.compactMap(URLElement.init(swiftyJSON:))
        self.userMentions = swiftyJSON[CodingKeys.userMentions.rawValue].arrayValue.compactMap(UserMention.init(swiftyJSON:))
        self.media = swiftyJSON[CodingKeys.media.rawValue].arrayValue.compactMap(Media.init(swiftyJSON:))
    }
}

extension Twitter: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.statuses = swiftyJSON[CodingKeys.statuses.rawValue].arrayValue.compactMap(Status.init(swiftyJSON:))
        self.searchMetadata = SearchMetadata(swiftyJSON: swiftyJSON[CodingKeys.searchMetadata.rawValue])!
    }
}

extension URLElement: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.expandedurl = swiftyJSON[CodingKeys.expandedurl.rawValue].string!
        self.displayurl = swiftyJSON[CodingKeys.displayurl.rawValue].string!
        self.indices = swiftyJSON[CodingKeys.indices.rawValue].arrayValue.compactMap { $0.int }
    }
}

extension User: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.idStr = swiftyJSON[CodingKeys.idStr.rawValue].string!
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
        self.screenName = swiftyJSON[CodingKeys.screenName.rawValue].string!
        self.location = swiftyJSON[CodingKeys.location.rawValue].string!
        self.userDescription = swiftyJSON[CodingKeys.userDescription.rawValue].string!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string
        self.entities = UserEntities(swiftyJSON: swiftyJSON[CodingKeys.entities.rawValue])!
        self.protected = swiftyJSON[CodingKeys.protected.rawValue].bool!
        self.followersCount = swiftyJSON[CodingKeys.followersCount.rawValue].int!
        self.friendsCount = swiftyJSON[CodingKeys.friendsCount.rawValue].int!
        self.listedCount = swiftyJSON[CodingKeys.listedCount.rawValue].int!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].string!
        self.favouritesCount = swiftyJSON[CodingKeys.favouritesCount.rawValue].int!
        self.utcOffset = swiftyJSON[CodingKeys.utcOffset.rawValue].int
        self.timeZone = swiftyJSON[CodingKeys.timeZone.rawValue].string
        self.geoEnabled = swiftyJSON[CodingKeys.geoEnabled.rawValue].bool!
        self.verified = swiftyJSON[CodingKeys.verified.rawValue].bool!
        self.statusesCount = swiftyJSON[CodingKeys.statusesCount.rawValue].int!
        self.lang = swiftyJSON[CodingKeys.lang.rawValue].string!
        self.contributorsEnabled = swiftyJSON[CodingKeys.contributorsEnabled.rawValue].bool!
        self.isTranslator = swiftyJSON[CodingKeys.isTranslator.rawValue].bool!
        self.isTranslationEnabled = swiftyJSON[CodingKeys.isTranslationEnabled.rawValue].bool!
        self.profileBackgroundColor = swiftyJSON[CodingKeys.profileBackgroundColor.rawValue].string!
        self.profileBackgroundImageurl = swiftyJSON[CodingKeys.profileBackgroundImageurl.rawValue].string!
        self.profileBackgroundImageurlhttps = swiftyJSON[CodingKeys.profileBackgroundImageurlhttps.rawValue].string!
        self.profileBackgroundTile = swiftyJSON[CodingKeys.profileBackgroundTile.rawValue].bool!
        self.profileImageurl = swiftyJSON[CodingKeys.profileImageurl.rawValue].string!
        self.profileImageurlhttps = swiftyJSON[CodingKeys.profileImageurlhttps.rawValue].string!
        self.profileBannerurl = swiftyJSON[CodingKeys.profileBannerurl.rawValue].string
        self.profileLinkColor = swiftyJSON[CodingKeys.profileLinkColor.rawValue].string!
        self.profileSidebarBorderColor = swiftyJSON[CodingKeys.profileSidebarBorderColor.rawValue].string!
        self.profileSidebarFillColor = swiftyJSON[CodingKeys.profileSidebarFillColor.rawValue].string!
        self.profileTextColor = swiftyJSON[CodingKeys.profileTextColor.rawValue].string!
        self.profileUseBackgroundImage = swiftyJSON[CodingKeys.profileUseBackgroundImage.rawValue].bool!
        self.defaultProfile = swiftyJSON[CodingKeys.defaultProfile.rawValue].bool!
        self.defaultProfileImage = swiftyJSON[CodingKeys.defaultProfileImage.rawValue].bool!
        self.following = swiftyJSON[CodingKeys.following.rawValue].bool!
        self.followRequestSent = swiftyJSON[CodingKeys.followRequestSent.rawValue].bool!
        self.notifications = swiftyJSON[CodingKeys.notifications.rawValue].bool!
    }
}

extension UserEntities: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.entitiesDescription = Description(swiftyJSON: swiftyJSON[CodingKeys.entitiesDescription.rawValue])!
        self.url = Description(swiftyJSON: swiftyJSON[CodingKeys.url.rawValue])!
    }
}

extension UserMention: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.screenName = swiftyJSON[CodingKeys.screenName.rawValue].string!
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.idStr = swiftyJSON[CodingKeys.idStr.rawValue].string!
        self.indices = swiftyJSON[CodingKeys.indices.rawValue].arrayValue.compactMap { $0.int }
    }
}

