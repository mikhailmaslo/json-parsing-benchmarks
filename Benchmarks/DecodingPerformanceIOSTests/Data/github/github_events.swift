// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   var ghWelcome = try? newJSONDecoder().decode(ghWelcome.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - ghWelcomeElement
struct ghWelcomeElement: Codable, Equatable {
    var type: String!
    var createdAt: Date!
    var actor: ghActor!
    var repo: ghRepo!
    var welcomePublic: Bool!
    var payload: ghPayload!
    var id: String!
    var org: ghActor?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case createdAt = "created_at"
        case actor = "actor"
        case repo = "repo"
        case welcomePublic = "public"
        case payload = "payload"
        case id = "id"
        case org = "org"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghActor
struct ghActor: Codable, Equatable {
    var gravatarid: String!
    var login: String!
    var avatarurl: String!
    var url: String!
    var id: Int!

    enum CodingKeys: String, CodingKey {
        case gravatarid = "gravatar_id"
        case login = "login"
        case avatarurl = "avatar_url"
        case url = "url"
        case id = "id"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghPayload
struct ghPayload: Codable, Equatable {
    var commits: [ghCommit]?
    var distinctSize: Int?
    var ref: String?
    var pushid: Int?
    var head: String?
    var before: String?
    var size: Int?
    var payloadDescription: String?
    var masterBranch: String?
    var refType: String?
    var forkee: ghForkee?
    var action: String?
    var issue: ghIssue?
    var comment: ghComment?
    var pages: [ghPage]?

    enum CodingKeys: String, CodingKey {
        case commits = "commits"
        case distinctSize = "distinct_size"
        case ref = "ref"
        case pushid = "push_id"
        case head = "head"
        case before = "before"
        case size = "size"
        case payloadDescription = "description"
        case masterBranch = "master_branch"
        case refType = "ref_type"
        case forkee = "forkee"
        case action = "action"
        case issue = "issue"
        case comment = "comment"
        case pages = "pages"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghComment
struct ghComment: Codable, Equatable {
    var user: ghUser!
    var url: String!
    var issueurl: String!
    var createdAt: Date!
    var body: String!
    var updatedAt: Date!
    var id: Int!

    enum CodingKeys: String, CodingKey {
        case user = "user"
        case url = "url"
        case issueurl = "issue_url"
        case createdAt = "created_at"
        case body = "body"
        case updatedAt = "updated_at"
        case id = "id"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghUser
struct ghUser: Codable, Equatable {
    var url: String!
    var gistsurl: String!
    var gravatarid: String!
    var type: String!
    var avatarurl: String!
    var subscriptionsurl: String!
    var organizationsurl: String!
    var receivedEventsurl: String!
    var reposurl: String!
    var login: String!
    var id: Int!
    var starredurl: String!
    var eventsurl: String!
    var followersurl: String!
    var followingurl: String!

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case gistsurl = "gists_url"
        case gravatarid = "gravatar_id"
        case type = "type"
        case avatarurl = "avatar_url"
        case subscriptionsurl = "subscriptions_url"
        case organizationsurl = "organizations_url"
        case receivedEventsurl = "received_events_url"
        case reposurl = "repos_url"
        case login = "login"
        case id = "id"
        case starredurl = "starred_url"
        case eventsurl = "events_url"
        case followersurl = "followers_url"
        case followingurl = "following_url"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghCommit
struct ghCommit: Codable, Equatable {
    var url: String!
    var message: String!
    var distinct: Bool!
    var sha: String!
    var author: ghAuthor!

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case message = "message"
        case distinct = "distinct"
        case sha = "sha"
        case author = "author"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghAuthor
struct ghAuthor: Codable, Equatable {
    var email: String!
    var name: String!

    enum CodingKeys: String, CodingKey {
        case email = "email"
        case name = "name"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghForkee
struct ghForkee: Codable, Equatable {
    var forkeeDescription: String!
    var fork: Bool!
    var url: String!
    var language: String!
    var stargazersurl: String!
    var cloneurl: String!
    var tagsurl: String!
    var fullName: String!
    var mergesurl: String!
    var forks: Int!
    var forkeePrivate: Bool!
    var gitRefsurl: String!
    var archiveurl: String!
    var collaboratorsurl: String!
    var owner: ghUser!
    var languagesurl: String!
    var treesurl: String!
    var labelsurl: String!
    var htmlurl: String!
    var pushedAt: Date!
    var createdAt: Date!
    var hasIssues: Bool!
    var forksurl: String!
    var branchesurl: String!
    var commitsurl: String!
    var notificationsurl: String!
    var openIssues: Int!
    var contentsurl: String!
    var blobsurl: String!
    var issuesurl: String!
    var compareurl: String!
    var issueEventsurl: String!
    var name: String!
    var updatedAt: Date!
    var statusesurl: String!
    var forksCount: Int!
    var assigneesurl: String!
    var sshurl: String!
    var forkeePublic: Bool!
    var hasWiki: Bool!
    var subscribersurl: String!
    // var mirrorurl: JSONNull?
    var watchersCount: Int!
    var id: Int!
    var hasDownloads: Bool!
    var gitCommitsurl: String!
    var downloadsurl: String!
    var pullsurl: String!
    var homepage: String?
    var issueCommenturl: String!
    var hooksurl: String!
    var subscriptionurl: String!
    var milestonesurl: String!
    var svnurl: String!
    var eventsurl: String!
    var gitTagsurl: String!
    var teamsurl: String!
    var commentsurl: String!
    var openIssuesCount: Int!
    var keysurl: String!
    var giturl: String!
    var contributorsurl: String!
    var size: Int!
    var watchers: Int!

