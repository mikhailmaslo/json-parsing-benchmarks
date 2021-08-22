// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import HandyJSON

extension Description: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.urls <-- CodingKeys.urls.rawValue
    }
}

extension Hashtag: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.text <-- CodingKeys.text.rawValue
        mapper <<<
            self.indices <-- CodingKeys.indices.rawValue
    }
}

extension Large: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.w <-- CodingKeys.w.rawValue
        mapper <<<
            self.h <-- CodingKeys.h.rawValue
        mapper <<<
            self.resize <-- CodingKeys.resize.rawValue
    }
}

extension Media: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.idStr <-- CodingKeys.idStr.rawValue
        mapper <<<
            self.indices <-- CodingKeys.indices.rawValue
        mapper <<<
            self.mediaurl <-- CodingKeys.mediaurl.rawValue
        mapper <<<
            self.mediaurlhttps <-- CodingKeys.mediaurlhttps.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.displayurl <-- CodingKeys.displayurl.rawValue
        mapper <<<
            self.expandedurl <-- CodingKeys.expandedurl.rawValue
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.sizes <-- CodingKeys.sizes.rawValue
        mapper <<<
            self.sourceStatusid <-- CodingKeys.sourceStatusid.rawValue
        mapper <<<
            self.sourceStatusidStr <-- CodingKeys.sourceStatusidStr.rawValue
    }
}

extension Metadata: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.resultType <-- CodingKeys.resultType.rawValue
        mapper <<<
            self.isoLanguageCode <-- CodingKeys.isoLanguageCode.rawValue
    }
}

extension SearchMetadata: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.completedIn <-- CodingKeys.completedIn.rawValue
        mapper <<<
            self.maxid <-- CodingKeys.maxid.rawValue
        mapper <<<
            self.maxidStr <-- CodingKeys.maxidStr.rawValue
        mapper <<<
            self.nextResults <-- CodingKeys.nextResults.rawValue
        mapper <<<
            self.query <-- CodingKeys.query.rawValue
        mapper <<<
            self.refreshurl <-- CodingKeys.refreshurl.rawValue
        mapper <<<
            self.count <-- CodingKeys.count.rawValue
        mapper <<<
            self.sinceid <-- CodingKeys.sinceid.rawValue
        mapper <<<
            self.sinceidStr <-- CodingKeys.sinceidStr.rawValue
    }
}

extension Sizes: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.medium <-- CodingKeys.medium.rawValue
        mapper <<<
            self.small <-- CodingKeys.small.rawValue
        mapper <<<
            self.thumb <-- CodingKeys.thumb.rawValue
        mapper <<<
            self.large <-- CodingKeys.large.rawValue
    }
}

extension Status: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.metadata <-- CodingKeys.metadata.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.idStr <-- CodingKeys.idStr.rawValue
        mapper <<<
            self.text <-- CodingKeys.text.rawValue
        mapper <<<
            self.source <-- CodingKeys.source.rawValue
        mapper <<<
            self.truncated <-- CodingKeys.truncated.rawValue
        mapper <<<
            self.inReplyToStatusid <-- CodingKeys.inReplyToStatusid.rawValue
        mapper <<<
            self.inReplyToStatusidStr <-- CodingKeys.inReplyToStatusidStr.rawValue
        mapper <<<
            self.inReplyToUserid <-- CodingKeys.inReplyToUserid.rawValue
        mapper <<<
            self.inReplyToUseridStr <-- CodingKeys.inReplyToUseridStr.rawValue
        mapper <<<
            self.inReplyToScreenName <-- CodingKeys.inReplyToScreenName.rawValue
        mapper <<<
            self.user <-- CodingKeys.user.rawValue
        mapper <<<
            self.retweetCount <-- CodingKeys.retweetCount.rawValue
        mapper <<<
            self.favoriteCount <-- CodingKeys.favoriteCount.rawValue
        mapper <<<
            self.entities <-- CodingKeys.entities.rawValue
        mapper <<<
            self.favorited <-- CodingKeys.favorited.rawValue
        mapper <<<
            self.retweeted <-- CodingKeys.retweeted.rawValue
        mapper <<<
            self.lang <-- CodingKeys.lang.rawValue
        mapper <<<
            self.possiblySensitive <-- CodingKeys.possiblySensitive.rawValue
    }
}

