import Foundation

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    return dateFormatter
}()

extension ghActor: JSONSerializable {
    init?(json: SwiftJSON) {
        self.gravatarid = json[CodingKeys.gravatarid.rawValue] as! String
        self.login = json[CodingKeys.login.rawValue] as! String
        self.avatarurl = json[CodingKeys.avatarurl.rawValue] as! String
        self.url = json[CodingKeys.url.rawValue] as! String
        self.id = json[CodingKeys.id.rawValue] as! Int
    }
}

extension ghAuthor: JSONSerializable {
    init?(json: SwiftJSON) {
        self.email = json[CodingKeys.email.rawValue] as! String
        self.name = json[CodingKeys.name.rawValue] as! String
    }
}

extension ghComment: JSONSerializable {
    init?(json: SwiftJSON) {
        self.user = (json[CodingKeys.user.rawValue] as? SwiftJSON).map(ghUser.init(json:))!!
        self.url = json[CodingKeys.url.rawValue] as! String
        self.issueurl = json[CodingKeys.issueurl.rawValue] as! String
        self.createdAt = dateFormatter.date(from: json[CodingKeys.createdAt.rawValue] as! String)!
        self.body = json[CodingKeys.body.rawValue] as! String
        self.updatedAt = dateFormatter.date(from: json[CodingKeys.updatedAt.rawValue] as! String)!
        self.id = json[CodingKeys.id.rawValue] as! Int
    }
}

extension ghCommit: JSONSerializable {
    init?(json: SwiftJSON) {
        self.url = json[CodingKeys.url.rawValue] as! String
        self.message = json[CodingKeys.message.rawValue] as! String
        self.distinct = json[CodingKeys.distinct.rawValue] as! Bool
        self.sha = json[CodingKeys.sha.rawValue] as! String
        self.author = (json[CodingKeys.author.rawValue] as? SwiftJSON).map(ghAuthor.init(json:))!!
    }
}

