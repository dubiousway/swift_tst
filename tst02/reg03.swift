import Foundation

func regmatches(_ text:String, with reg: String) -> [String] {
    do {
        let regex = try NSRegularExpression(pattern: reg, options:[])
        //let nsString = text as NSString	//ubuntu环境不支持
        let nsString = NSString(string:text)
        let results = regex.matches(in: text, options:[], range: NSRange(location: 0, length: nsString.length))	// NSString has length prop
        return results.map { nsString.substring(with: $0.range)}
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}

func regfirstmatch(_ text:String, with reg: String) -> String {
	let regex = try! NSRegularExpression(pattern: reg, options:[])
	let nsString = NSString(string:text)
	if let result = regex.firstMatch(in: text, options:[], range: NSRange(location: 0, length: nsString.length)){	// NSString has length prop
		return nsString.substring(with:result.range)
	}
	else{
		return ""
	}
}


let s = "d123h456i78o999p12"
let rs = regmatches(s, with:"\\d{3}")
print(rs)

let s2 = "d123h456i78o999p12"
let r = regfirstmatch(s2, with:"\\d{2}")
print(r)
