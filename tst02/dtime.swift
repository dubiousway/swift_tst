import Foundation

var date = Date()
var cal = Calendar.current
cal.timeZone = TimeZone(abbreviation:"JST")!
let hour = cal.component(.hour, from: date)
let minutes = cal.component(.minute, from: date)
let seconds = cal.component(.second, from: date)
print("curr time: \(hour):\(minutes):\(seconds)")
