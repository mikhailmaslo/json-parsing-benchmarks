// Generated using Sourcery 1.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// MARK: - AutoCodable

import Foundation

extension DriverLicense: Codable {
    public enum CodingKeys: String, CodingKey {
        case id 
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            id: try values.decode(String.self, forKey: .id)
        )
    }
}
extension Person: Codable {
    public enum CodingKeys: String, CodingKey {
        case name 
        case age 
        case weight 
        case isMarried = "is_married" 
        case children 
        case favoriteFood = "favorite_food" 
        case driverLicense = "driver_license" 
        case params 
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(age, forKey: .age)
        try container.encode(weight, forKey: .weight)
        try container.encode(isMarried, forKey: .isMarried)
        try container.encode(children, forKey: .children)
        try container.encode(favoriteFood, forKey: .favoriteFood)
        try container.encode(driverLicense, forKey: .driverLicense)
        try container.encode(params, forKey: .params)
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            name: try values.decode(String.self, forKey: .name),
            age: try values.decode(Int.self, forKey: .age),
            weight: try values.decode(Double.self, forKey: .weight),
            isMarried: try values.decodeIfPresent(Bool.self, forKey: .isMarried) ?? false,
            children: try values.decodeIfPresent([Person].self, forKey: .children) ?? Array(),
            favoriteFood: try values.decodeIfPresent([Food].self, forKey: .favoriteFood) ?? Array(),
            driverLicense: try values.decodeIfPresent(DriverLicense.self, forKey: .driverLicense),
            params: try values.decodeIfPresent(AnyCodable.self, forKey: .params)
        )
    }
}
