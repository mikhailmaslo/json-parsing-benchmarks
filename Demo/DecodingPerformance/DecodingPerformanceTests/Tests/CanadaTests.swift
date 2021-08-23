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

class CanadaTests: XCTestCase {
    private lazy var data = dataFromFile("Canada.json")

    override func setUp() {
        _ = data
    }

    func testCodable() throws {
        measure {
            _ = try! JSONDecoder().decode(canada.self, from: data)
        }
    }

    func testZippy() throws {
        measure {
            _ = try! ZippyJSONDecoder().decode(canada.self, from: data)
        }
    }

    func testExtras() throws {
        measure {
            _ = try! XJSONDecoder().decode(canada.self, from: data)
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}

