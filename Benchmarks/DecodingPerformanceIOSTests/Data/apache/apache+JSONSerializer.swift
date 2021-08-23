extension ApacheBuilds: JSONSerializable {
    init?(json: SwiftJSON) {
        self.assignedLabels = (json[CodingKeys.assignedLabels.rawValue] as! [SwiftJSON]).compactMap(OverallLoad.init(json:))
        self.mode = json[CodingKeys.mode.rawValue] as! String
        self.nodeDescription = json[CodingKeys.nodeDescription.rawValue] as! String
        self.nodeName = json[CodingKeys.nodeName.rawValue] as! String
        self.numExecutors = json[CodingKeys.numExecutors.rawValue] as! Int
        self.welcomeDescription = json[CodingKeys.welcomeDescription.rawValue] as! String
        self.jobs = (json[CodingKeys.jobs.rawValue] as! [SwiftJSON]).compactMap(Job.init(json:))
        self.overallLoad = (json[CodingKeys.overallLoad.rawValue] as? SwiftJSON).map(OverallLoad.init(json:))!!
        self.primaryView = (json[CodingKeys.primaryView.rawValue] as? SwiftJSON).map(View.init(json:))!!
        self.quietingDown = json[CodingKeys.quietingDown.rawValue] as! Bool
        self.slaveAgentPort = json[CodingKeys.slaveAgentPort.rawValue] as! Int
        self.unlabeledLoad = (json[CodingKeys.unlabeledLoad.rawValue] as? SwiftJSON).map(OverallLoad.init(json:))!!
        self.useCrumbs = json[CodingKeys.useCrumbs.rawValue] as! Bool
        self.useSecurity = json[CodingKeys.useSecurity.rawValue] as! Bool
        self.views = (json[CodingKeys.views.rawValue] as! [SwiftJSON]).compactMap(View.init(json:))
    }
}

extension Job: JSONSerializable {
    init?(json: SwiftJSON) {
        self.name = json[CodingKeys.name.rawValue] as! String
        self.url = json[CodingKeys.url.rawValue] as! String
        self.color = json[CodingKeys.color.rawValue] as! String
    }
}

extension OverallLoad: JSONSerializable {
    init?(json: SwiftJSON) {
    }
}

extension View: JSONSerializable {
    init?(json: SwiftJSON) {
        self.name = json[CodingKeys.name.rawValue] as! String
        self.url = json[CodingKeys.url.rawValue] as! String
    }
}
