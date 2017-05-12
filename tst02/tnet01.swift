import Foundation
let url = URL(string: "https://httpbin.org/ip")
let task = URLSession.shared.dataTask(with: url!) { data, response, error in
    guard error == nil else {
        print(error!)
        return
    }
    guard let data = data else {
        print("Data is empty")
        return
    }

    let json = try! JSONSerialization.jsonObject(with: data, options: [])
    print(json)
}

task.resume()
