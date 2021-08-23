# Overview

`Demo` - console application for Demo on presentation

`Snippets` - snippets for `Demo` (Copy them to `/Users/YourUsername/Library/Developer/Xcode/UserData/CodeSnippets` replacing `YourUsername` with your actual username)

`Benchmarks` - project with tests on iOS platform

# Links

## Used Libraries

- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) - JSONSerialization + Dictionary wrapper
- [ObjectMapper](https://github.com/tristanhimmelman/ObjectMapper) - JSONSerialization + Dictionary wrapper
- [HandyJSON](https://github.com/alibaba/HandyJSON) - Swift reflection & Objective-C introspection
- [ZippyJSON](https://github.com/michaeleisel/ZippyJSON) - parsing is written on C++ [simdjson](https://github.com/simdjson/simdjson). Custom Decoder + Codable
- [swift-extras-json](https://github.com/swift-extras/swift-extras-json) - pure Swift - doesn't depend on Foundation. Custom Decoder + Codable

## Other

- [Swift reflection](https://medium.com/@weswickwire/creating-a-swift-runtime-library-3cc92fc486cc) - how you can set variable in structs / classes using Swift reflection
- Codable is using JSONSerialization under the hood - [proof](https://github.com/apple/swift/blob/d93e0dfa01ddd897ba733b6a2d43b05e2f0073f9/stdlib/public/SDK/Foundation/JSONEncoder.swift#L1105)
- [Sourcery in practice](https://khanlou.com/2017/09/sourcery-in-practice/) - example for (auto) Codable
- [How GTA V load time was cut by 70 %](https://nee.lv/2021/02/28/How-I-cut-GTA-Online-loading-times-by-70/) (spoiler: json parsing implementation was too naive)
- What Apple [thought](https://developer.apple.com/swift/blog/?id=37) about reflection before Codable was released
