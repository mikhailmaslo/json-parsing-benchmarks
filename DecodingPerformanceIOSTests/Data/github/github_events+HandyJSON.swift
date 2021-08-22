// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import HandyJSON

extension ghActor: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.gravatarid <-- CodingKeys.gravatarid.rawValue
        mapper <<<
            self.login <-- CodingKeys.login.rawValue
        mapper <<<
            self.avatarurl <-- CodingKeys.avatarurl.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
    }
}

extension ghAuthor: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.email <-- CodingKeys.email.rawValue
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
    }
}

extension ghComment: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.user <-- CodingKeys.user.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.issueurl <-- CodingKeys.issueurl.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.body <-- CodingKeys.body.rawValue
        mapper <<<
            self.updatedAt <-- CodingKeys.updatedAt.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
    }
}

extension ghCommit: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.message <-- CodingKeys.message.rawValue
        mapper <<<
            self.distinct <-- CodingKeys.distinct.rawValue
        mapper <<<
            self.sha <-- CodingKeys.sha.rawValue
        mapper <<<
            self.author <-- CodingKeys.author.rawValue
    }
}

extension ghForkee: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.forkeeDescription <-- CodingKeys.forkeeDescription.rawValue
        mapper <<<
            self.fork <-- CodingKeys.fork.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.language <-- CodingKeys.language.rawValue
        mapper <<<
            self.stargazersurl <-- CodingKeys.stargazersurl.rawValue
        mapper <<<
            self.cloneurl <-- CodingKeys.cloneurl.rawValue
        mapper <<<
            self.tagsurl <-- CodingKeys.tagsurl.rawValue
        mapper <<<
            self.fullName <-- CodingKeys.fullName.rawValue
        mapper <<<
            self.mergesurl <-- CodingKeys.mergesurl.rawValue
        mapper <<<
            self.forks <-- CodingKeys.forks.rawValue
        mapper <<<
            self.forkeePrivate <-- CodingKeys.forkeePrivate.rawValue
        mapper <<<
            self.gitRefsurl <-- CodingKeys.gitRefsurl.rawValue
        mapper <<<
            self.archiveurl <-- CodingKeys.archiveurl.rawValue
        mapper <<<
            self.collaboratorsurl <-- CodingKeys.collaboratorsurl.rawValue
        mapper <<<
            self.owner <-- CodingKeys.owner.rawValue
        mapper <<<
            self.languagesurl <-- CodingKeys.languagesurl.rawValue
        mapper <<<
            self.treesurl <-- CodingKeys.treesurl.rawValue
        mapper <<<
            self.labelsurl <-- CodingKeys.labelsurl.rawValue
        mapper <<<
            self.htmlurl <-- CodingKeys.htmlurl.rawValue
        mapper <<<
            self.pushedAt <-- CodingKeys.pushedAt.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.hasIssues <-- CodingKeys.hasIssues.rawValue
        mapper <<<
            self.forksurl <-- CodingKeys.forksurl.rawValue
        mapper <<<
            self.branchesurl <-- CodingKeys.branchesurl.rawValue
        mapper <<<
            self.commitsurl <-- CodingKeys.commitsurl.rawValue
        mapper <<<
            self.notificationsurl <-- CodingKeys.notificationsurl.rawValue
        mapper <<<
            self.openIssues <-- CodingKeys.openIssues.rawValue
        mapper <<<
            self.contentsurl <-- CodingKeys.contentsurl.rawValue
        mapper <<<
            self.blobsurl <-- CodingKeys.blobsurl.rawValue
        mapper <<<
            self.issuesurl <-- CodingKeys.issuesurl.rawValue
        mapper <<<
            self.compareurl <-- CodingKeys.compareurl.rawValue
        mapper <<<
            self.issueEventsurl <-- CodingKeys.issueEventsurl.rawValue
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
        mapper <<<
            self.updatedAt <-- CodingKeys.updatedAt.rawValue
        mapper <<<
            self.statusesurl <-- CodingKeys.statusesurl.rawValue
        mapper <<<
            self.forksCount <-- CodingKeys.forksCount.rawValue
        mapper <<<
            self.assigneesurl <-- CodingKeys.assigneesurl.rawValue
        mapper <<<
            self.sshurl <-- CodingKeys.sshurl.rawValue
        mapper <<<
            self.forkeePublic <-- CodingKeys.forkeePublic.rawValue
        mapper <<<
            self.hasWiki <-- CodingKeys.hasWiki.rawValue
        mapper <<<
            self.subscribersurl <-- CodingKeys.subscribersurl.rawValue
        mapper <<<
            self.watchersCount <-- CodingKeys.watchersCount.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.hasDownloads <-- CodingKeys.hasDownloads.rawValue
        mapper <<<
            self.gitCommitsurl <-- CodingKeys.gitCommitsurl.rawValue
        mapper <<<
            self.downloadsurl <-- CodingKeys.downloadsurl.rawValue
        mapper <<<
            self.pullsurl <-- CodingKeys.pullsurl.rawValue
        mapper <<<
            self.homepage <-- CodingKeys.homepage.rawValue
        mapper <<<
            self.issueCommenturl <-- CodingKeys.issueCommenturl.rawValue
        mapper <<<
            self.hooksurl <-- CodingKeys.hooksurl.rawValue
        mapper <<<
            self.subscriptionurl <-- CodingKeys.subscriptionurl.rawValue
        mapper <<<
            self.milestonesurl <-- CodingKeys.milestonesurl.rawValue
        mapper <<<
            self.svnurl <-- CodingKeys.svnurl.rawValue
        mapper <<<
            self.eventsurl <-- CodingKeys.eventsurl.rawValue
        mapper <<<
            self.gitTagsurl <-- CodingKeys.gitTagsurl.rawValue
        mapper <<<
            self.teamsurl <-- CodingKeys.teamsurl.rawValue
        mapper <<<
            self.commentsurl <-- CodingKeys.commentsurl.rawValue
        mapper <<<
            self.openIssuesCount <-- CodingKeys.openIssuesCount.rawValue
        mapper <<<
            self.keysurl <-- CodingKeys.keysurl.rawValue
        mapper <<<
            self.giturl <-- CodingKeys.giturl.rawValue
        mapper <<<
            self.contributorsurl <-- CodingKeys.contributorsurl.rawValue
        mapper <<<
            self.size <-- CodingKeys.size.rawValue
        mapper <<<
            self.watchers <-- CodingKeys.watchers.rawValue
    }
}

