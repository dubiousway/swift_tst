import Foundation

func matches(for regex: String, in text: String) -> [String] {
    do {
        let regex = try RegularExpression(pattern: regex, options: [])
        let nsString = NSString(string: text)
        let results = regex.matches(in: text, options: [], range: NSRange(location: 0, length: nsString.length))
        return results.map { nsString.substring(with: $0.range) }
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}

let ss = matches(for:"a.c",in:"123axcdef8888abc")
print(ss)
