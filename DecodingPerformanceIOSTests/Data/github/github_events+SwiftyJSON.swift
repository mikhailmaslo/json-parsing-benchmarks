// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import SwiftyJSON

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    return dateFormatter
}()

extension JSON {
    var date: Date? {
        dateFormatter.date(from: stringValue)
    }
}

extension ghActor: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.gravatarid = swiftyJSON[CodingKeys.gravatarid.rawValue].string!
        self.login = swiftyJSON[CodingKeys.login.rawValue].string!
        self.avatarurl = swiftyJSON[CodingKeys.avatarurl.rawValue].string!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
    }
}

extension ghAuthor: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.email = swiftyJSON[CodingKeys.email.rawValue].string!
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
    }
}

extension ghComment: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.user = ghUser(swiftyJSON: swiftyJSON[CodingKeys.user.rawValue])!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.issueurl = swiftyJSON[CodingKeys.issueurl.rawValue].string!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].date!
        self.body = swiftyJSON[CodingKeys.body.rawValue].string!
        self.updatedAt = swiftyJSON[CodingKeys.updatedAt.rawValue].date!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
    }
}

extension ghCommit: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.message = swiftyJSON[CodingKeys.message.rawValue].string!
        self.distinct = swiftyJSON[CodingKeys.distinct.rawValue].bool!
        self.sha = swiftyJSON[CodingKeys.sha.rawValue].string!
        self.author = ghAuthor(swiftyJSON: swiftyJSON[CodingKeys.author.rawValue])!
    }
}

extension ghForkee: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.forkeeDescription = swiftyJSON[CodingKeys.forkeeDescription.rawValue].string!
        self.fork = swiftyJSON[CodingKeys.fork.rawValue].bool!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.language = swiftyJSON[CodingKeys.language.rawValue].string!
        self.stargazersurl = swiftyJSON[CodingKeys.stargazersurl.rawValue].string!
        self.cloneurl = swiftyJSON[CodingKeys.cloneurl.rawValue].string!
        self.tagsurl = swiftyJSON[CodingKeys.tagsurl.rawValue].string!
        self.fullName = swiftyJSON[CodingKeys.fullName.rawValue].string!
        self.mergesurl = swiftyJSON[CodingKeys.mergesurl.rawValue].string!
        self.forks = swiftyJSON[CodingKeys.forks.rawValue].int!
        self.forkeePrivate = swiftyJSON[CodingKeys.forkeePrivate.rawValue].bool!
        self.gitRefsurl = swiftyJSON[CodingKeys.gitRefsurl.rawValue].string!
        self.archiveurl = swiftyJSON[CodingKeys.archiveurl.rawValue].string!
        self.collaboratorsurl = swiftyJSON[CodingKeys.collaboratorsurl.rawValue].string!
        self.owner = ghUser(swiftyJSON: swiftyJSON[CodingKeys.owner.rawValue])!
        self.languagesurl = swiftyJSON[CodingKeys.languagesurl.rawValue].string!
        self.treesurl = swiftyJSON[CodingKeys.treesurl.rawValue].string!
        self.labelsurl = swiftyJSON[CodingKeys.labelsurl.rawValue].string!
        self.htmlurl = swiftyJSON[CodingKeys.htmlurl.rawValue].string!
        self.pushedAt = swiftyJSON[CodingKeys.pushedAt.rawValue].date!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].date!
        self.hasIssues = swiftyJSON[CodingKeys.hasIssues.rawValue].bool!
        self.forksurl = swiftyJSON[CodingKeys.forksurl.rawValue].string!
        self.branchesurl = swiftyJSON[CodingKeys.branchesurl.rawValue].string!
        self.commitsurl = swiftyJSON[CodingKeys.commitsurl.rawValue].string!
        self.notificationsurl = swiftyJSON[CodingKeys.notificationsurl.rawValue].string!
        self.openIssues = swiftyJSON[CodingKeys.openIssues.rawValue].int!
        self.contentsurl = swiftyJSON[CodingKeys.contentsurl.rawValue].string!
        self.blobsurl = swiftyJSON[CodingKeys.blobsurl.rawValue].string!
        self.issuesurl = swiftyJSON[CodingKeys.issuesurl.rawValue].string!
        self.compareurl = swiftyJSON[CodingKeys.compareurl.rawValue].string!
        self.issueEventsurl = swiftyJSON[CodingKeys.issueEventsurl.rawValue].string!
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
        self.updatedAt = swiftyJSON[CodingKeys.updatedAt.rawValue].date!
        self.statusesurl = swiftyJSON[CodingKeys.statusesurl.rawValue].string!
        self.forksCount = swiftyJSON[CodingKeys.forksCount.rawValue].int!
        self.assigneesurl = swiftyJSON[CodingKeys.assigneesurl.rawValue].string!
        self.sshurl = swiftyJSON[CodingKeys.sshurl.rawValue].string!
        self.forkeePublic = swiftyJSON[CodingKeys.forkeePublic.rawValue].bool!
        self.hasWiki = swiftyJSON[CodingKeys.hasWiki.rawValue].bool!
        self.subscribersurl = swiftyJSON[CodingKeys.subscribersurl.rawValue].string!
        self.watchersCount = swiftyJSON[CodingKeys.watchersCount.rawValue].int!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.hasDownloads = swiftyJSON[CodingKeys.hasDownloads.rawValue].bool!
        self.gitCommitsurl = swiftyJSON[CodingKeys.gitCommitsurl.rawValue].string!
        self.downloadsurl = swiftyJSON[CodingKeys.downloadsurl.rawValue].string!
        self.pullsurl = swiftyJSON[CodingKeys.pullsurl.rawValue].string!
        self.homepage = swiftyJSON[CodingKeys.homepage.rawValue].string
        self.issueCommenturl = swiftyJSON[CodingKeys.issueCommenturl.rawValue].string!
        self.hooksurl = swiftyJSON[CodingKeys.hooksurl.rawValue].string!
        self.subscriptionurl = swiftyJSON[CodingKeys.subscriptionurl.rawValue].string!
        self.milestonesurl = swiftyJSON[CodingKeys.milestonesurl.rawValue].string!
        self.svnurl = swiftyJSON[CodingKeys.svnurl.rawValue].string!
        self.eventsurl = swiftyJSON[CodingKeys.eventsurl.rawValue].string!
        self.gitTagsurl = swiftyJSON[CodingKeys.gitTagsurl.rawValue].string!
        self.teamsurl = swiftyJSON[CodingKeys.teamsurl.rawValue].string!
        self.commentsurl = swiftyJSON[CodingKeys.commentsurl.rawValue].string!
        self.openIssuesCount = swiftyJSON[CodingKeys.openIssuesCount.rawValue].int!
        self.keysurl = swiftyJSON[CodingKeys.keysurl.rawValue].string!
        self.giturl = swiftyJSON[CodingKeys.giturl.rawValue].string!
        self.contributorsurl = swiftyJSON[CodingKeys.contributorsurl.rawValue].string!
        self.size = swiftyJSON[CodingKeys.size.rawValue].int!
        self.watchers = swiftyJSON[CodingKeys.watchers.rawValue].int!
    }
}