extension ghForkee: JSONSerializable {
    init?(json: SwiftJSON) {
        self.forkeeDescription = json[CodingKeys.forkeeDescription.rawValue] as! String
        self.fork = json[CodingKeys.fork.rawValue] as! Bool
        self.url = json[CodingKeys.url.rawValue] as! String
        self.language = json[CodingKeys.language.rawValue] as! String
        self.stargazersurl = json[CodingKeys.stargazersurl.rawValue] as! String
        self.cloneurl = json[CodingKeys.cloneurl.rawValue] as! String
        self.tagsurl = json[CodingKeys.tagsurl.rawValue] as! String
        self.fullName = json[CodingKeys.fullName.rawValue] as! String
        self.mergesurl = json[CodingKeys.mergesurl.rawValue] as! String
        self.forks = json[CodingKeys.forks.rawValue] as! Int
        self.forkeePrivate = json[CodingKeys.forkeePrivate.rawValue] as! Bool
        self.gitRefsurl = json[CodingKeys.gitRefsurl.rawValue] as! String
        self.archiveurl = json[CodingKeys.archiveurl.rawValue] as! String
        self.collaboratorsurl = json[CodingKeys.collaboratorsurl.rawValue] as! String
        self.owner = (json[CodingKeys.owner.rawValue] as? SwiftJSON).map(ghUser.init(json:))!!
        self.languagesurl = json[CodingKeys.languagesurl.rawValue] as! String
        self.treesurl = json[CodingKeys.treesurl.rawValue] as! String
        self.labelsurl = json[CodingKeys.labelsurl.rawValue] as! String
        self.htmlurl = json[CodingKeys.htmlurl.rawValue] as! String
        self.pushedAt = dateFormatter.date(from: json[CodingKeys.pushedAt.rawValue] as! String)!
        self.createdAt = dateFormatter.date(from: json[CodingKeys.createdAt.rawValue] as! String)!
        self.hasIssues = json[CodingKeys.hasIssues.rawValue] as! Bool
        self.forksurl = json[CodingKeys.forksurl.rawValue] as! String
        self.branchesurl = json[CodingKeys.branchesurl.rawValue] as! String
        self.commitsurl = json[CodingKeys.commitsurl.rawValue] as! String
        self.notificationsurl = json[CodingKeys.notificationsurl.rawValue] as! String
        self.openIssues = json[CodingKeys.openIssues.rawValue] as! Int
        self.contentsurl = json[CodingKeys.contentsurl.rawValue] as! String
        self.blobsurl = json[CodingKeys.blobsurl.rawValue] as! String
        self.issuesurl = json[CodingKeys.issuesurl.rawValue] as! String
        self.compareurl = json[CodingKeys.compareurl.rawValue] as! String
        self.issueEventsurl = json[CodingKeys.issueEventsurl.rawValue] as! String
        self.name = json[CodingKeys.name.rawValue] as! String
        self.updatedAt = dateFormatter.date(from: json[CodingKeys.updatedAt.rawValue] as! String)!
        self.statusesurl = json[CodingKeys.statusesurl.rawValue] as! String
        self.forksCount = json[CodingKeys.forksCount.rawValue] as! Int
        self.assigneesurl = json[CodingKeys.assigneesurl.rawValue] as! String
        self.sshurl = json[CodingKeys.sshurl.rawValue] as! String
        self.forkeePublic = json[CodingKeys.forkeePublic.rawValue] as! Bool
        self.hasWiki = json[CodingKeys.hasWiki.rawValue] as! Bool
        self.subscribersurl = json[CodingKeys.subscribersurl.rawValue] as! String
        self.watchersCount = json[CodingKeys.watchersCount.rawValue] as! Int
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.hasDownloads = json[CodingKeys.hasDownloads.rawValue] as! Bool
        self.gitCommitsurl = json[CodingKeys.gitCommitsurl.rawValue] as! String
        self.downloadsurl = json[CodingKeys.downloadsurl.rawValue] as! String
        self.pullsurl = json[CodingKeys.pullsurl.rawValue] as! String
        self.homepage = json[CodingKeys.homepage.rawValue] as? String
        self.issueCommenturl = json[CodingKeys.issueCommenturl.rawValue] as! String
        self.hooksurl = json[CodingKeys.hooksurl.rawValue] as! String
        self.subscriptionurl = json[CodingKeys.subscriptionurl.rawValue] as! String
        self.milestonesurl = json[CodingKeys.milestonesurl.rawValue] as! String
        self.svnurl = json[CodingKeys.svnurl.rawValue] as! String
        self.eventsurl = json[CodingKeys.eventsurl.rawValue] as! String
        self.gitTagsurl = json[CodingKeys.gitTagsurl.rawValue] as! String
        self.teamsurl = json[CodingKeys.teamsurl.rawValue] as! String
        self.commentsurl = json[CodingKeys.commentsurl.rawValue] as! String
        self.openIssuesCount = json[CodingKeys.openIssuesCount.rawValue] as! Int
        self.keysurl = json[CodingKeys.keysurl.rawValue] as! String
        self.giturl = json[CodingKeys.giturl.rawValue] as! String
        self.contributorsurl = json[CodingKeys.contributorsurl.rawValue] as! String
        self.size = json[CodingKeys.size.rawValue] as! Int
        self.watchers = json[CodingKeys.watchers.rawValue] as! Int
    }
}

extension ghIssue: JSONSerializable {
    init?(json: SwiftJSON) {
        self.user = (json[CodingKeys.user.rawValue] as? SwiftJSON).map(ghUser.init(json:))!!
        self.url = json[CodingKeys.url.rawValue] as! String
        self.labels = json[CodingKeys.labels.rawValue] as! [Int]
        self.htmlurl = json[CodingKeys.htmlurl.rawValue] as! String
        self.labelsurl = json[CodingKeys.labelsurl.rawValue] as! String
        self.pullRequest = (json[CodingKeys.pullRequest.rawValue] as? SwiftJSON).map(ghPullRequest.init(json:))!!
        self.createdAt = dateFormatter.date(from: json[CodingKeys.createdAt.rawValue] as! String)!
        self.closedAt = dateFormatter.date(from: json[CodingKeys.closedAt.rawValue] as? String ?? "")
        self.title = json[CodingKeys.title.rawValue] as! String
        self.body = json[CodingKeys.body.rawValue] as! String
        self.updatedAt = dateFormatter.date(from: json[CodingKeys.updatedAt.rawValue] as! String)!
        self.number = json[CodingKeys.number.rawValue] as! Int
        self.state = json[CodingKeys.state.rawValue] as! String
        self.assignee = (json[CodingKeys.assignee.rawValue] as? SwiftJSON).map(ghUser.init(json:)) ?? nil
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.eventsurl = json[CodingKeys.eventsurl.rawValue] as! String
        self.commentsurl = json[CodingKeys.commentsurl.rawValue] as! String
        self.comments = json[CodingKeys.comments.rawValue] as! Int
    }
}

