import Foundation

var dateComponents = DateComponents()
dateComponents.year = 1980
dateComponents.month = 7
dateComponents.day = 11
dateComponents.timeZone = TimeZone(abbreviation: "JST") // Japan Standard Time
dateComponents.hour = 10
dateComponents.minute = 0

// create date with calendar
dateComponents.calendar = Calendar.current
let d1 = dateComponents.date! 
print("datetime 1: \(d1)")


// Create date from components
let userCalendar = Calendar.current // user calendar
let someDateTime = userCalendar.date(from: dateComponents)!
print("datetime 2: \(someDateTime)")
