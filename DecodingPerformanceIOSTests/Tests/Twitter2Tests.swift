//
//  Twitter2Tests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import Foundation

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON
import ObjectMapper

class Twitter2Tests: XCTestCase {
    private lazy var data = dataFromFile("twitter2.json")

    override func setUp() {
        _ = data
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