extension StatusEntities: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.hashtags <-- CodingKeys.hashtags.rawValue
        mapper <<<
            self.urls <-- CodingKeys.urls.rawValue
        mapper <<<
            self.userMentions <-- CodingKeys.userMentions.rawValue
        mapper <<<
            self.media <-- CodingKeys.media.rawValue
    }
}

extension Twitter: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.statuses <-- CodingKeys.statuses.rawValue
        mapper <<<
            self.searchMetadata <-- CodingKeys.searchMetadata.rawValue
    }
}

extension URLElement: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.expandedurl <-- CodingKeys.expandedurl.rawValue
        mapper <<<
            self.displayurl <-- CodingKeys.displayurl.rawValue
        mapper <<<
            self.indices <-- CodingKeys.indices.rawValue
    }
}

extension User: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.idStr <-- CodingKeys.idStr.rawValue
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
        mapper <<<
            self.screenName <-- CodingKeys.screenName.rawValue
        mapper <<<
            self.location <-- CodingKeys.location.rawValue
        mapper <<<
            self.userDescription <-- CodingKeys.userDescription.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.entities <-- CodingKeys.entities.rawValue
        mapper <<<
            self.protected <-- CodingKeys.protected.rawValue
        mapper <<<
            self.followersCount <-- CodingKeys.followersCount.rawValue
        mapper <<<
            self.friendsCount <-- CodingKeys.friendsCount.rawValue
        mapper <<<
            self.listedCount <-- CodingKeys.listedCount.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.favouritesCount <-- CodingKeys.favouritesCount.rawValue
        mapper <<<
            self.utcOffset <-- CodingKeys.utcOffset.rawValue
        mapper <<<
            self.timeZone <-- CodingKeys.timeZone.rawValue
        mapper <<<
            self.geoEnabled <-- CodingKeys.geoEnabled.rawValue
        mapper <<<
            self.verified <-- CodingKeys.verified.rawValue
        mapper <<<
            self.statusesCount <-- CodingKeys.statusesCount.rawValue
        mapper <<<
            self.lang <-- CodingKeys.lang.rawValue
        mapper <<<
            self.contributorsEnabled <-- CodingKeys.contributorsEnabled.rawValue
        mapper <<<
            self.isTranslator <-- CodingKeys.isTranslator.rawValue
        mapper <<<
            self.isTranslationEnabled <-- CodingKeys.isTranslationEnabled.rawValue
        mapper <<<
            self.profileBackgroundColor <-- CodingKeys.profileBackgroundColor.rawValue
        mapper <<<
            self.profileBackgroundImageurl <-- CodingKeys.profileBackgroundImageurl.rawValue
        mapper <<<
            self.profileBackgroundImageurlhttps <-- CodingKeys.profileBackgroundImageurlhttps.rawValue
        mapper <<<
            self.profileBackgroundTile <-- CodingKeys.profileBackgroundTile.rawValue
        mapper <<<
            self.profileImageurl <-- CodingKeys.profileImageurl.rawValue
        mapper <<<
            self.profileImageurlhttps <-- CodingKeys.profileImageurlhttps.rawValue
        mapper <<<
            self.profileBannerurl <-- CodingKeys.profileBannerurl.rawValue
        mapper <<<
            self.profileLinkColor <-- CodingKeys.profileLinkColor.rawValue
        mapper <<<
            self.profileSidebarBorderColor <-- CodingKeys.profileSidebarBorderColor.rawValue
        mapper <<<
            self.profileSidebarFillColor <-- CodingKeys.profileSidebarFillColor.rawValue
        mapper <<<
            self.profileTextColor <-- CodingKeys.profileTextColor.rawValue
        mapper <<<
            self.profileUseBackgroundImage <-- CodingKeys.profileUseBackgroundImage.rawValue
        mapper <<<
            self.defaultProfile <-- CodingKeys.defaultProfile.rawValue
        mapper <<<
            self.defaultProfileImage <-- CodingKeys.defaultProfileImage.rawValue
        mapper <<<
            self.following <-- CodingKeys.following.rawValue
        mapper <<<
            self.followRequestSent <-- CodingKeys.followRequestSent.rawValue
        mapper <<<
            self.notifications <-- CodingKeys.notifications.rawValue
    }
}

extension UserEntities: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.entitiesDescription <-- CodingKeys.entitiesDescription.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
    }
}

extension UserMention: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.screenName <-- CodingKeys.screenName.rawValue
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.idStr <-- CodingKeys.idStr.rawValue
        mapper <<<
            self.indices <-- CodingKeys.indices.rawValue
    }
}

