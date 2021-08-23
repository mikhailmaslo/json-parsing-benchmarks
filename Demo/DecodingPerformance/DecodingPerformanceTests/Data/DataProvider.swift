//
//  DataProvider.swift
//  DecodingPerformance
//
//  Created by Mikhail Maslo on 15.08.2021.
//

import Foundation

final class DataProvider {
    private lazy var tweets = (0..<10)
        .map { id in
            makeTweet(id: id)
        }
        .joined(separator: ",")
    private lazy var backedJSONString = """
{
    "data": {
        "user": {
            "id": "self",
            "name": "Mikhail Maslo",
            "profile_thumbnail": {
                "images": [
                    {
                        "size": {
                            "height": 100,
                            "width": 100
                        },
                        "url": "http://twitter.com/profile_thumbnail_100_100"
                    },
                    {
                        "size": {
                            "height": 200,
                            "width": 200
                        },
                        "url": "http://twitter.com/profile_thumbnail_200_200"
                    }
                ]
            }
        },
        "tweets": [\(tweets)]
    }
}
"""

    func fetchData() -> Data {
        backedJSONString.data(using: .utf8)!
    }

    private func makeTweet(id: Int) -> String {
        """
            {
                "id": "tweetid_\(id)",
                "author": {
                    "id": "mobileunderhood\(id)",
                    "name": "Мобильный разработчик",
                    "profile_thumbnail": {
                        "images": [
                            {
                                "size": {
                                    "height": 100\(id),
                                    "width": 100\(id)
                                },
                                "url": "http://twitter.com/profile_thumbnail_100_100\(id)"
                            },
                            {
                                "size": {
                                    "height": 200\(id),
                                    "width": 200
                                },
                                "url": "http://twitter.com/profile_thumbnail_200_200\(id)"
                            }
                        ]
                    }
                },
                "full_text": "Начать неделю предлагаю с разговоров о продуктивности\(id)"
            }
        """
    }
}
