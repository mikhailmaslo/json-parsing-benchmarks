// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   var welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - Welcome
struct ApacheBuilds: Codable, Equatable {
    var assignedLabels: [OverallLoad]!
    var mode: String!
    var nodeDescription: String!
    var nodeName: String!
    var numExecutors: Int!
    var welcomeDescription: String!
    var jobs: [Job]!
    var overallLoad: OverallLoad!
    var primaryView: View!
    var quietingDown: Bool!
    var slaveAgentPort: Int!
    var unlabeledLoad: OverallLoad!
    var useCrumbs: Bool!
    var useSecurity: Bool!
    var views: [View]!

    enum CodingKeys: String, CodingKey {
        case assignedLabels = "assignedLabels"
        case mode = "mode"
        case nodeDescription = "nodeDescription"
        case nodeName = "nodeName"
        case numExecutors = "numExecutors"
        case welcomeDescription = "description"
        case jobs = "jobs"
        case overallLoad = "overallLoad"
        case primaryView = "primaryView"
        case quietingDown = "quietingDown"
        case slaveAgentPort = "slaveAgentPort"
        case unlabeledLoad = "unlabeledLoad"
        case useCrumbs = "useCrumbs"
        case useSecurity = "useSecurity"
        case views = "views"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - OverallLoad
struct OverallLoad: Codable, Equatable {
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - Job
struct Job: Codable, Equatable {
    var name: String!
    var url: String!
    var color: String!

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
        case color = "color"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - View
struct View: Codable, Equatable {
    var name: String!
    var url: String!

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}
