//
//  DecodingPerformanceIOSApp.swift
//  DecodingPerformanceIOS
//
//  Created by Mikhail Maslo on 21.08.2021.
//

import SwiftUI

@main
struct DecodingPerformanceIOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


func a() {
    let json = """
    {
        "name": "Mikhail",
        "age": 26,
        "weight": 72.0
    }
    """
    let jsonData = json.data(using: .utf8)
    let dictionary = try! JSONSerialization.jsonObject(with: jsonData!, options: []) as! [String: Any]
    let person = Person(
        name: dictionary["name"] as! String,
        age: dictionary["age"] as! Int,
        weight: dictionary["weight"] as! Double
    )
    print(dictionary)
    print(<#T##items: Any...##Any#>)

    // Prints:
    // ["name": Mikhail, "age": 26, "weight": 72]
    // Person(name: "Mikhail", age: 26, weight: 72.0)
    // Optional("age") 26
}