    enum CodingKeys: String, CodingKey {
        case forkeeDescription = "description"
        case fork = "fork"
        case url = "url"
        case language = "language"
        case stargazersurl = "stargazers_url"
        case cloneurl = "clone_url"
        case tagsurl = "tags_url"
        case fullName = "full_name"
        case mergesurl = "merges_url"
        case forks = "forks"
        case forkeePrivate = "private"
        case gitRefsurl = "git_refs_url"
        case archiveurl = "archive_url"
        case collaboratorsurl = "collaborators_url"
        case owner = "owner"
        case languagesurl = "languages_url"
        case treesurl = "trees_url"
        case labelsurl = "labels_url"
        case htmlurl = "html_url"
        case pushedAt = "pushed_at"
        case createdAt = "created_at"
        case hasIssues = "has_issues"
        case forksurl = "forks_url"
        case branchesurl = "branches_url"
        case commitsurl = "commits_url"
        case notificationsurl = "notifications_url"
        case openIssues = "open_issues"
        case contentsurl = "contents_url"
        case blobsurl = "blobs_url"
        case issuesurl = "issues_url"
        case compareurl = "compare_url"
        case issueEventsurl = "issue_events_url"
        case name = "name"
        case updatedAt = "updated_at"
        case statusesurl = "statuses_url"
        case forksCount = "forks_count"
        case assigneesurl = "assignees_url"
        case sshurl = "ssh_url"
        case forkeePublic = "public"
        case hasWiki = "has_wiki"
        case subscribersurl = "subscribers_url"
        // case mirrorurl = "mirror_url"
        case watchersCount = "watchers_count"
        case id = "id"
        case hasDownloads = "has_downloads"
        case gitCommitsurl = "git_commits_url"
        case downloadsurl = "downloads_url"
        case pullsurl = "pulls_url"
        case homepage = "homepage"
        case issueCommenturl = "issue_comment_url"
        case hooksurl = "hooks_url"
        case subscriptionurl = "subscription_url"
        case milestonesurl = "milestones_url"
        case svnurl = "svn_url"
        case eventsurl = "events_url"
        case gitTagsurl = "git_tags_url"
        case teamsurl = "teams_url"
        case commentsurl = "comments_url"
        case openIssuesCount = "open_issues_count"
        case keysurl = "keys_url"
        case giturl = "git_url"
        case contributorsurl = "contributors_url"
        case size = "size"
        case watchers = "watchers"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghIssue
struct ghIssue: Codable, Equatable {
    var user: ghUser!
    var url: String!
    var labels: [Int]!
    var htmlurl: String!
    var labelsurl: String!
    var pullRequest: ghPullRequest!
    var createdAt: Date!
    var closedAt: Date?
    // var milestone: JSONNull?
    var title: String!
    var body: String!
    var updatedAt: Date!
    var number: Int!
    var state: String!
    var assignee: ghUser?
    var id: Int!
    var eventsurl: String!
    var commentsurl: String!
    var comments: Int!

    enum CodingKeys: String, CodingKey {
        case user = "user"
        case url = "url"
        case labels = "labels"
        case htmlurl = "html_url"
        case labelsurl = "labels_url"
        case pullRequest = "pull_request"
        case createdAt = "created_at"
        case closedAt = "closed_at"
        // case milestone = "milestone"
        case title = "title"
        case body = "body"
        case updatedAt = "updated_at"
        case number = "number"
        case state = "state"
        case assignee = "assignee"
        case id = "id"
        case eventsurl = "events_url"
        case commentsurl = "comments_url"
        case comments = "comments"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghPullRequest
struct ghPullRequest: Codable, Equatable {
    /*var htmlurl: JSONNull?
    var patchurl: JSONNull?
    var diffurl: JSONNull?

    enum CodingKeys: String, CodingKey {
        case htmlurl = "html_url"
        case patchurl = "patch_url"
        case diffurl = "diff_url"
    }*/
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghPage
struct ghPage: Codable, Equatable {
    var pageName: String!
    var htmlurl: String!
    var title: String!
    var sha: String!
    // var summary: JSONNull?
    var action: String!

    enum CodingKeys: String, CodingKey {
        case pageName = "page_name"
        case htmlurl = "html_url"
        case title = "title"
        case sha = "sha"
        // case summary = "summary"
        case action = "action"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ghRepo
struct ghRepo: Codable, Equatable {
    var url: String!
    var id: Int!
    var name: String!

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case id = "id"
        case name = "name"
    }
}

typealias ghEvents = [ghWelcomeElement]
