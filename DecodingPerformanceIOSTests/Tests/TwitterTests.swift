//
//  TwitterTests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON
import ObjectMapper
import SwiftyJSON

class TwitterTests: XCTestCase {
    private lazy var data = dataFromFile("twitter.json")

    override func setUp() {
        _ = data
    }

    func testJSON() throws {
        measure {
            blackHole(
                try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON
            )
        }
    }

    func testHandyJSON() throws {
        measure {
            blackHole(
                Twitter.deserialize(from: String(data: data, encoding: .utf8))!
            )
        }
    }

    func testSwiftyJSON() throws {
        measure {
            blackHole(
                Twitter(swiftyJSON: JSON(try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON))!
            )
        }
    }

    func testObjectMapper() throws {
        measure {
            blackHole(
                try! Mapper<Twitter>().map(
                    JSONObject: try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON
                )
            )
        }
    }

    func testJSONSerializer() {
        measure {
            blackHole(
                Twitter(json: try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON)!
            )
        }
    }

    func testCodable() throws {
        measure {
            blackHole(_ = try! JSONDecoder().decode(Twitter.self, from: data))
        }
    }

    func testZippy() throws {
        measure {
            blackHole(_ = try! ZippyJSONDecoder().decode(Twitter.self, from: data))
        }
    }

    func testExtras() throws {
        measure {
            blackHole(_ = try! ExtrasJSON.XJSONDecoder().decode(Twitter.self, from: data))
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}
