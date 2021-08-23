// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - AutoEnumCodable

import Foundation

extension Food: Codable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        var key: String {
            switch self {
            case .apple:
                return "apple"
            case .candy:
                return "candy"
            }
        }

        try container.encode(key)
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        switch rawValue {
        case "apple":
            self = .apple
        case "candy":
            self = .candy
        default:
            preconditionFailure()
        }
    }
}
