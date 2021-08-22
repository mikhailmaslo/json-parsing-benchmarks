//
//  Twitter.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation
import ObjectMapper

extension Description: ImmutableMappable {
    init(map: Map) throws {
        self.urls = try map.value(CodingKeys.urls.rawValue)
    }
}

extension Hashtag: ImmutableMappable {
    init(map: Map) throws {
        self.text = try map.value(CodingKeys.text.rawValue)
        self.indices = try map.value(CodingKeys.indices.rawValue)
    }
}

extension Large: ImmutableMappable {
    init(map: Map) throws {
        self.w = try map.value(CodingKeys.w.rawValue)
        self.h = try map.value(CodingKeys.h.rawValue)
        self.resize = try map.value(CodingKeys.resize.rawValue)
    }
}

extension Media: ImmutableMappable {
    init(map: Map) throws {
        self.id = try map.value(CodingKeys.id.rawValue)
        self.idStr = try map.value(CodingKeys.idStr.rawValue)
        self.indices = try map.value(CodingKeys.indices.rawValue)
        self.mediaurl = try map.value(CodingKeys.mediaurl.rawValue)
        self.mediaurlhttps = try map.value(CodingKeys.mediaurlhttps.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.displayurl = try map.value(CodingKeys.displayurl.rawValue)
        self.expandedurl = try map.value(CodingKeys.expandedurl.rawValue)
        self.type = try map.value(CodingKeys.type.rawValue)
        self.sizes = try map.value(CodingKeys.sizes.rawValue)
        self.sourceStatusid = try? map.value(CodingKeys.sourceStatusid.rawValue)
        self.sourceStatusidStr = try? map.value(CodingKeys.sourceStatusidStr.rawValue)
    }
}

extension Metadata: ImmutableMappable {
    init(map: Map) throws {
        self.resultType = try map.value(CodingKeys.resultType.rawValue)
        self.isoLanguageCode = try map.value(CodingKeys.isoLanguageCode.rawValue)
    }
}

extension SearchMetadata: ImmutableMappable {
    init(map: Map) throws {
        self.completedIn = try map.value(CodingKeys.completedIn.rawValue)
        var maxid: Int!
        maxid = try map.value(CodingKeys.maxid.rawValue)
        self.maxid = Double(maxid)
        self.maxidStr = try map.value(CodingKeys.maxidStr.rawValue)
        self.nextResults = try map.value(CodingKeys.nextResults.rawValue)
        self.query = try map.value(CodingKeys.query.rawValue)
        self.refreshurl = try map.value(CodingKeys.refreshurl.rawValue)
        self.count = try map.value(CodingKeys.count.rawValue)
        self.sinceid = try map.value(CodingKeys.sinceid.rawValue)
        self.sinceidStr = try map.value(CodingKeys.sinceidStr.rawValue)
    }
}

extension Sizes: ImmutableMappable {
    init(map: Map) throws {
        self.medium = try map.value(CodingKeys.medium.rawValue)
        self.small = try map.value(CodingKeys.small.rawValue)
        self.thumb = try map.value(CodingKeys.thumb.rawValue)
        self.large = try map.value(CodingKeys.large.rawValue)
    }
}

extension Status: ImmutableMappable {
    init(map: Map) throws {
        self.metadata = try map.value(CodingKeys.metadata.rawValue)
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue)
        var id: Int!
        id = try map.value(CodingKeys.id.rawValue)
        self.id = Double(id)
        self.idStr = try map.value(CodingKeys.idStr.rawValue)
        self.text = try map.value(CodingKeys.text.rawValue)
        self.source = try map.value(CodingKeys.source.rawValue)
        self.truncated = try map.value(CodingKeys.truncated.rawValue)
        self.inReplyToStatusid = try? map.value(CodingKeys.inReplyToStatusid.rawValue)
        self.inReplyToStatusidStr = try? map.value(CodingKeys.inReplyToStatusidStr.rawValue)
        self.inReplyToUserid = try? map.value(CodingKeys.inReplyToUserid.rawValue)
        self.inReplyToUseridStr = try? map.value(CodingKeys.inReplyToUseridStr.rawValue)
        self.inReplyToScreenName = try? map.value(CodingKeys.inReplyToScreenName.rawValue)
        self.user = try map.value(CodingKeys.user.rawValue)
        self.retweetCount = try map.value(CodingKeys.retweetCount.rawValue)
        self.favoriteCount = try map.value(CodingKeys.favoriteCount.rawValue)
        self.entities = try map.value(CodingKeys.entities.rawValue)
        self.favorited = try map.value(CodingKeys.favorited.rawValue)
        self.retweeted = try map.value(CodingKeys.retweeted.rawValue)
        self.lang = try map.value(CodingKeys.lang.rawValue)
        self.possiblySensitive = try? map.value(CodingKeys.possiblySensitive.rawValue)
    }
}

