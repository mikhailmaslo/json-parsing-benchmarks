//
//  DateFormatterTransform.swift
//  DecodingPerformanceIOSTests
//
//  Created by Mikhail Maslo on 22.08.2021.
//

import Foundation
import ObjectMapper

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    return dateFormatter
}()

class DateFormatterTransform: TransformType {
    open func transformFromJSON(_ value: Any?) -> Date? {
        guard let string = value as? String else {
            return nil
        }

        return dateFormatter.date(from: string)
    }

    open func transformToJSON(_ value: Date?) -> Double? {
        nil
    }
}