extension ghIssue: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.user = ghUser(swiftyJSON: swiftyJSON[CodingKeys.user.rawValue])!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.labels = swiftyJSON[CodingKeys.labels.rawValue].arrayValue.compactMap { $0.int }
        self.htmlurl = swiftyJSON[CodingKeys.htmlurl.rawValue].string!
        self.labelsurl = swiftyJSON[CodingKeys.labelsurl.rawValue].string!
        self.pullRequest = ghPullRequest(swiftyJSON: swiftyJSON[CodingKeys.pullRequest.rawValue])!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].date!
        self.closedAt = swiftyJSON[CodingKeys.closedAt.rawValue].date
        self.title = swiftyJSON[CodingKeys.title.rawValue].string!
        self.body = swiftyJSON[CodingKeys.body.rawValue].string!
        self.updatedAt = swiftyJSON[CodingKeys.updatedAt.rawValue].date!
        self.number = swiftyJSON[CodingKeys.number.rawValue].int!
        self.state = swiftyJSON[CodingKeys.state.rawValue].string!
        self.assignee = swiftyJSON[CodingKeys.assignee.rawValue].isEmpty ? nil : ghUser(swiftyJSON: swiftyJSON[CodingKeys.assignee.rawValue])!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.eventsurl = swiftyJSON[CodingKeys.eventsurl.rawValue].string!
        self.commentsurl = swiftyJSON[CodingKeys.commentsurl.rawValue].string!
        self.comments = swiftyJSON[CodingKeys.comments.rawValue].int!
    }
}

