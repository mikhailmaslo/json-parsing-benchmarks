// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import SwiftyJSON

extension ApacheBuilds: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.assignedLabels = swiftyJSON[CodingKeys.assignedLabels.rawValue].arrayValue.compactMap(OverallLoad.init(swiftyJSON:))
        self.mode = swiftyJSON[CodingKeys.mode.rawValue].string!
        self.nodeDescription = swiftyJSON[CodingKeys.nodeDescription.rawValue].string!
        self.nodeName = swiftyJSON[CodingKeys.nodeName.rawValue].string!
        self.numExecutors = swiftyJSON[CodingKeys.numExecutors.rawValue].int!
        self.welcomeDescription = swiftyJSON[CodingKeys.welcomeDescription.rawValue].string!
        self.jobs = swiftyJSON[CodingKeys.jobs.rawValue].arrayValue.compactMap(Job.init(swiftyJSON:))
        self.overallLoad = OverallLoad(swiftyJSON: swiftyJSON[CodingKeys.overallLoad.rawValue])!
        self.primaryView = View(swiftyJSON: swiftyJSON[CodingKeys.primaryView.rawValue])!
        self.quietingDown = swiftyJSON[CodingKeys.quietingDown.rawValue].bool!
        self.slaveAgentPort = swiftyJSON[CodingKeys.slaveAgentPort.rawValue].int!
        self.unlabeledLoad = OverallLoad(swiftyJSON: swiftyJSON[CodingKeys.unlabeledLoad.rawValue])!
        self.useCrumbs = swiftyJSON[CodingKeys.useCrumbs.rawValue].bool!
        self.useSecurity = swiftyJSON[CodingKeys.useSecurity.rawValue].bool!
        self.views = swiftyJSON[CodingKeys.views.rawValue].arrayValue.compactMap(View.init(swiftyJSON:))
    }
}

extension Job: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
        self.color = swiftyJSON[CodingKeys.color.rawValue].string!
    }
}

extension OverallLoad: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
    }
}

extension View: SwiftyJSONable {
    init?(swiftyJSON: JSON) {
        self.name = swiftyJSON[CodingKeys.name.rawValue].string!
        self.url = swiftyJSON[CodingKeys.url.rawValue].string!
    }
}

