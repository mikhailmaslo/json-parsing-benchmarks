//
//  CanadaTests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON
import ObjectMapper
import SwiftyJSON
import HandyJSON

class CanadaTests: XCTestCase {
    private lazy var data = dataFromFile("Canada.json")

    override func setUp() {
        _ = data
    }

    func testHandyJSON() throws {
        measure {
            blackHole(
                Canada.deserialize(from: String(data: data, encoding: .utf8))!
            )
        }
    }

    func testSwiftyJSON() throws {
        measure {
            blackHole(
                Canada(swiftyJSON: JSON(try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON))!
            )
        }
    }

    func testObjectMapper() throws {
        measure {
            blackHole(
                try! Mapper<Canada>().map(
                    JSONObject: try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON
                )
            )
        }
    }

    func testJSONSerializer() {
        measure {
            blackHole(
                Canada(json: try! JSONSerialization.jsonObject(with: data, options: []) as! SwiftJSON)!
            )
        }
    }

    func testCodable() throws {
        measure {
            blackHole(_ = try! JSONDecoder().decode(Canada.self, from: data))
        }
    }

    func testZippy() throws {
        measure {
            blackHole(_ = try! ZippyJSONDecoder().decode(Canada.self, from: data))
        }
    }

    func testExtras() throws {
        measure {
            blackHole(_ = try! XJSONDecoder().decode(Canada.self, from: data))
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}

