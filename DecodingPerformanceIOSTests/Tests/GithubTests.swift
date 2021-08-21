//
//  GithubTests.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import XCTest
import Foundation
import ZippyJSON
import ExtrasJSON

class GithubTests: XCTestCase {
    private lazy var data = dataFromFile("github_events.json")

    override func setUp() {
        _ = data
    }

    func testCodable() throws {
        measure {
            let coder = JSONDecoder()
            coder.dateDecodingStrategy = .iso8601
            blackHole(_ = try! coder.decode(ghEvents.self, from: data))
        }
    }

    func testZippy() throws {
        measure {
            let coder = ZippyJSONDecoder()
            coder.dateDecodingStrategy = .iso8601
            blackHole(_ = try! coder.decode(ghEvents.self, from: data))
        }
    }

    func testExtras() throws {
        measure {
//            blackHole(_ = try! XJSONDecoder().decode(ghEvents.self, from: data))
        }
    }

    func dataFromFile(_ file: String) -> Data {
        let path = Bundle(for: type(of: self)).path(forResource: file, ofType: "")!
        let string = try! String(contentsOfFile: path)
        return string.data(using: .utf8)!
    }
}

