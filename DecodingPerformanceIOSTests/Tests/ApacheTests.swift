//
//  ApacheTests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON

class ApacheTests: XCTestCase {
    private lazy var data = dataFromFile("apache.json")

    override func setUp() {
        _ = data
    }

    func testZippy() throws {
        measure {
            blackHole(_ = try! ZippyJSONDecoder().decode(ApacheBuilds.self, from: data))
        }
    }

    func testCodable() throws {
        measure {
            blackHole(_ = try! JSONDecoder().decode(ApacheBuilds.self, from: data))
        }
    }

    func testExtras() throws {
        measure {
            blackHole(_ = try! XJSONDecoder().decode(ApacheBuilds.self, from: data))
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}

@inline(never)
public func blackHole<T>(_ value: T) {
}