extension ghPage: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.pageName = swiftyJSON[CodingKeys.pageName.rawValue].string!
        self.htmlurl = swiftyJSON[CodingKeys.htmlurl.rawValue].string!
        self.title = swiftyJSON[CodingKeys.title.rawValue].string!
        self.sha = swiftyJSON[CodingKeys.sha.rawValue].string!
        self.action = swiftyJSON[CodingKeys.action.rawValue].string!
    }
}

extension ghPayload: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.commits = swiftyJSON[CodingKeys.commits.rawValue].arrayValue.compactMap(ghCommit.init(swiftyJSON:))
        self.distinctSize = swiftyJSON[CodingKeys.distinctSize.rawValue].int
        self.ref = swiftyJSON[CodingKeys.ref.rawValue].string
        self.pushid = swiftyJSON[CodingKeys.pushid.rawValue].int
        self.head = swiftyJSON[CodingKeys.head.rawValue].string
        self.before = swiftyJSON[CodingKeys.before.rawValue].string
        self.size = swiftyJSON[CodingKeys.size.rawValue].int
        self.payloadDescription = swiftyJSON[CodingKeys.payloadDescription.rawValue].string
        self.masterBranch = swiftyJSON[CodingKeys.masterBranch.rawValue].string
        self.refType = swiftyJSON[CodingKeys.refType.rawValue].string
        self.forkee = swiftyJSON[CodingKeys.forkee.rawValue].isEmpty ? nil : ghForkee(swiftyJSON: swiftyJSON[CodingKeys.forkee.rawValue])!
        self.action = swiftyJSON[CodingKeys.action.rawValue].string
        self.issue = swiftyJSON[CodingKeys.issue.rawValue].isEmpty ? nil : ghIssue(swiftyJSON: swiftyJSON[CodingKeys.issue.rawValue])!
        self.comment = swiftyJSON[CodingKeys.comment.rawValue].isEmpty ? nil : ghComment(swiftyJSON: swiftyJSON[CodingKeys.comment.rawValue])!
        self.pages = swiftyJSON[CodingKeys.pages.rawValue].arrayValue.compactMap(ghPage.init(swiftyJSON:))
    }
}

extension ghPullRequest: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
    }
}

extension ghRepo: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
    }
}

extension ghUser: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.gistsurl = swiftyJSON[CodingKeys.gistsurl.rawValue].string!
        self.gravatarid = swiftyJSON[CodingKeys.gravatarid.rawValue].string!
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.avatarurl = swiftyJSON[CodingKeys.avatarurl.rawValue].string!
        self.subscriptionsurl = swiftyJSON[CodingKeys.subscriptionsurl.rawValue].string!
        self.organizationsurl = swiftyJSON[CodingKeys.organizationsurl.rawValue].string!
        self.receivedEventsurl = swiftyJSON[CodingKeys.receivedEventsurl.rawValue].string!
        self.reposurl = swiftyJSON[CodingKeys.reposurl.rawValue].string!
        self.login = swiftyJSON[CodingKeys.login.rawValue].string!
        self.id = swiftyJSON[CodingKeys.id.rawValue].int!
        self.starredurl = swiftyJSON[CodingKeys.starredurl.rawValue].string!
        self.eventsurl = swiftyJSON[CodingKeys.eventsurl.rawValue].string!
        self.followersurl = swiftyJSON[CodingKeys.followersurl.rawValue].string!
        self.followingurl = swiftyJSON[CodingKeys.followingurl.rawValue].string!
    }
}

extension ghWelcomeElement: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.type = swiftyJSON[CodingKeys.type.rawValue].string!
        self.createdAt = swiftyJSON[CodingKeys.createdAt.rawValue].date!
        self.actor = ghActor(swiftyJSON: swiftyJSON[CodingKeys.actor.rawValue])!
        self.repo = ghRepo(swiftyJSON: swiftyJSON[CodingKeys.repo.rawValue])!
        self.welcomePublic = swiftyJSON[CodingKeys.welcomePublic.rawValue].bool!
        self.payload = ghPayload(swiftyJSON: swiftyJSON[CodingKeys.payload.rawValue])!
        self.id = swiftyJSON[CodingKeys.id.rawValue].string!
        self.org = swiftyJSON[CodingKeys.org.rawValue].isEmpty ? nil : ghActor(swiftyJSON: swiftyJSON[CodingKeys.org.rawValue])!
    }
}

