import Foundation

let fmt = DateFormatter()

fmt.timeZone = TimeZone(abbreviation:"JST")
fmt.dateFormat = "yyyy/MM/dd HH:mm:ss"
let dtimestr = fmt.string(from:Date())

print(dtimestr)