extension ghIssue: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.user <-- CodingKeys.user.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.labels <-- CodingKeys.labels.rawValue
        mapper <<<
            self.htmlurl <-- CodingKeys.htmlurl.rawValue
        mapper <<<
            self.labelsurl <-- CodingKeys.labelsurl.rawValue
        mapper <<<
            self.pullRequest <-- CodingKeys.pullRequest.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.closedAt <-- CodingKeys.closedAt.rawValue
        mapper <<<
            self.title <-- CodingKeys.title.rawValue
        mapper <<<
            self.body <-- CodingKeys.body.rawValue
        mapper <<<
            self.updatedAt <-- CodingKeys.updatedAt.rawValue
        mapper <<<
            self.number <-- CodingKeys.number.rawValue
        mapper <<<
            self.state <-- CodingKeys.state.rawValue
        mapper <<<
            self.assignee <-- CodingKeys.assignee.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.eventsurl <-- CodingKeys.eventsurl.rawValue
        mapper <<<
            self.commentsurl <-- CodingKeys.commentsurl.rawValue
        mapper <<<
            self.comments <-- CodingKeys.comments.rawValue
    }
}

extension ghPage: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.pageName <-- CodingKeys.pageName.rawValue
        mapper <<<
            self.htmlurl <-- CodingKeys.htmlurl.rawValue
        mapper <<<
            self.title <-- CodingKeys.title.rawValue
        mapper <<<
            self.sha <-- CodingKeys.sha.rawValue
        mapper <<<
            self.action <-- CodingKeys.action.rawValue
    }
}

extension ghPayload: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.commits <-- CodingKeys.commits.rawValue
        mapper <<<
            self.distinctSize <-- CodingKeys.distinctSize.rawValue
        mapper <<<
            self.ref <-- CodingKeys.ref.rawValue
        mapper <<<
            self.pushid <-- CodingKeys.pushid.rawValue
        mapper <<<
            self.head <-- CodingKeys.head.rawValue
        mapper <<<
            self.before <-- CodingKeys.before.rawValue
        mapper <<<
            self.size <-- CodingKeys.size.rawValue
        mapper <<<
            self.payloadDescription <-- CodingKeys.payloadDescription.rawValue
        mapper <<<
            self.masterBranch <-- CodingKeys.masterBranch.rawValue
        mapper <<<
            self.refType <-- CodingKeys.refType.rawValue
        mapper <<<
            self.forkee <-- CodingKeys.forkee.rawValue
        mapper <<<
            self.action <-- CodingKeys.action.rawValue
        mapper <<<
            self.issue <-- CodingKeys.issue.rawValue
        mapper <<<
            self.comment <-- CodingKeys.comment.rawValue
        mapper <<<
            self.pages <-- CodingKeys.pages.rawValue
    }
}

extension ghPullRequest: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
    }
}

extension ghRepo: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
    }
}

extension ghUser: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.gistsurl <-- CodingKeys.gistsurl.rawValue
        mapper <<<
            self.gravatarid <-- CodingKeys.gravatarid.rawValue
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.avatarurl <-- CodingKeys.avatarurl.rawValue
        mapper <<<
            self.subscriptionsurl <-- CodingKeys.subscriptionsurl.rawValue
        mapper <<<
            self.organizationsurl <-- CodingKeys.organizationsurl.rawValue
        mapper <<<
            self.receivedEventsurl <-- CodingKeys.receivedEventsurl.rawValue
        mapper <<<
            self.reposurl <-- CodingKeys.reposurl.rawValue
        mapper <<<
            self.login <-- CodingKeys.login.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.starredurl <-- CodingKeys.starredurl.rawValue
        mapper <<<
            self.eventsurl <-- CodingKeys.eventsurl.rawValue
        mapper <<<
            self.followersurl <-- CodingKeys.followersurl.rawValue
        mapper <<<
            self.followingurl <-- CodingKeys.followingurl.rawValue
    }
}

extension ghWelcomeElement: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.type <-- CodingKeys.type.rawValue
        mapper <<<
            self.createdAt <-- CodingKeys.createdAt.rawValue
        mapper <<<
            self.actor <-- CodingKeys.actor.rawValue
        mapper <<<
            self.repo <-- CodingKeys.repo.rawValue
        mapper <<<
            self.welcomePublic <-- CodingKeys.welcomePublic.rawValue
        mapper <<<
            self.payload <-- CodingKeys.payload.rawValue
        mapper <<<
            self.id <-- CodingKeys.id.rawValue
        mapper <<<
            self.org <-- CodingKeys.org.rawValue
    }
}

