//
//  HandyJSONPerformanceTests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON

class RepeatedTwitterTests: XCTestCase {
    private lazy var data = dataFromFile("twitter.json")
    private let n = 10

    override func setUp() {
        _ = data
    }

    func testCodable() throws {
        measure {
            for _ in 0..<n {
                _ = try! JSONDecoder().decode(Twitter.self, from: data)
            }
        }
    }

    func testZippy() throws {
        measure {
            for _ in 0..<n {
                _ = try! ZippyJSONDecoder().decode(Twitter.self, from: data)
            }
        }
    }

    func testExtras() throws {
        measure {
            for _ in 0..<n {
                _ = try! ExtrasJSON.XJSONDecoder().decode(Twitter.self, from: data)
            }
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}
