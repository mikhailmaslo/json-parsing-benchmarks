// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let ghWelcome = try? newJSONDecoder().decode(ghWelcome.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation
import ObjectMapper

extension ghActor: ImmutableMappable {
    init(map: Map) throws {
        self.gravatarid = try map.value(CodingKeys.gravatarid.rawValue)
        self.login = try map.value(CodingKeys.login.rawValue)
        self.avatarurl = try map.value(CodingKeys.avatarurl.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
    }
}

extension ghAuthor: ImmutableMappable {
    init(map: Map) throws {
        self.email = try map.value(CodingKeys.email.rawValue)
        self.name = try map.value(CodingKeys.name.rawValue)
    }
}

extension ghComment: ImmutableMappable {
    init(map: Map) throws {
        self.user = try map.value(CodingKeys.user.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.issueurl = try map.value(CodingKeys.issueurl.rawValue)
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue, using: DateFormatterTransform())
        self.body = try map.value(CodingKeys.body.rawValue)
        self.updatedAt = try map.value(CodingKeys.updatedAt.rawValue, using: DateFormatterTransform())
        self.id = try map.value(CodingKeys.id.rawValue)
    }
}

extension ghCommit: ImmutableMappable {
    init(map: Map) throws {
        self.url = try map.value(CodingKeys.url.rawValue)
        self.message = try map.value(CodingKeys.message.rawValue)
        self.distinct = try map.value(CodingKeys.distinct.rawValue)
        self.sha = try map.value(CodingKeys.sha.rawValue)
        self.author = try map.value(CodingKeys.author.rawValue)
    }
}

extension ghForkee: ImmutableMappable {
    init(map: Map) throws {
        self.forkeeDescription = try map.value(CodingKeys.forkeeDescription.rawValue)
        self.fork = try map.value(CodingKeys.fork.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.language = try map.value(CodingKeys.language.rawValue)
        self.stargazersurl = try map.value(CodingKeys.stargazersurl.rawValue)
        self.cloneurl = try map.value(CodingKeys.cloneurl.rawValue)
        self.tagsurl = try map.value(CodingKeys.tagsurl.rawValue)
        self.fullName = try map.value(CodingKeys.fullName.rawValue)
        self.mergesurl = try map.value(CodingKeys.mergesurl.rawValue)
        self.forks = try map.value(CodingKeys.forks.rawValue)
        self.forkeePrivate = try map.value(CodingKeys.forkeePrivate.rawValue)
        self.gitRefsurl = try map.value(CodingKeys.gitRefsurl.rawValue)
        self.archiveurl = try map.value(CodingKeys.archiveurl.rawValue)
        self.collaboratorsurl = try map.value(CodingKeys.collaboratorsurl.rawValue)
        self.owner = try map.value(CodingKeys.owner.rawValue)
        self.languagesurl = try map.value(CodingKeys.languagesurl.rawValue)
        self.treesurl = try map.value(CodingKeys.treesurl.rawValue)
        self.labelsurl = try map.value(CodingKeys.labelsurl.rawValue)
        self.htmlurl = try map.value(CodingKeys.htmlurl.rawValue)
        self.pushedAt = try map.value(CodingKeys.pushedAt.rawValue, using: DateFormatterTransform())
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue, using: DateFormatterTransform())
        self.hasIssues = try map.value(CodingKeys.hasIssues.rawValue)
        self.forksurl = try map.value(CodingKeys.forksurl.rawValue)
        self.branchesurl = try map.value(CodingKeys.branchesurl.rawValue)
        self.commitsurl = try map.value(CodingKeys.commitsurl.rawValue)
        self.notificationsurl = try map.value(CodingKeys.notificationsurl.rawValue)
        self.openIssues = try map.value(CodingKeys.openIssues.rawValue)
        self.contentsurl = try map.value(CodingKeys.contentsurl.rawValue)
        self.blobsurl = try map.value(CodingKeys.blobsurl.rawValue)
        self.issuesurl = try map.value(CodingKeys.issuesurl.rawValue)
        self.compareurl = try map.value(CodingKeys.compareurl.rawValue)
        self.issueEventsurl = try map.value(CodingKeys.issueEventsurl.rawValue)
        self.name = try map.value(CodingKeys.name.rawValue)
        self.updatedAt = try map.value(CodingKeys.updatedAt.rawValue, using: DateFormatterTransform())
        self.statusesurl = try map.value(CodingKeys.statusesurl.rawValue)
        self.forksCount = try map.value(CodingKeys.forksCount.rawValue)
        self.assigneesurl = try map.value(CodingKeys.assigneesurl.rawValue)
        self.sshurl = try map.value(CodingKeys.sshurl.rawValue)
        self.forkeePublic = try map.value(CodingKeys.forkeePublic.rawValue)
        self.hasWiki = try map.value(CodingKeys.hasWiki.rawValue)
        self.subscribersurl = try map.value(CodingKeys.subscribersurl.rawValue)
        self.watchersCount = try map.value(CodingKeys.watchersCount.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.hasDownloads = try map.value(CodingKeys.hasDownloads.rawValue)
        self.gitCommitsurl = try map.value(CodingKeys.gitCommitsurl.rawValue)
        self.downloadsurl = try map.value(CodingKeys.downloadsurl.rawValue)
        self.pullsurl = try map.value(CodingKeys.pullsurl.rawValue)
        self.homepage = try? map.value(CodingKeys.homepage.rawValue)
        self.issueCommenturl = try map.value(CodingKeys.issueCommenturl.rawValue)
        self.hooksurl = try map.value(CodingKeys.hooksurl.rawValue)
        self.subscriptionurl = try map.value(CodingKeys.subscriptionurl.rawValue)
        self.milestonesurl = try map.value(CodingKeys.milestonesurl.rawValue)
        self.svnurl = try map.value(CodingKeys.svnurl.rawValue)
        self.eventsurl = try map.value(CodingKeys.eventsurl.rawValue)
        self.gitTagsurl = try map.value(CodingKeys.gitTagsurl.rawValue)
        self.teamsurl = try map.value(CodingKeys.teamsurl.rawValue)
        self.commentsurl = try map.value(CodingKeys.commentsurl.rawValue)
        self.openIssuesCount = try map.value(CodingKeys.openIssuesCount.rawValue)
        self.keysurl = try map.value(CodingKeys.keysurl.rawValue)
        self.giturl = try map.value(CodingKeys.giturl.rawValue)
        self.contributorsurl = try map.value(CodingKeys.contributorsurl.rawValue)
        self.size = try map.value(CodingKeys.size.rawValue)
        self.watchers = try map.value(CodingKeys.watchers.rawValue)
    }
}

extension ghIssue: ImmutableMappable {
    init(map: Map) throws {
        self.user = try map.value(CodingKeys.user.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.labels = try map.value(CodingKeys.labels.rawValue)
        self.htmlurl = try map.value(CodingKeys.htmlurl.rawValue)
        self.labelsurl = try map.value(CodingKeys.labelsurl.rawValue)
        self.pullRequest = try map.value(CodingKeys.pullRequest.rawValue)
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue, using: DateFormatterTransform())
        self.closedAt = try? map.value(CodingKeys.closedAt.rawValue, using: DateFormatterTransform())
        self.title = try map.value(CodingKeys.title.rawValue)
        self.body = try map.value(CodingKeys.body.rawValue)
        self.updatedAt = try map.value(CodingKeys.updatedAt.rawValue, using: DateFormatterTransform())
        self.number = try map.value(CodingKeys.number.rawValue)
        self.state = try map.value(CodingKeys.state.rawValue)
        self.assignee = try? map.value(CodingKeys.assignee.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.eventsurl = try map.value(CodingKeys.eventsurl.rawValue)
        self.commentsurl = try map.value(CodingKeys.commentsurl.rawValue)
        self.comments = try map.value(CodingKeys.comments.rawValue)
    }
}

extension ghPage: ImmutableMappable {
    init(map: Map) throws {
        self.pageName = try map.value(CodingKeys.pageName.rawValue)
        self.htmlurl = try map.value(CodingKeys.htmlurl.rawValue)
        self.title = try map.value(CodingKeys.title.rawValue)
        self.sha = try map.value(CodingKeys.sha.rawValue)
        self.action = try map.value(CodingKeys.action.rawValue)
    }
}

extension ghPayload: ImmutableMappable {
    init(map: Map) throws {
        self.commits = try? map.value(CodingKeys.commits.rawValue)
        self.distinctSize = try? map.value(CodingKeys.distinctSize.rawValue)
        self.ref = try? map.value(CodingKeys.ref.rawValue)
        self.pushid = try? map.value(CodingKeys.pushid.rawValue)
        self.head = try? map.value(CodingKeys.head.rawValue)
        self.before = try? map.value(CodingKeys.before.rawValue)
        self.size = try? map.value(CodingKeys.size.rawValue)
        self.payloadDescription = try? map.value(CodingKeys.payloadDescription.rawValue)
        self.masterBranch = try? map.value(CodingKeys.masterBranch.rawValue)
        self.refType = try? map.value(CodingKeys.refType.rawValue)
        self.forkee = try? map.value(CodingKeys.forkee.rawValue)
        self.action = try? map.value(CodingKeys.action.rawValue)
        self.issue = try? map.value(CodingKeys.issue.rawValue)
        self.comment = try? map.value(CodingKeys.comment.rawValue)
        self.pages = try? map.value(CodingKeys.pages.rawValue)
    }
}

extension ghPullRequest: ImmutableMappable {
    init(map: Map) throws {
    }
}

extension ghRepo: ImmutableMappable {
    init(map: Map) throws {
        self.url = try map.value(CodingKeys.url.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.name = try map.value(CodingKeys.name.rawValue)
    }
}

extension ghUser: ImmutableMappable {
    init(map: Map) throws {
        self.url = try map.value(CodingKeys.url.rawValue)
        self.gistsurl = try map.value(CodingKeys.gistsurl.rawValue)
        self.gravatarid = try map.value(CodingKeys.gravatarid.rawValue)
        self.type = try map.value(CodingKeys.type.rawValue)
        self.avatarurl = try map.value(CodingKeys.avatarurl.rawValue)
        self.subscriptionsurl = try map.value(CodingKeys.subscriptionsurl.rawValue)
        self.organizationsurl = try map.value(CodingKeys.organizationsurl.rawValue)
        self.receivedEventsurl = try map.value(CodingKeys.receivedEventsurl.rawValue)
        self.reposurl = try map.value(CodingKeys.reposurl.rawValue)
        self.login = try map.value(CodingKeys.login.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.starredurl = try map.value(CodingKeys.starredurl.rawValue)
        self.eventsurl = try map.value(CodingKeys.eventsurl.rawValue)
        self.followersurl = try map.value(CodingKeys.followersurl.rawValue)
        self.followingurl = try map.value(CodingKeys.followingurl.rawValue)
    }
}

extension ghWelcomeElement: ImmutableMappable {
    init(map: Map) throws {
        self.type = try map.value(CodingKeys.type.rawValue)
        self.createdAt = try map.value(CodingKeys.createdAt.rawValue, using: DateFormatterTransform())
        self.actor = try map.value(CodingKeys.actor.rawValue)
        self.repo = try map.value(CodingKeys.repo.rawValue)
        self.welcomePublic = try map.value(CodingKeys.welcomePublic.rawValue)
        self.payload = try map.value(CodingKeys.payload.rawValue)
        self.id = try map.value(CodingKeys.id.rawValue)
        self.org = try? map.value(CodingKeys.org.rawValue)
    }
}
