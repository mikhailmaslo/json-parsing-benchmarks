//
//  TwitterParser.swift
//  DecodingPerformanceTests
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

protocol TwitterParser {
    func parse(data: Data) throws -> TwitterFeedResponse
}