extension StatusEntities: ImmutableMappable {
    init(map: Map) throws {
        self.hashtags = try map.value(CodingKeys.hashtags.rawValue)
        self.urls = try map.value(CodingKeys.urls.rawValue)
        self.userMentions = try map.value(CodingKeys.userMentions.rawValue)
        self.media = try? map.value(CodingKeys.media.rawValue)
    }
}

extension Twitter: ImmutableMappable {
    init(map: Map) throws {
        self.statuses = try map.value(CodingKeys.statuses.rawValue)
        self.searchMetadata = try map.value(CodingKeys.searchMetadata.rawValue)
    }
}

extension URLElement: ImmutableMappable {
    init(map: Map) throws {
        self.url = try map.value(CodingKeys.url.rawValue)
        self.expandedurl = try map.value(CodingKeys.expandedurl.rawValue)
        self.displayurl = try map.value(CodingKeys.displayurl.rawValue)
        self.indices = try map.value(CodingKeys.indices.rawValue)
    }
}

extension User: ImmutableMappable {
    init(map: Map) throws {
        self.id = try map.value(CodingKeys.id.rawValue)
        self.idStr = try map.value(CodingKeys.idStr.rawValue)
        self.name = try map.value(CodingKeys.name.rawValue)
        self.screenName = try map.value(CodingKeys.screenName.rawValue)
        self.location = try map.value(CodingKeys.location.rawValue)
        self.userDescription = try map.value(CodingKeys.userDescription.rawValue)
        self.url = try? map.value(CodingKeys.url.rawValue)
        self.entities = try map.value(CodingKeys.entities.rawValue)
        self.protected = try map.value(CodingKeys.protected.rawValue)
        self.followersCount = try map.value(CodingKeys.followersCount.rawValue)
        self.friendsCount = try map.value(CodingKeys.friendsCount.rawValue)
        self.listedCount = try map.value(CodingKeys.listedCount.rawValue)
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue)
        self.favouritesCount = try map.value(CodingKeys.favouritesCount.rawValue)
        self.utcOffset = try? map.value(CodingKeys.utcOffset.rawValue)
        self.timeZone = try? map.value(CodingKeys.timeZone.rawValue)
        self.geoEnabled = try map.value(CodingKeys.geoEnabled.rawValue)
        self.verified = try map.value(CodingKeys.verified.rawValue)
        self.statusesCount = try map.value(CodingKeys.statusesCount.rawValue)
        self.lang = try map.value(CodingKeys.lang.rawValue)
        self.contributorsEnabled = try map.value(CodingKeys.contributorsEnabled.rawValue)
        self.isTranslator = try map.value(CodingKeys.isTranslator.rawValue)
        self.isTranslationEnabled = try map.value(CodingKeys.isTranslationEnabled.rawValue)
        self.profileBackgroundColor = try map.value(CodingKeys.profileBackgroundColor.rawValue)
        self.profileBackgroundImageurl = try map.value(CodingKeys.profileBackgroundImageurl.rawValue)
        self.profileBackgroundImageurlhttps = try map.value(CodingKeys.profileBackgroundImageurlhttps.rawValue)
        self.profileBackgroundTile = try map.value(CodingKeys.profileBackgroundTile.rawValue)
        self.profileImageurl = try map.value(CodingKeys.profileImageurl.rawValue)
        self.profileImageurlhttps = try map.value(CodingKeys.profileImageurlhttps.rawValue)
        self.profileBannerurl = try? map.value(CodingKeys.profileBannerurl.rawValue)
        self.profileLinkColor = try map.value(CodingKeys.profileLinkColor.rawValue)
        self.profileSidebarBorderColor = try map.value(CodingKeys.profileSidebarBorderColor.rawValue)
        self.profileSidebarFillColor = try map.value(CodingKeys.profileSidebarFillColor.rawValue)
        self.profileTextColor = try map.value(CodingKeys.profileTextColor.rawValue)
        self.profileUseBackgroundImage = try map.value(CodingKeys.profileUseBackgroundImage.rawValue)
        self.defaultProfile = try map.value(CodingKeys.defaultProfile.rawValue)
        self.defaultProfileImage = try map.value(CodingKeys.defaultProfileImage.rawValue)
        self.following = try map.value(CodingKeys.following.rawValue)
        self.followRequestSent = try map.value(CodingKeys.followRequestSent.rawValue)
        self.notifications = try map.value(CodingKeys.notifications.rawValue)
    }
}

extension UserEntities: ImmutableMappable {
    init(map: Map) throws {
        self.entitiesDescription = try map.value(CodingKeys.entitiesDescription.rawValue)
        self.url = try? map.value(CodingKeys.url.rawValue)
    }
}

extension UserMention: ImmutableMappable {
    init(map: Map) throws {
        self.screenName = try map.value(CodingKeys.screenName.rawValue)
        self.name = try map.value(CodingKeys.name.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.idStr = try map.value(CodingKeys.idStr.rawValue)
        self.indices = try map.value(CodingKeys.indices.rawValue)
    }
}
