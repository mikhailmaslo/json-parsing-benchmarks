import ObjectMapper

extension ApacheBuilds: ImmutableMappable {
    init(map: Map) throws {
        self.assignedLabels = try map.value(CodingKeys.assignedLabels.rawValue)
        self.mode = try map.value(CodingKeys.mode.rawValue)
        self.nodeDescription = try map.value(CodingKeys.nodeDescription.rawValue)
        self.nodeName = try map.value(CodingKeys.nodeName.rawValue)
        self.numExecutors = try map.value(CodingKeys.numExecutors.rawValue)
        self.welcomeDescription = try map.value(CodingKeys.welcomeDescription.rawValue)
        self.jobs = try map.value(CodingKeys.jobs.rawValue)
        self.overallLoad = try map.value(CodingKeys.overallLoad.rawValue)
        self.primaryView = try map.value(CodingKeys.primaryView.rawValue)
        self.quietingDown = try map.value(CodingKeys.quietingDown.rawValue)
        self.slaveAgentPort = try map.value(CodingKeys.slaveAgentPort.rawValue)
        self.unlabeledLoad = try map.value(CodingKeys.unlabeledLoad.rawValue)
        self.useCrumbs = try map.value(CodingKeys.useCrumbs.rawValue)
        self.useSecurity = try map.value(CodingKeys.useSecurity.rawValue)
        self.views = try map.value(CodingKeys.views.rawValue)
    }
}

extension Job: ImmutableMappable {
    init(map: Map) throws {
        self.name = try map.value(CodingKeys.name.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
        self.color = try map.value(CodingKeys.color.rawValue)
    }
}

extension OverallLoad: ImmutableMappable {
    init(map: Map) throws {
    }
}

extension View: ImmutableMappable {
    init(map: Map) throws {
        self.name = try map.value(CodingKeys.name.rawValue)
        self.url = try map.value(CodingKeys.url.rawValue)
    }
}
