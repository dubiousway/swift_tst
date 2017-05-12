import Foundation
 
struct MyRegex {
    let regex: NSRegularExpression
     
    init(_ pattern: String) {
        regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    }
     
    func isMatched(_ str:String) -> Bool {
        let ms = regex.matches(in:str, options: [], range: NSMakeRange(0, str.characters.count)) 
		return ms.count > 0
    }
    func dispMatches(_ str:String) {
        let ms = regex.matches(in:str, options: [], range: NSMakeRange(0, str.characters.count)) 
		//print(type(of:ms))
		print(str[ms[0].range as NSRange])
    }
}

let m1 = MyRegex("\\d{3}")

print(m1.isMatched("345ddd"))
print(m1.isMatched("d12dd"))
m1.dispMatches("123d")
