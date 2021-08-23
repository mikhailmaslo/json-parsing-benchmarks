// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - JSONSerializable

import Foundation
import HandyJSON

extension ApacheBuilds: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.assignedLabels <-- CodingKeys.assignedLabels.rawValue
        mapper <<<
            self.mode <-- CodingKeys.mode.rawValue
        mapper <<<
            self.nodeDescription <-- CodingKeys.nodeDescription.rawValue
        mapper <<<
            self.nodeName <-- CodingKeys.nodeName.rawValue
        mapper <<<
            self.numExecutors <-- CodingKeys.numExecutors.rawValue
        mapper <<<
            self.welcomeDescription <-- CodingKeys.welcomeDescription.rawValue
        mapper <<<
            self.jobs <-- CodingKeys.jobs.rawValue
        mapper <<<
            self.overallLoad <-- CodingKeys.overallLoad.rawValue
        mapper <<<
            self.primaryView <-- CodingKeys.primaryView.rawValue
        mapper <<<
            self.quietingDown <-- CodingKeys.quietingDown.rawValue
        mapper <<<
            self.slaveAgentPort <-- CodingKeys.slaveAgentPort.rawValue
        mapper <<<
            self.unlabeledLoad <-- CodingKeys.unlabeledLoad.rawValue
        mapper <<<
            self.useCrumbs <-- CodingKeys.useCrumbs.rawValue
        mapper <<<
            self.useSecurity <-- CodingKeys.useSecurity.rawValue
        mapper <<<
            self.views <-- CodingKeys.views.rawValue
    }
}

extension Job: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
        mapper <<<
            self.color <-- CodingKeys.color.rawValue
    }
}

extension OverallLoad: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
    }
}

extension View: HandyJSON {
    mutating func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.name <-- CodingKeys.name.rawValue
        mapper <<<
            self.url <-- CodingKeys.url.rawValue
    }
}