extension ghPage: JSONSerializable {
    init?(json: SwiftJSON) {
        self.pageName = json[CodingKeys.pageName.rawValue] as! String
        self.htmlurl = json[CodingKeys.htmlurl.rawValue] as! String
        self.title = json[CodingKeys.title.rawValue] as! String
        self.sha = json[CodingKeys.sha.rawValue] as! String
        self.action = json[CodingKeys.action.rawValue] as! String
    }
}

extension ghPayload: JSONSerializable {
    init?(json: SwiftJSON) {
        self.commits = (json[CodingKeys.commits.rawValue] as? [SwiftJSON])?.compactMap(ghCommit.init(json:))
        self.distinctSize = json[CodingKeys.distinctSize.rawValue] as? Int
        self.ref = json[CodingKeys.ref.rawValue] as? String
        self.pushid = json[CodingKeys.pushid.rawValue] as? Int
        self.head = json[CodingKeys.head.rawValue] as? String
        self.before = json[CodingKeys.before.rawValue] as? String
        self.size = json[CodingKeys.size.rawValue] as? Int
        self.payloadDescription = json[CodingKeys.payloadDescription.rawValue] as? String
        self.masterBranch = json[CodingKeys.masterBranch.rawValue] as? String
        self.refType = json[CodingKeys.refType.rawValue] as? String
        self.forkee = (json[CodingKeys.forkee.rawValue] as? SwiftJSON).map(ghForkee.init(json:)) ?? nil
        self.action = json[CodingKeys.action.rawValue] as? String
        self.issue = (json[CodingKeys.issue.rawValue] as? SwiftJSON).map(ghIssue.init(json:)) ?? nil
        self.comment = (json[CodingKeys.comment.rawValue] as? SwiftJSON).map(ghComment.init(json:)) ?? nil
        self.pages = (json[CodingKeys.pages.rawValue] as? [SwiftJSON])?.compactMap(ghPage.init(json:))
    }
}

extension ghPullRequest: JSONSerializable {
    init?(json: SwiftJSON) {
    }
}

extension ghRepo: JSONSerializable {
    init?(json: SwiftJSON) {
        self.url = json[CodingKeys.url.rawValue] as! String
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.name = json[CodingKeys.name.rawValue] as! String
    }
}

extension ghUser: JSONSerializable {
    init?(json: SwiftJSON) {
        self.url = json[CodingKeys.url.rawValue] as! String
        self.gistsurl = json[CodingKeys.gistsurl.rawValue] as! String
        self.gravatarid = json[CodingKeys.gravatarid.rawValue] as! String
        self.type = json[CodingKeys.type.rawValue] as! String
        self.avatarurl = json[CodingKeys.avatarurl.rawValue] as! String
        self.subscriptionsurl = json[CodingKeys.subscriptionsurl.rawValue] as! String
        self.organizationsurl = json[CodingKeys.organizationsurl.rawValue] as! String
        self.receivedEventsurl = json[CodingKeys.receivedEventsurl.rawValue] as! String
        self.reposurl = json[CodingKeys.reposurl.rawValue] as! String
        self.login = json[CodingKeys.login.rawValue] as! String
        self.id = json[CodingKeys.id.rawValue] as! Int
        self.starredurl = json[CodingKeys.starredurl.rawValue] as! String
        self.eventsurl = json[CodingKeys.eventsurl.rawValue] as! String
        self.followersurl = json[CodingKeys.followersurl.rawValue] as! String
        self.followingurl = json[CodingKeys.followingurl.rawValue] as! String
    }
}

extension ghWelcomeElement: JSONSerializable {
    init?(json: SwiftJSON) {
        self.type = json[CodingKeys.type.rawValue] as! String
        self.createdAt = dateFormatter.date(from: json[CodingKeys.createdAt.rawValue] as! String)!
        self.actor = (json[CodingKeys.actor.rawValue] as? SwiftJSON).map(ghActor.init(json:))!!
        self.repo = (json[CodingKeys.repo.rawValue] as? SwiftJSON).map(ghRepo.init(json:))!!
        self.welcomePublic = json[CodingKeys.welcomePublic.rawValue] as! Bool
        self.payload = (json[CodingKeys.payload.rawValue] as? SwiftJSON).map(ghPayload.init(json:))!!
        self.id = json[CodingKeys.id.rawValue] as! String
        self.org = (json[CodingKeys.org.rawValue] as? SwiftJSON).map(ghActor.init(json:)) ?? nil
    }
}

